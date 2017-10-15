package com.bigpoint.seafight.view.popups.groupwindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuCurrencyController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.spymenu.WindowSettingsController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.net.URLVariables;
   import flash.system.ApplicationDomain;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_104.class_641;
   import package_109.class_626;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_15.class_48;
   import package_16.class_28;
   import package_17.class_31;
   import package_170.class_979;
   import package_205.class_1353;
   import package_208.class_1361;
   import package_26.class_1354;
   import package_27.class_53;
   import package_34.class_107;
   import package_36.class_100;
   import package_38.class_79;
   import package_39.class_1366;
   import package_39.class_80;
   import package_4.class_11;
   import package_40.class_334;
   import package_40.class_824;
   import package_40.class_86;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_5.class_139;
   import package_5.class_43;
   import package_51.class_1355;
   import package_54.class_319;
   import package_65.class_1046;
   import package_69.class_978;
   import package_89.class_299;
   import package_90.class_316;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class GroupWindowController extends WindowController implements IWindowController
   {
       
      
      private var _queryHub:class_48;
      
      private var _component:GroupWindow;
      
      private var _settingsController:WindowSettingsController;
      
      private var _groupUsersStatusQuery:class_79;
      
      public function GroupWindowController(param1:String, param2:GroupWindow)
      {
         super(param1,param2);
         this._component = param2;
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._queryHub = class_48.name_3;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this._settingsController.destroy();
         this._groupUsersStatusQuery.removeEventListener(Event.CHANGE,this.onData);
         this._component.destroy();
         this._component.removeEventListener(GroupWindowItem.EVENT_FOLLOW,this.onFollow);
         this._component.removeEventListener(GroupWindowItem.EVENT_KICK,this.onKick);
         this._component.removeEventListener(GroupWindowItem.EVENT_LOCATE,this.onLocate);
         this._component.removeEventListener(GroupWindowItem.EVENT_PROMOTE,this.onPromote);
         this._component.removeEventListener(GroupWindowItem.EVENT_SELECT,this.onSelect);
         this._component.icoGroup.removeEventListener(MiniActionButton.BUTTON_CLICK_EVENT,this.onInvite);
         class_11.method_21().removeEventListener(class_11.const_882,this.onSelectedOnMap);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.window.minimizeButton.visible = false;
         this.window.helpButton.visible = false;
         this.window.resizeHandle.visible = false;
         this._settingsController = new WindowSettingsController(this.window,class_43.const_1230,class_43.const_1298);
         this._settingsController.init();
         this._groupUsersStatusQuery = class_48.name_3.var_1927;
         this._groupUsersStatusQuery.addEventListener(Event.CHANGE,this.onData);
         this._component.addEventListener(GroupWindowItem.EVENT_FOLLOW,this.onFollow);
         this._component.addEventListener(GroupWindowItem.EVENT_KICK,this.onKick);
         this._component.addEventListener(GroupWindowItem.EVENT_LOCATE,this.onLocate);
         this._component.addEventListener(GroupWindowItem.EVENT_PROMOTE,this.onPromote);
         this._component.addEventListener(GroupWindowItem.EVENT_SELECT,this.onSelect);
         this._component.icoGroup.addEventListener(MiniActionButton.BUTTON_CLICK_EVENT,this.onInvite);
         class_11.method_21().addEventListener(class_11.const_882,this.onSelectedOnMap);
         this.onData();
      }
      
      private function get window() : MinimizeLockWindow
      {
         return this._component.owner as MinimizeLockWindow;
      }
      
      private final function onData(param1:Event = null) : void
      {
         this._component.setData(this._groupUsersStatusQuery.name_8);
         var _loc2_:int = !!this._groupUsersStatusQuery.name_8?int(this._groupUsersStatusQuery.name_8.length):0;
         class_47.method_24.var_12.miniMap.method_2260(_loc2_ > 0);
      }
      
      private final function onInvite(param1:Event) : void
      {
         this._component.icoGroup.enabled = false;
         this._component.icoGroup.setEnabled(true,true,3000);
         var _loc2_:String = this._component.txSearchInput.text;
         var _loc3_:class_824 = new class_824(_loc2_);
         class_28.name_3.method_31(_loc3_);
      }
      
      private final function onKick(param1:class_1366) : void
      {
         var _loc2_:class_334 = new class_334();
         _loc2_.name_4 = param1.name_19;
         _loc2_.name_5 = class_334.const_1626;
         class_28.name_3.method_31(_loc2_);
      }
      
      private final function onLocate(param1:class_1366) : void
      {
         var _loc2_:class_86 = null;
         var _loc5_:String = null;
         var _loc3_:int = this._groupUsersStatusQuery.name_8.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = (this._groupUsersStatusQuery.name_8.getItemAt(_loc4_) as GroupWindowUserModel).stub;
            if(_loc2_.var_162 == param1.name_19)
            {
               if(_loc2_.name_11 == class_47.method_51.method_175())
               {
                  class_31.method_21().method_1432(_loc2_.var_24.var_9,_loc2_.var_24.var_8);
                  break;
               }
               _loc5_ = class_139.method_27(_loc2_.name_11);
               MultiPopUpManager.addSimpleOK_Popup(class_47.method_22.method_20("groupWindowMapText").replace("%NAME%",_loc5_),class_47.method_22.method_20("groupWindowFindPlayer"));
               break;
            }
            _loc4_++;
         }
      }
      
      private final function onPromote(param1:class_1366) : void
      {
         var _loc2_:class_334 = new class_334();
         _loc2_.name_4 = param1.name_19;
         _loc2_.name_5 = class_334.const_1420;
         class_28.name_3.method_31(_loc2_);
      }
      
      private final function onSelect(param1:class_1366) : void
      {
         var _loc2_:class_100 = class_47.method_29.method_44(param1.name_19);
         if(_loc2_)
         {
            class_47.method_48.method_187(_loc2_);
         }
      }
      
      private final function onFollow(param1:class_1366) : void
      {
      }
      
      private final function onSelectedOnMap(param1:class_80) : void
      {
         this._component.setSearchText(param1.name_19);
      }
   }
}
