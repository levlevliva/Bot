package package_109
{
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipNameTextArea;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_36.class_100;
   import package_41.class_93;
   import package_52.class_1227;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.Label;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class class_385 extends class_339
   {
      
      public static const name_3:class_385 = new class_385();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_626>;
      
      public function class_385(param1:Vector.<class_626> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_626>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -20120;
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
         var _loc4_:class_626 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
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
            _loc4_ = class_626(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_626 = null;
         param1.writeShort(-20120);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
