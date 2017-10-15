package package_94
{
   import com.bigpoint.seafight.model.inventory.type.Gem_Model;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import package_14.class_1313;
   import package_14.class_47;
   import package_143.class_542;
   import package_215.class_1600;
   import package_26.class_969;
   import package_32.class_338;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_49.class_137;
   import package_5.class_1054;
   import package_54.class_158;
   import package_6.class_14;
   import package_90.class_811;
   import package_93.class_339;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   
   public final class class_340 extends class_339
   {
      
      public static const name_3:class_340 = new class_340();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_690>;
      
      public function class_340(param1:Vector.<class_690> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_690>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -20006;
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
         var _loc4_:class_690 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
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
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_690(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_690 = null;
         param1.writeShort(-20006);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
