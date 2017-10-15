package com.bigpoint.seafight.view.mainmenu
{
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass0;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_26.class_101;
   import package_5.class_43;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public final class MainMenuDropdownButton extends ItemRenderer implements IStateClient2
   {
       
      
      private var _1377687758button:MainMenuButton;
      
      private var _432061423dropdown:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var buttonId:int;
      
      private var list:ArrayList;
      
      private var icon:String;
      
      private var notifying:Boolean;
      
      private var dirty:Boolean;
      
      public function MainMenuDropdownButton()
      {
         super();
         mx_internal::_document = this;
         this.width = 55;
         this.height = 30;
         this.mouseEnabled = false;
         this.mxmlContent = [this._MainMenuDropdownButton_VGroup1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"dropdown",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"dropdown",
               "name":"includeInLayout",
               "value":true
            })]
         }),new State({
            "name":"selected",
            "overrides":[]
         }),new State({
            "name":"up",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"dropdown",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"dropdown",
               "name":"includeInLayout",
               "value":false
            })]
         })];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!this.dirty)
         {
            return;
         }
         this.button.iconName = this.icon;
         this.button.notify(this.notifying);
         this.button.showPulldownIcon = true;
         this.dropdown.dataProvider = null;
         this.dropdown.dataProvider = this.list;
         this.dirty = false;
      }
      
      public final function hideDropdown() : void
      {
         this.dropdown.includeInLayout = false;
         this.dropdown.visible = false;
      }
      
      public final function setButtonData(param1:int, param2:ArrayList) : void
      {
         this.buttonId = param1;
         this.list = param2;
         this.dirty = true;
         invalidateProperties();
      }
      
      public final function update() : void
      {
         this.dirty = true;
         invalidateProperties();
      }
      
      public function set iconName(param1:String) : void
      {
         this.icon = param1;
         this.dirty = true;
         invalidateProperties();
      }
      
      public final function notify(param1:Boolean) : void
      {
         this.notifying = param1;
         this.dirty = true;
         invalidateProperties();
      }
      
      private final function _MainMenuDropdownButton_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._MainMenuDropdownButton_MainMenuButton1_i(),this._MainMenuDropdownButton_List1_i()];
         _loc1_.addEventListener("mouseDown",this.___MainMenuDropdownButton_VGroup1_mouseDown);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuDropdownButton_MainMenuButton1_i() : MainMenuButton
      {
         var _loc1_:MainMenuButton = new MainMenuButton();
         _loc1_.addEventListener("click",this.__button_click);
         _loc1_.id = "button";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.button = _loc1_;
         BindingManager.executeBindings(this,"button",this.button);
         return _loc1_;
      }
      
      public final function __button_click(param1:MouseEvent) : void
      {
         dispatchEvent(new class_101(this.buttonId));
      }
      
      private final function _MainMenuDropdownButton_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.percentWidth = 100;
         _loc1_.useVirtualLayout = true;
         _loc1_.itemRenderer = this._MainMenuDropdownButton_ClassFactory1_c();
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("verticalScrollPolicy","off");
         _loc1_.setStyle("skinClass",MainMenuButtonListSkin);
         _loc1_.id = "dropdown";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dropdown = _loc1_;
         BindingManager.executeBindings(this,"dropdown",this.dropdown);
         return _loc1_;
      }
      
      private final function _MainMenuDropdownButton_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MainMenuButtonListItem;
         return _loc1_;
      }
      
      public final function ___MainMenuDropdownButton_VGroup1_mouseDown(param1:MouseEvent) : void
      {
         param1.preventDefault();
      }
      
      [Bindable(event="propertyChange")]
      public function get button() : MainMenuButton
      {
         return this._1377687758button;
      }
      
      public function set button(param1:MainMenuButton) : void
      {
         var _loc2_:Object = this._1377687758button;
         if(_loc2_ !== param1)
         {
            this._1377687758button = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropdown() : List
      {
         return this._432061423dropdown;
      }
      
      public function set dropdown(param1:List) : void
      {
         var _loc2_:Object = this._432061423dropdown;
         if(_loc2_ !== param1)
         {
            this._432061423dropdown = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropdown",_loc2_,param1));
            }
         }
      }
   }
}
