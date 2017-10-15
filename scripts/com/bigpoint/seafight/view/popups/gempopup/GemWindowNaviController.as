package com.bigpoint.seafight.view.popups.gempopup
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ShipSelectionVListItemGem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindowBootybagTab;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindowCraftingTab;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindowPetTab;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindowShipTab;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_107.class_693;
   import package_130.class_1143;
   import package_131.class_573;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_15.class_48;
   import package_190.class_1181;
   import package_205.class_1353;
   import package_215.class_1600;
   import package_26.class_1354;
   import package_41.class_84;
   import package_5.class_12;
   import package_5.class_123;
   import package_51.class_1355;
   import package_51.class_148;
   import package_72.class_203;
   import package_74.class_253;
   import package_8.class_16;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   
   public final class GemWindowNaviController extends WindowController implements IWindowController
   {
      
      private static const TAB_SHIP:int = 0;
      
      private static const TAB_PET:int = 1;
      
      private static const TAB_CRAFTING:int = 2;
      
      private static const TAB_BOOTYBAG:int = 3;
       
      
      private var _navigator:DynamicTabNavigator;
      
      private var _subWindowController:class_1353;
      
      private var _petGemHolderListQuery:class_253;
      
      private var _currentTab:int;
      
      public function GemWindowNaviController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._currentTab = -1;
         this._subWindowController = new class_1353(this.component.content,class_1355.const_364);
         this._subWindowController.addEventListener(class_1354.const_34,this.onWindowTabChangeEvent);
         this.component.addEventListener(Event.CLOSE,this.shutdown);
         getSWFFinisher(class_123.const_177);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         var _loc2_:BasicResizableWindowSkin = this.windowSkin;
         _loc2_.refreshButton.visible = false;
         _loc2_.infoButton.visible = false;
         _loc2_.navigationbar.addElement(this._navigator = new DynamicTabNavigator(this.window));
         this._petGemHolderListQuery = class_48.name_3.method_304(class_270.const_16);
         this._petGemHolderListQuery.addEventListener(Event.CHANGE,this.onPetGemHolderListQueryUpdate);
         this._navigator.addEventListener(FlexEvent.CHANGING,this.navigate);
         this.generateData();
      }
      
      private final function onWindowTabChangeEvent(param1:class_1354) : void
      {
         this.openTab(param1.method_581());
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
            case TAB_SHIP:
               StatelessCMD.invoke(CmdSL_OpenGemWindowShipTab);
               break;
            case TAB_PET:
               StatelessCMD.invoke(CmdSL_OpenGemWindowPetTab);
               break;
            case TAB_CRAFTING:
               StatelessCMD.invoke(CmdSL_OpenGemWindowCraftingTab);
               break;
            case TAB_BOOTYBAG:
               StatelessCMD.invoke(CmdSL_OpenGemWindowBootybagTab);
         }
         this._currentTab = param1;
         this._navigator.selectedTab = param1;
      }
      
      private final function generateData() : void
      {
         this.populateTabData();
      }
      
      private final function populateTabData() : void
      {
         var _loc1_:Vector.<WindowButtonBarButtonVo> = new Vector.<WindowButtonBarButtonVo>();
         var _loc2_:class_87 = class_47.method_22;
         var _loc3_:Vector.<class_1170> = this._petGemHolderListQuery.method_341;
         _loc1_.push(this.createTabVo(TAB_SHIP,_loc2_.method_20("shipconfigurator")));
         _loc1_.push(this.createTabVo(TAB_PET,_loc2_.method_20("petconfigurator"),null,_loc3_ != null && _loc3_.length > 0));
         _loc1_.push(this.createTabVo(TAB_CRAFTING,_loc2_.method_20("gemforge")));
         _loc1_.push(this.createTabVo(TAB_BOOTYBAG,_loc2_.method_20("bootybag")));
         this._navigator.data = _loc1_;
         if(this._navigator.isTabAvailable(this._currentTab))
         {
            this._navigator.selectedTab = this._currentTab;
            this._subWindowController.method_182();
         }
         else
         {
            this.openTab(this._navigator.getFirstTab());
         }
      }
      
      private final function createTabVo(param1:int, param2:String, param3:String = null, param4:Boolean = true) : WindowButtonBarButtonVo
      {
         var _loc5_:WindowButtonBarButtonVo = new WindowButtonBarButtonVo();
         _loc5_.tabId = param1;
         _loc5_.name = param2;
         _loc5_.enabled = param4;
         _loc5_.tooltip = param3;
         return _loc5_;
      }
      
      private final function onPetGemHolderListQueryUpdate(param1:Event) : void
      {
         this.generateData();
      }
      
      public function get component() : GemWindowNaviPopup
      {
         return super.viewComponent as GemWindowNaviPopup;
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
         this.component.removeEventListener(Event.CLOSE,this.shutdown);
         this._petGemHolderListQuery.removeEventListener(Event.CHANGE,this.onPetGemHolderListQueryUpdate);
         this._navigator.removeEventListener(FlexEvent.CHANGING,this.navigate);
         this._subWindowController.removeEventListener(class_1354.const_34,this.onWindowTabChangeEvent);
         this._subWindowController.method_119();
         this._subWindowController = null;
      }
      
      public function set data(param1:ContentVo) : void
      {
      }
   }
}
