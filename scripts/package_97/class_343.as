package package_97
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEventDispatcher;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.deathpopup.component.KillerName;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindow;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyInviteActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import package_133.class_595;
   import package_14.class_49;
   import package_14.class_96;
   import package_143.class_933;
   import package_16.class_28;
   import package_170.class_979;
   import package_173.class_1236;
   import package_216.class_1575;
   import package_3.btn;
   import package_3.coolDownEffect;
   import package_39.class_1366;
   import package_41.class_84;
   import package_43.class_257;
   import package_47.class_881;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_1015;
   import package_53.class_157;
   import package_54.class_162;
   import package_67.class_1051;
   import package_80.class_1217;
   import package_89.class_1346;
   import package_92.class_336;
   import package_92.class_944;
   import package_96.class_342;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.TextOperationEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_343 extends class_342
   {
      
      public static const name_3:class_343 = new class_343();
       
      
      private var var_646:int = 0;
      
      public var var_232:int = 0;
      
      public function class_343(param1:int = 0)
      {
         super();
         this.var_232 = param1;
      }
      
      override public function method_16() : int
      {
         return -23610;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_232 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-23610);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_232);
      }
   }
}
