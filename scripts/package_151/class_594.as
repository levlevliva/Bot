package package_151
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.events.ToolTipEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_104.class_448;
   import package_104.class_989;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_156.class_654;
   import package_174.class_1373;
   import package_20.class_33;
   import package_52.class_167;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_594 implements class_14
   {
      
      public static const name_3:class_594 = new class_594();
       
      
      private var var_646:int = 0;
      
      public var var_912:Vector.<int>;
      
      public function class_594(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_912 = new Vector.<int>();
         }
         else
         {
            this.var_912 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 12164;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_912.length > 0)
         {
            this.var_912.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readShort());
            _loc4_ = 65535 & ((65535 & _loc4_) << 10 % 16 | (65535 & _loc4_) >>> 16 - 10 % 16);
            _loc4_ = int(_loc4_ > 32767?int(_loc4_ - 65536):int(_loc4_));
            this.var_912.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(12164);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeByte(this.var_912.length);
         for each(_loc2_ in this.var_912)
         {
            param1.writeShort(65535 & ((65535 & _loc2_) >>> 10 % 16 | (65535 & _loc2_) << 16 - 10 % 16));
         }
      }
   }
}
