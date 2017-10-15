package com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropRemoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindowFoundTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindowRelationsTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindowSearchTab;
   import com.bit101.components.ColorChooser;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_14.class_1377;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_48;
   import package_205.class_1353;
   import package_208.class_1361;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_22;
   import package_51.class_1355;
   import package_52.class_168;
   import package_69.class_978;
   import package_88.class_1090;
   import package_88.class_967;
   import package_9.class_76;
   import package_9.class_91;
   import package_92.class_944;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class SafeHavenGuildWindowNaviController extends WindowController implements IWindowController
   {
      
      private static const TAB_SEARCH:int = 0;
      
      private static const TAB_FOUND:int = 1;
      
      private static const TAB_RELATIONS:int = 2;
      
      private static const TAB_NAMES:Vector.<String> = new <String>[class_47.method_22.method_20("guildsearch"),class_47.method_22.method_20("createguild"),class_47.method_22.method_20("guildrelations")];
       
      
      private var _proxy:class_1361;
      
      private var _popupVo:SafeHavenGuildWindowNaviPopupVo;
      
      private var _navigator:DynamicTabNavigator;
      
      private var _subWindowController:class_1353;
      
      private var _currentTab:int;
      
      public function SafeHavenGuildWindowNaviController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._currentTab = -1;
         this._proxy = new class_1361();
         this._proxy.addEventListener(class_978.const_4,this.onServerUpdateReceived);
         this._subWindowController = new class_1353(this.component.content,class_1355.const_636);
         this.component.addEventListener(Event.CLOSE,this.shutdown);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         var _loc2_:BasicResizableWindowSkin = this.windowSkin;
         _loc2_.refreshButton.visible = false;
         _loc2_.infoButton.visible = false;
         _loc2_.navigationbar.addElement(this._navigator = new DynamicTabNavigator(this.window));
         this._navigator.addEventListener(FlexEvent.CHANGING,this.navigate);
         this._proxy.name_16();
         if(!this._proxy.method_148())
         {
            this.generateData();
         }
      }
      
      private final function onServerUpdateReceived(param1:Event) : void
      {
         this.generateData();
      }
      
      private final function navigate(param1:IndexChangeEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:int = this._navigator.selectedTab;
         this.openTab(_loc2_);
      }
      
      private final function openTab(param1:int) : void
      {
         switch(param1)
         {
            case TAB_SEARCH:
               StatelessCMD.invoke(CmdSL_OpenSafeHavenGuildWindowSearchTab);
               break;
            case TAB_FOUND:
               StatelessCMD.invoke(CmdSL_OpenSafeHavenGuildWindowFoundTab);
               break;
            case TAB_RELATIONS:
               StatelessCMD.invoke(CmdSL_OpenSafeHavenGuildWindowRelationsTab);
         }
         this._currentTab = param1;
         this._navigator.selectedTab = param1;
      }
      
      private final function generateData() : void
      {
         if(!this._popupVo)
         {
            return;
         }
         this.populateTabData();
      }
      
      private final function populateTabData() : void
      {
         var _loc1_:Vector.<WindowButtonBarButtonVo> = new Vector.<WindowButtonBarButtonVo>();
         _loc1_.push(this.createTabVo(TAB_SEARCH));
         if(this._proxy.method_148())
         {
            _loc1_.push(this.createTabVo(TAB_RELATIONS));
         }
         else if(class_232.method_141(class_76.const_447))
         {
            _loc1_.push(this.createTabVo(TAB_FOUND));
         }
         this._navigator.data = _loc1_;
         if(this._currentTab < 0 || !this._navigator.isTabAvailable(this._currentTab))
         {
            this.openTab(this._navigator.getFirstTab());
         }
         else
         {
            this._navigator.selectedTab = this._currentTab;
            this._subWindowController.method_182();
         }
      }
      
      private final function createTabVo(param1:int, param2:String = null, param3:Boolean = true) : WindowButtonBarButtonVo
      {
         var _loc4_:WindowButtonBarButtonVo = new WindowButtonBarButtonVo();
         _loc4_.tabId = param1;
         _loc4_.name = TAB_NAMES[param1];
         _loc4_.enabled = param3;
         _loc4_.tooltip = param2;
         return _loc4_;
      }
      
      public function get component() : SafeHavenGuildWindowNaviPopup
      {
         return super.viewComponent as SafeHavenGuildWindowNaviPopup;
      }
      
      public function get window() : SafeHavenGuildWindow
      {
         return this.component.owner as SafeHavenGuildWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         GuildImageLoader.clearImageCache(true);
         this.component.removeEventListener(Event.CLOSE,this.shutdown);
         this._navigator.removeEventListener(FlexEvent.CHANGING,this.navigate);
         this._subWindowController.method_119();
         this._subWindowController = null;
         this._proxy.method_36();
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._popupVo = param1 as SafeHavenGuildWindowNaviPopupVo;
      }
   }
}
