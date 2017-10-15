package package_22
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_171.class_981;
   import package_34.class_1499;
   import package_5.class_22;
   import package_6.class_14;
   import package_74.class_253;
   import package_88.class_967;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_505 implements class_14
   {
      
      public static const name_3:class_505 = new class_505();
       
      
      private var var_646:int = 0;
      
      public var name_24:int = 0;
      
      public var var_1462:Number = 0;
      
      public var var_658:int = 0;
      
      public var var_153:Number = 0;
      
      public function class_505(param1:Number = 0, param2:Number = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.name_24 = param3;
         this.var_1462 = param2;
         this.var_658 = param4;
         this.var_153 = param1;
      }
      
      public function method_16() : int
      {
         return -6922;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 24;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 << 15 % 32 | this.name_24 >>> 32 - 15 % 32;
         this.var_1462 = param1.readDouble();
         this.var_658 = param1.readInt();
         this.var_658 = this.var_658 >>> 4 % 32 | this.var_658 << 32 - 4 % 32;
         this.var_153 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-6922);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeInt(this.name_24 >>> 15 % 32 | this.name_24 << 32 - 15 % 32);
         param1.writeDouble(this.var_1462);
         param1.writeInt(this.var_658 << 4 % 32 | this.var_658 >>> 32 - 4 % 32);
         param1.writeDouble(this.var_153);
      }
   }
}
