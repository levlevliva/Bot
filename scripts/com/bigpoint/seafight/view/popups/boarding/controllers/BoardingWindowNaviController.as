package com.bigpoint.seafight.view.popups.boarding.controllers
{
   import com.bigpoint.seafight.view.common.components.BoardingWindow;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.BoardingWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.boarding.CmdSL_OpenBoardingWindowAssistantsTab;
   import com.bigpoint.services.statelessCommands.commands.boarding.CmdSL_OpenBoardingWindowCrewTab;
   import com.bigpoint.services.statelessCommands.commands.boarding.OpenBoardingWindowPetsTabCommand;
   import flash.events.Event;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_14.class_88;
   import package_205.class_1353;
   import package_51.class_1355;
   import spark.events.IndexChangeEvent;
   
   public final class BoardingWindowNaviController extends WindowController implements IWindowController
   {
      
      public static const TAB_CREW:int = 0;
      
      public static const TAB_PETS:int = 1;
      
      public static const TAB_ASSISTANTS:int = 2;
      
      private static const TAB_NAMES:Vector.<String> = new <String>[class_47.method_37.method_32(class_88.const_27,"CREW"),class_47.method_37.method_32(class_88.const_27,"PETS"),class_47.method_37.method_32(class_88.const_27,"CREWMEMBER")];
       
      
      private var popupVo:BoardingWindowNaviPopupVo;
      
      private var navigator:DynamicTabNavigator;
      
      private var controller:class_1353;
      
      public function BoardingWindowNaviController(param1:String, param2:Object)
      {
         super(param1,param2);
         this.controller = new class_1353(this.component.content,class_1355.const_609);
         this.component.addEventListener(Event.CLOSE,this.shutdown);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         var _loc2_:BasicResizableWindowSkin = this.windowSkin;
         _loc2_.refreshButton.visible = false;
         _loc2_.infoButton.visible = false;
         _loc2_.navigationbar.addElement(this.navigator = new DynamicTabNavigator(this.window));
         this.navigator.addEventListener(FlexEvent.CHANGING,this.navigate);
         this.generateData();
      }
      
      private final function navigate(param1:IndexChangeEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:int = this.navigator.selectedTab;
         this.openTab(_loc2_);
      }
      
      private final function openTab(param1:int) : void
      {
         this.windowSkin.refreshButton.visible = false;
         switch(param1)
         {
            case TAB_CREW:
               StatelessCMD.invoke(CmdSL_OpenBoardingWindowCrewTab);
               break;
            case TAB_PETS:
               new OpenBoardingWindowPetsTabCommand().execute();
               break;
            case TAB_ASSISTANTS:
               StatelessCMD.invoke(CmdSL_OpenBoardingWindowAssistantsTab);
         }
         this.navigator.selectedTab = param1;
      }
      
      private final function generateData() : void
      {
         if(!this.popupVo)
         {
            return;
         }
         this.populateTabData();
      }
      
      private final function populateTabData() : void
      {
         var _loc1_:Vector.<WindowButtonBarButtonVo> = new Vector.<WindowButtonBarButtonVo>();
         _loc1_.push(this.createTabVo(TAB_CREW));
         _loc1_.push(this.createTabVo(TAB_PETS));
         _loc1_.push(this.createTabVo(TAB_ASSISTANTS));
         this.navigator.data = _loc1_;
         this.openTab(this.popupVo.selectedTab > -1?int(this.popupVo.selectedTab):int(TAB_CREW));
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
      
      public function get component() : BoardingWindowNaviPopup
      {
         return super.viewComponent as BoardingWindowNaviPopup;
      }
      
      public function get window() : BoardingWindow
      {
         return this.component.owner as BoardingWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this.component.removeEventListener(Event.CLOSE,this.shutdown);
         this.navigator.removeEventListener(FlexEvent.CHANGING,this.navigate);
         this.controller.method_119();
         this.controller = null;
      }
      
      public function set data(param1:ContentVo) : void
      {
         this.popupVo = param1 as BoardingWindowNaviPopupVo;
      }
   }
}
