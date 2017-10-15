package package_28
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.TipsWindow;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.tipspopup.TipsPopupController;
   import com.bigpoint.seafight.view.popups.tipspopup.component.TipsPopup;
   import com.bigpoint.seafight.view.popups.tipspopup.vo.TipsParamVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleResizableWindowSkin;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import package_102.class_359;
   import package_14.class_47;
   import package_14.class_51;
   import package_171.class_981;
   import package_187.class_1198;
   import package_20.class_33;
   import package_36.class_100;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1501;
   import package_51.class_974;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_1315;
   import spark.components.Group;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_56 extends Event
   {
      
      public static const const_757:String = "connectionStart";
      
      public static const const_51:String = "connectionClosed";
      
      public static const const_1141:String = "connectionTimeout";
      
      public static const const_500:String = "connectionSuccess";
      
      public static const const_1028:String = "connectionError";
       
      
      public function class_56(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new class_56(this.type,this.bubbles,this.cancelable);
      }
   }
}
