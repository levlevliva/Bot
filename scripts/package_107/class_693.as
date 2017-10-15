package package_107
{
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_149.class_579;
   import package_152.class_668;
   import package_5.class_22;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_693 extends class_579
   {
      
      public static const name_3:class_693 = new class_693();
       
      
      private var var_646:int = 0;
      
      public var var_35:int = 0;
      
      public var var_276:int = 0;
      
      public var var_1381:int = 0;
      
      public function class_693(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_35 = param2;
         this.var_276 = param1;
         this.var_1381 = param3;
      }
      
      override public function method_16() : int
      {
         return -11611;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 6;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_35 = param1.readShort();
         this.var_35 = 65535 & ((65535 & this.var_35) >>> 2 % 16 | (65535 & this.var_35) << 16 - 2 % 16);
         this.var_35 = this.var_35 > 32767?int(this.var_35 - 65536):int(this.var_35);
         this.var_276 = param1.readInt();
         this.var_276 = this.var_276 >>> 9 % 32 | this.var_276 << 32 - 9 % 32;
         this.var_1381 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-11611);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_35) << 2 % 16 | (65535 & this.var_35) >>> 16 - 2 % 16));
         param1.writeInt(this.var_276 << 9 % 32 | this.var_276 >>> 32 - 9 % 32);
         param1.writeShort(this.var_1381);
      }
   }
}
