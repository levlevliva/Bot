package com.bigpoint.seafight.view.mainmenu
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bit101.components.LabelBar;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_14.class_225;
   import package_170.class_979;
   import package_26.class_101;
   import package_41.class_84;
   import package_55.class_1018;
   import package_98.class_777;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class MainMenuBar extends Group
   {
       
      
      private var _1177318867account:VGroup;
      
      private var _1610774332boarding:MainMenuButton;
      
      private var _3052376chat:MainMenuToggleButton;
      
      private var _951530617content:HGroup;
      
      private var _1089470353currencies:Group;
      
      private var _554775174currenciesClickArea:Group;
      
      private var _1118808659currenciesList:CurrencyPopup;
      
      private var _802622813currencyButton:BriskImageDynaLib;
      
      private var _96891546event:MainMenuDropdownButton;
      
      private var _1637628053icoGold:BitmapImage;
      
      private var _2050644962icoPearls:BitmapImage;
      
      private var _1097329270logout:MainMenuButton;
      
      private var _836535815mapName:Label;
      
      private var _59868837mapPosition:Label;
      
      private var _1249474914options:MainMenuButton;
      
      private var _948698159quests:MainMenuButton;
      
      private var _1123263335safehaven:MainMenuDropdownButton;
      
      private var _3529276ship:MainMenuDropdownButton;
      
      private var _2038770010socials:MainMenuDropdownButton;
      
      private var _860937980txGold:Label;
      
      private var _1815405713txPearls:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _gold:Number;
      
      private var _pearls:Number;
      
      private var _enable:Boolean;
      
      private var _dirty:Boolean = true;
      
      public function MainMenuBar()
      {
         this._gold = class_225.name_36;
         this._pearls = class_225.name_32;
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._MainMenuBar_QuestWindowHeaderBG1_c(),this._MainMenuBar_Rect1_c(),this._MainMenuBar_Group2_i(),this._MainMenuBar_HGroup3_i(),this._MainMenuBar_MainMenuButton4_i()];
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
         if(!this._dirty)
         {
            return;
         }
         this.txPearls.text = class_13.method_53(this._pearls);
         this.txGold.text = class_13.method_53(this._gold);
         this.mouseChildren = this._enable;
         this.logout.alpha = !!this._enable?Number(1):Number(0.4);
         this.content.alpha = 1;
         this.currencies.alpha = this.content.alpha;
         this.account.alpha = this.content.alpha;
         this._dirty = false;
      }
      
      public final function enable(param1:Boolean) : void
      {
         this._enable = param1;
         this.update();
      }
      
      public function set gold(param1:Number) : void
      {
         this._gold = param1;
         this.update();
      }
      
      public function set pearls(param1:Number) : void
      {
         this._pearls = param1;
         this.update();
      }
      
      public final function updateButtons() : void
      {
         this.safehaven.update();
         this.socials.update();
         this.event.update();
      }
      
      private final function update() : void
      {
         this._dirty = true;
         invalidateProperties();
      }
      
      private final function _MainMenuBar_QuestWindowHeaderBG1_c() : QuestWindowHeaderBG
      {
         var _loc1_:QuestWindowHeaderBG = new QuestWindowHeaderBG();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 30;
         _loc1_.percentWidth = 100;
         _loc1_.height = 10;
         _loc1_.fill = this._MainMenuBar_BriskBitmapFill1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _MainMenuBar_BriskBitmapFill1_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "rope_seamless";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _MainMenuBar_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 10;
         _loc1_.mxmlContent = [this._MainMenuBar_Group3_i(),this._MainMenuBar_Group4_c()];
         _loc1_.id = "currencies";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencies = _loc1_;
         BindingManager.executeBindings(this,"currencies",this.currencies);
         return _loc1_;
      }
      
      private final function _MainMenuBar_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 28;
         _loc1_.mxmlContent = [this._MainMenuBar_Rect2_c(),this._MainMenuBar_VGroup1_i(),this._MainMenuBar_BriskImageDynaLib1_c(),this._MainMenuBar_BriskImageDynaLib2_i(),this._MainMenuBar_BorderType11_c()];
         _loc1_.id = "currenciesClickArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currenciesClickArea = _loc1_;
         BindingManager.executeBindings(this,"currenciesClickArea",this.currenciesClickArea);
         return _loc1_;
      }
      
      private final function _MainMenuBar_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.left = 2;
         _loc1_.right = 2;
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.fill = this._MainMenuBar_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _MainMenuBar_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.7;
         return _loc1_;
      }
      
      private final function _MainMenuBar_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 2;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 2;
         _loc1_.paddingLeft = 7;
         _loc1_.paddingRight = 27;
         _loc1_.paddingBottom = 4;
         _loc1_.mxmlContent = [this._MainMenuBar_HGroup1_c(),this._MainMenuBar_HGroup2_c()];
         _loc1_.id = "account";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.account = _loc1_;
         BindingManager.executeBindings(this,"account",this.account);
         return _loc1_;
      }
      
      private final function _MainMenuBar_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MainMenuBar_BitmapImage1_i(),this._MainMenuBar_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.width = 10;
         _loc1_.height = 10;
         _loc1_.initialized(this,"icoPearls");
         this.icoPearls = _loc1_;
         BindingManager.executeBindings(this,"icoPearls",this.icoPearls);
         return _loc1_;
      }
      
      private final function _MainMenuBar_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite10b";
         _loc1_.text = "";
         _loc1_.id = "txPearls";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txPearls = _loc1_;
         BindingManager.executeBindings(this,"txPearls",this.txPearls);
         return _loc1_;
      }
      
      private final function _MainMenuBar_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MainMenuBar_BitmapImage2_i(),this._MainMenuBar_Label2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.width = 10;
         _loc1_.height = 10;
         _loc1_.initialized(this,"icoGold");
         this.icoGold = _loc1_;
         BindingManager.executeBindings(this,"icoGold",this.icoGold);
         return _loc1_;
      }
      
      private final function _MainMenuBar_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite10b";
         _loc1_.text = "";
         _loc1_.id = "txGold";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txGold = _loc1_;
         BindingManager.executeBindings(this,"txGold",this.txGold);
         return _loc1_;
      }
      
      private final function _MainMenuBar_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "ico_pulldown";
         _loc1_.right = 5;
         _loc1_.bottom = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "ico_openwindow";
         _loc1_.right = 4;
         _loc1_.top = 4;
         _loc1_.id = "currencyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyButton = _loc1_;
         BindingManager.executeBindings(this,"currencyButton",this.currencyButton);
         return _loc1_;
      }
      
      private final function _MainMenuBar_BorderType11_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = -3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 28;
         _loc1_.left = 1;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 500;
         _loc1_.mxmlContent = [this._MainMenuBar_Rect3_c(),this._MainMenuBar_CurrencyPopup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.fill = this._MainMenuBar_SolidColor2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _MainMenuBar_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.7;
         return _loc1_;
      }
      
      private final function _MainMenuBar_CurrencyPopup1_i() : CurrencyPopup
      {
         var _loc1_:CurrencyPopup = new CurrencyPopup();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "currenciesList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currenciesList = _loc1_;
         BindingManager.executeBindings(this,"currenciesList",this.currenciesList);
         return _loc1_;
      }
      
      private final function _MainMenuBar_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.top = -2;
         _loc1_.mxmlContent = [this._MainMenuBar_HGroup4_c(),this._MainMenuBar_HGroup5_c(),this._MainMenuBar_HGroup6_c()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _MainMenuBar_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -3;
         _loc1_.mxmlContent = [this._MainMenuBar_MainMenuToggleButton1_i(),this._MainMenuBar_MainMenuDropdownButton1_i(),this._MainMenuBar_MainMenuDropdownButton2_i(),this._MainMenuBar_MainMenuDropdownButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_MainMenuToggleButton1_i() : MainMenuToggleButton
      {
         var _loc1_:MainMenuToggleButton = new MainMenuToggleButton();
         _loc1_.iconNameOn = "ico_chat";
         _loc1_.iconNameOff = "ico_chat_off";
         _loc1_.selected = true;
         _loc1_.addEventListener("change",this.__chat_change);
         _loc1_.id = "chat";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.chat = _loc1_;
         BindingManager.executeBindings(this,"chat",this.chat);
         return _loc1_;
      }
      
      public final function __chat_change(param1:Event) : void
      {
         dispatchEvent(new class_101(MainMenuButtonVo.BUTTON_CHAT));
      }
      
      private final function _MainMenuBar_MainMenuDropdownButton1_i() : MainMenuDropdownButton
      {
         var _loc1_:MainMenuDropdownButton = new MainMenuDropdownButton();
         _loc1_.iconName = "ico_social";
         _loc1_.id = "socials";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.socials = _loc1_;
         BindingManager.executeBindings(this,"socials",this.socials);
         return _loc1_;
      }
      
      private final function _MainMenuBar_MainMenuDropdownButton2_i() : MainMenuDropdownButton
      {
         var _loc1_:MainMenuDropdownButton = new MainMenuDropdownButton();
         _loc1_.iconName = "ico_navigate";
         _loc1_.id = "safehaven";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.safehaven = _loc1_;
         BindingManager.executeBindings(this,"safehaven",this.safehaven);
         return _loc1_;
      }
      
      private final function _MainMenuBar_MainMenuDropdownButton3_i() : MainMenuDropdownButton
      {
         var _loc1_:MainMenuDropdownButton = new MainMenuDropdownButton();
         _loc1_.iconName = "ico_event";
         _loc1_.id = "event";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.event = _loc1_;
         BindingManager.executeBindings(this,"event",this.event);
         return _loc1_;
      }
      
      private final function _MainMenuBar_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.paddingLeft = 15;
         _loc1_.paddingRight = 15;
         _loc1_.paddingTop = 12;
         _loc1_.filters = [this._MainMenuBar_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._MainMenuBar_Label3_i(),this._MainMenuBar_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 2;
         _loc1_.angle = 90;
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private final function _MainMenuBar_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite11Bold";
         _loc1_.id = "mapName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mapName = _loc1_;
         BindingManager.executeBindings(this,"mapName",this.mapName);
         return _loc1_;
      }
      
      private final function _MainMenuBar_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 38;
         _loc1_.mxmlContent = [this._MainMenuBar_Label4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite11Bold";
         _loc1_.id = "mapPosition";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mapPosition = _loc1_;
         BindingManager.executeBindings(this,"mapPosition",this.mapPosition);
         return _loc1_;
      }
      
      private final function _MainMenuBar_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -3;
         _loc1_.mxmlContent = [this._MainMenuBar_MainMenuDropdownButton4_i(),this._MainMenuBar_MainMenuButton1_i(),this._MainMenuBar_MainMenuButton2_i(),this._MainMenuBar_MainMenuButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MainMenuBar_MainMenuDropdownButton4_i() : MainMenuDropdownButton
      {
         var _loc1_:MainMenuDropdownButton = new MainMenuDropdownButton();
         _loc1_.iconName = "ico_ship";
         _loc1_.id = "ship";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ship = _loc1_;
         BindingManager.executeBindings(this,"ship",this.ship);
         return _loc1_;
      }
      
      private final function _MainMenuBar_MainMenuButton1_i() : MainMenuButton
      {
         var _loc1_:MainMenuButton = new MainMenuButton();
         _loc1_.iconName = "ico_boarding";
         _loc1_.addEventListener("click",this.__boarding_click);
         _loc1_.id = "boarding";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boarding = _loc1_;
         BindingManager.executeBindings(this,"boarding",this.boarding);
         return _loc1_;
      }
      
      public final function __boarding_click(param1:MouseEvent) : void
      {
         dispatchEvent(new class_101(MainMenuButtonVo.BUTTON_BOARDING));
      }
      
      private final function _MainMenuBar_MainMenuButton2_i() : MainMenuButton
      {
         var _loc1_:MainMenuButton = new MainMenuButton();
         _loc1_.iconName = "ico_quest";
         _loc1_.addEventListener("click",this.__quests_click);
         _loc1_.id = "quests";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.quests = _loc1_;
         BindingManager.executeBindings(this,"quests",this.quests);
         return _loc1_;
      }
      
      public final function __quests_click(param1:MouseEvent) : void
      {
         dispatchEvent(new class_101(MainMenuButtonVo.BUTTON_QUESTS));
      }
      
      private final function _MainMenuBar_MainMenuButton3_i() : MainMenuButton
      {
         var _loc1_:MainMenuButton = new MainMenuButton();
         _loc1_.iconName = "ico_options";
         _loc1_.addEventListener("click",this.__options_click);
         _loc1_.id = "options";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.options = _loc1_;
         BindingManager.executeBindings(this,"options",this.options);
         return _loc1_;
      }
      
      public final function __options_click(param1:MouseEvent) : void
      {
         dispatchEvent(new class_101(MainMenuButtonVo.BUTTON_OPTIONS));
      }
      
      private final function _MainMenuBar_MainMenuButton4_i() : MainMenuButton
      {
         var _loc1_:MainMenuButton = new MainMenuButton();
         _loc1_.iconName = "ico_logout";
         _loc1_.right = 10;
         _loc1_.top = -2;
         _loc1_.addEventListener("click",this.__logout_click);
         _loc1_.id = "logout";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.logout = _loc1_;
         BindingManager.executeBindings(this,"logout",this.logout);
         return _loc1_;
      }
      
      public final function __logout_click(param1:MouseEvent) : void
      {
         dispatchEvent(new class_101(MainMenuButtonVo.BUTTON_LOGOUT));
      }
      
      [Bindable(event="propertyChange")]
      public function get account() : VGroup
      {
         return this._1177318867account;
      }
      
      public function set account(param1:VGroup) : void
      {
         var _loc2_:Object = this._1177318867account;
         if(_loc2_ !== param1)
         {
            this._1177318867account = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"account",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boarding() : MainMenuButton
      {
         return this._1610774332boarding;
      }
      
      public function set boarding(param1:MainMenuButton) : void
      {
         var _loc2_:Object = this._1610774332boarding;
         if(_loc2_ !== param1)
         {
            this._1610774332boarding = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boarding",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chat() : MainMenuToggleButton
      {
         return this._3052376chat;
      }
      
      public function set chat(param1:MainMenuToggleButton) : void
      {
         var _loc2_:Object = this._3052376chat;
         if(_loc2_ !== param1)
         {
            this._3052376chat = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chat",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : HGroup
      {
         return this._951530617content;
      }
      
      public function set content(param1:HGroup) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencies() : Group
      {
         return this._1089470353currencies;
      }
      
      public function set currencies(param1:Group) : void
      {
         var _loc2_:Object = this._1089470353currencies;
         if(_loc2_ !== param1)
         {
            this._1089470353currencies = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencies",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currenciesClickArea() : Group
      {
         return this._554775174currenciesClickArea;
      }
      
      public function set currenciesClickArea(param1:Group) : void
      {
         var _loc2_:Object = this._554775174currenciesClickArea;
         if(_loc2_ !== param1)
         {
            this._554775174currenciesClickArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currenciesClickArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currenciesList() : CurrencyPopup
      {
         return this._1118808659currenciesList;
      }
      
      public function set currenciesList(param1:CurrencyPopup) : void
      {
         var _loc2_:Object = this._1118808659currenciesList;
         if(_loc2_ !== param1)
         {
            this._1118808659currenciesList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currenciesList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyButton() : BriskImageDynaLib
      {
         return this._802622813currencyButton;
      }
      
      public function set currencyButton(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._802622813currencyButton;
         if(_loc2_ !== param1)
         {
            this._802622813currencyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get event() : MainMenuDropdownButton
      {
         return this._96891546event;
      }
      
      public function set event(param1:MainMenuDropdownButton) : void
      {
         var _loc2_:Object = this._96891546event;
         if(_loc2_ !== param1)
         {
            this._96891546event = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"event",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icoGold() : BitmapImage
      {
         return this._1637628053icoGold;
      }
      
      public function set icoGold(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._1637628053icoGold;
         if(_loc2_ !== param1)
         {
            this._1637628053icoGold = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icoGold",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icoPearls() : BitmapImage
      {
         return this._2050644962icoPearls;
      }
      
      public function set icoPearls(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._2050644962icoPearls;
         if(_loc2_ !== param1)
         {
            this._2050644962icoPearls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icoPearls",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logout() : MainMenuButton
      {
         return this._1097329270logout;
      }
      
      public function set logout(param1:MainMenuButton) : void
      {
         var _loc2_:Object = this._1097329270logout;
         if(_loc2_ !== param1)
         {
            this._1097329270logout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logout",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mapName() : Label
      {
         return this._836535815mapName;
      }
      
      public function set mapName(param1:Label) : void
      {
         var _loc2_:Object = this._836535815mapName;
         if(_loc2_ !== param1)
         {
            this._836535815mapName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mapName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mapPosition() : Label
      {
         return this._59868837mapPosition;
      }
      
      public function set mapPosition(param1:Label) : void
      {
         var _loc2_:Object = this._59868837mapPosition;
         if(_loc2_ !== param1)
         {
            this._59868837mapPosition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mapPosition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get options() : MainMenuButton
      {
         return this._1249474914options;
      }
      
      public function set options(param1:MainMenuButton) : void
      {
         var _loc2_:Object = this._1249474914options;
         if(_loc2_ !== param1)
         {
            this._1249474914options = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"options",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quests() : MainMenuButton
      {
         return this._948698159quests;
      }
      
      public function set quests(param1:MainMenuButton) : void
      {
         var _loc2_:Object = this._948698159quests;
         if(_loc2_ !== param1)
         {
            this._948698159quests = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quests",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get safehaven() : MainMenuDropdownButton
      {
         return this._1123263335safehaven;
      }
      
      public function set safehaven(param1:MainMenuDropdownButton) : void
      {
         var _loc2_:Object = this._1123263335safehaven;
         if(_loc2_ !== param1)
         {
            this._1123263335safehaven = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"safehaven",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ship() : MainMenuDropdownButton
      {
         return this._3529276ship;
      }
      
      public function set ship(param1:MainMenuDropdownButton) : void
      {
         var _loc2_:Object = this._3529276ship;
         if(_loc2_ !== param1)
         {
            this._3529276ship = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ship",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get socials() : MainMenuDropdownButton
      {
         return this._2038770010socials;
      }
      
      public function set socials(param1:MainMenuDropdownButton) : void
      {
         var _loc2_:Object = this._2038770010socials;
         if(_loc2_ !== param1)
         {
            this._2038770010socials = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"socials",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txGold() : Label
      {
         return this._860937980txGold;
      }
      
      public function set txGold(param1:Label) : void
      {
         var _loc2_:Object = this._860937980txGold;
         if(_loc2_ !== param1)
         {
            this._860937980txGold = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txGold",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txPearls() : Label
      {
         return this._1815405713txPearls;
      }
      
      public function set txPearls(param1:Label) : void
      {
         var _loc2_:Object = this._1815405713txPearls;
         if(_loc2_ !== param1)
         {
            this._1815405713txPearls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txPearls",_loc2_,param1));
            }
         }
      }
   }
}
