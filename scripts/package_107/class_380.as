package package_107
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_22;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.Label;
   import spark.filters.DropShadowFilter;
   
   public final class class_380 extends class_339
   {
      
      public static const name_3:class_380 = new class_380();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_693>;
      
      public function class_380(param1:Vector.<class_693> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_693>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 10573;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_693 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_693(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_693 = null;
         param1.writeShort(10573);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         super.method_14(param1);
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
