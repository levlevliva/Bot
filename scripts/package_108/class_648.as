package package_108
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.groupwindow.invitationpopup.OpenGroupInvitationWindowCommand;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_14.class_225;
   import package_14.class_49;
   import package_15.class_273;
   import package_15.class_48;
   import package_153.class_931;
   import package_18.class_571;
   import package_18.class_855;
   import package_40.class_334;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_43;
   import package_9.class_917;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.gridClasses.GridColumn;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_648 extends class_647
   {
      
      public static const name_3:class_648 = new class_648();
       
      
      private var var_646:int = 0;
      
      public var var_1631:Number = 0;
      
      public var var_875:Vector.<class_581>;
      
      public var var_742:Vector.<class_917>;
      
      public var var_1451:Number = 0;
      
      public var var_1475:Number = 0;
      
      public function class_648(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Vector.<class_581> = null, param5:Vector.<class_917> = null)
      {
         super();
         this.var_1631 = param3;
         if(param4 == null)
         {
            this.var_875 = new Vector.<class_581>();
         }
         else
         {
            this.var_875 = param4;
         }
         if(param5 == null)
         {
            this.var_742 = new Vector.<class_917>();
         }
         else
         {
            this.var_742 = param5;
         }
         this.var_1451 = param2;
         this.var_1475 = param1;
      }
      
      override public function method_16() : int
      {
         return -15883;
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
         return 32;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_581 = null;
         var _loc5_:class_917 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1631 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_875.length > 0)
         {
            this.var_875.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_581(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_875.push(_loc4_);
            _loc2_++;
         }
         while(this.var_742.length > 0)
         {
            this.var_742.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_917(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_742.push(_loc5_);
            _loc2_++;
         }
         this.var_1451 = param1.readDouble();
         this.var_1475 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_581 = null;
         var _loc3_:class_917 = null;
         param1.writeShort(-15883);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_1631);
         param1.writeByte(this.var_875.length);
         for each(_loc2_ in this.var_875)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_742.length);
         for each(_loc3_ in this.var_742)
         {
            _loc3_.method_14(param1);
         }
         param1.writeDouble(this.var_1451);
         param1.writeDouble(this.var_1475);
      }
   }
}
