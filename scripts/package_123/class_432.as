package package_123
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import package_14.class_199;
   import package_14.class_234;
   import package_167.class_1024;
   import package_17.class_151;
   import package_20.class_33;
   import package_208.class_1574;
   import package_29.class_166;
   import package_41.class_93;
   import package_45.class_110;
   import package_51.class_1005;
   import package_54.class_319;
   import package_6.class_14;
   import package_88.class_1014;
   import package_89.class_1503;
   import package_9.class_91;
   import package_95.class_341;
   import package_95.class_382;
   import spark.components.List;
   
   public final class class_432 extends class_341
   {
      
      public static const name_3:class_432 = new class_432();
       
      
      private var var_646:int = 0;
      
      public var var_1099:class_837;
      
      public var var_853:Vector.<class_837>;
      
      public function class_432(param1:class_837 = null, param2:Vector.<class_837> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_1099 = new class_837();
         }
         else
         {
            this.var_1099 = param1;
         }
         if(param2 == null)
         {
            this.var_853 = new Vector.<class_837>();
         }
         else
         {
            this.var_853 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 17365;
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
         var _loc4_:class_837 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1099 = class_837(class_93.method_26().method_25(param1.readShort()));
         this.var_1099.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_853.length > 0)
         {
            this.var_853.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_837(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_853.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_837 = null;
         param1.writeShort(17365);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         super.method_14(param1);
         this.var_1099.method_14(param1);
         param1.writeByte(this.var_853.length);
         for each(_loc2_ in this.var_853)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
