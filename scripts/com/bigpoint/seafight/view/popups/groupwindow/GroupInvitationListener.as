package com.bigpoint.seafight.view.popups.groupwindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.PuzzleWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.BoardingMenuAssistantsTab;
   import com.bigpoint.seafight.view.popups.boarding.controllers.BoardingMenuAssistantsTabController;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuAssistantsTabVo;
   import com.bigpoint.seafight.view.popups.groupwindow.invitationpopup.OpenGroupInvitationWindowCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMemberListItem;
   import com.bigpoint.seafight.view.popups.puzzlepopup.PuzzlePopupController;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopup;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageTextVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColorStroke;
   import package_132.class_494;
   import package_132.class_605;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_96;
   import package_15.class_48;
   import package_16.class_28;
   import package_190.class_1469;
   import package_20.class_33;
   import package_36.class_1417;
   import package_38.class_248;
   import package_40.class_334;
   import package_41.class_84;
   import package_45.class_110;
   import package_5.class_43;
   import package_51.class_1355;
   import package_51.class_974;
   import package_6.class_14;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.components.TitleWindow;
   
   public final class GroupInvitationListener
   {
      
      private static var _instance:GroupInvitationListener;
       
      
      private var _query:class_248;
      
      private var _reply:class_334;
      
      public function GroupInvitationListener()
      {
         super();
         this._query = class_48.name_3.var_2304;
         this._query.addEventListener(Event.CHANGE,this.onData);
      }
      
      public static function get instance() : GroupInvitationListener
      {
         if(!_instance)
         {
            _instance = new GroupInvitationListener();
         }
         return _instance;
      }
      
      private final function onData(param1:Event) : void
      {
         var _loc2_:class_84 = null;
         var _loc3_:String = null;
         if(this._query.name_8 && !class_49.method_42(class_43.const_384))
         {
            _loc2_ = this._query.name_8.name_4;
            _loc3_ = this._query.name_8.name_13;
            this._reply = new class_334();
            this._reply.name_4 = _loc2_;
            new OpenGroupInvitationWindowCommand().execute(_loc3_,this.onYes,this.onNo);
         }
      }
      
      private final function onYes() : void
      {
         this._reply.name_5 = class_334.const_1298;
         class_28.name_3.method_31(this._reply);
         new OpenGroupWindowCommand().execute();
         this._reply = null;
      }
      
      private final function onNo() : void
      {
         this._reply.name_5 = class_334.const_1379;
         class_28.name_3.method_31(this._reply);
         this._reply = null;
      }
   }
}
