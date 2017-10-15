package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenu;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.bit101.components.SeafightTextPanel;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_47;
   import package_140.class_540;
   import package_170.class_979;
   import package_181.class_1081;
   import package_26.class_1086;
   import package_29.class_57;
   import package_41.class_93;
   import package_46.class_1356;
   import package_5.class_123;
   import package_5.class_214;
   import package_51.class_1082;
   import package_52.class_1083;
   import package_52.class_1084;
   import package_52.class_1085;
   import package_52.class_1087;
   import package_52.class_167;
   import package_52.class_168;
   import package_52.class_213;
   import package_52.class_303;
   import package_52.class_306;
   import package_52.class_309;
   import package_52.class_312;
   import package_52.class_313;
   import package_52.class_314;
   import package_52.class_327;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   
   public final class SubMenuContainer extends Sprite
   {
      
      private static const LOG:ILogger = Log.getLogger("SubMenuContainer");
       
      
      private var _swfFin:SWFFinisher;
      
      private var _configXML:XML;
      
      private var _styleSheet:StyleSheet;
      
      private var _ui:UserInterface;
      
      private var _subMenuArr:Array;
      
      private var _cannonBallMenu:class_1087;
      
      private var _harpoonMenu:class_1085;
      
      private var _voodooMenu:class_1083;
      
      private var _actItmMenu:class_306;
      
      private var _actionItemBuyMenu:class_309;
      
      private var _inventoryMenu:class_1084;
      
      private var _inventoryBuyMenu:class_303;
      
      private var _optionsMenu:class_168;
      
      private var _fireworksMenu:class_313;
      
      private var _cannonBallBuyMenu:class_314;
      
      private var _harpoonBuyMenu:class_312;
      
      private var _fireworkBuyMenu:class_327;
      
      private var _gameActivityMenu:GameActivityMenu;
      
      private var _compConfigMenu:class_213;
      
      private var _characterMenu:class_1081;
      
      public function SubMenuContainer(param1:UserInterface)
      {
         super();
         LOG.info("CONSTRUCTING");
         this._ui = param1;
         this.init();
         CentralEventUnit.addEventListener(class_1082.const_1602,this.onOpenQuickBuyEvent);
      }
      
      public static function bringToTop() : void
      {
      }
      
      public final function switchMenu(param1:int, param2:Boolean = false) : void
      {
         this;
         SubMenuContainer.bringToTop();
         switch(param1)
         {
            case class_214.const_72:
               class_47.method_24.var_12.subMenuContainer.ensureSubmenueBtn(class_1084);
               this.switchSubMenuVisible(class_150.const_319,"inventoryMenu","_inventoryMenu",class_1084,param2);
               break;
            case class_214.const_229:
               this.switchSubMenuVisible("","inventoryBuyMenu","_inventoryBuyMenu",class_303,param2,true);
               break;
            case class_214.const_69:
               this.switchSubMenuVisible(class_150.const_109,"cannonBallsMenu","_cannonBallMenu",class_1087,param2);
               break;
            case class_214.const_149:
               this.switchSubMenuVisible("","cannonBallBuyMenu","_cannonBallBuyMenu",class_314,param2,true);
               break;
            case class_214.const_17:
               this.switchSubMenuVisible(class_150.const_113,"harpoonsMenu","_harpoonMenu",class_1085,param2);
               break;
            case class_214.const_135:
               this.switchSubMenuVisible("","harpoonBuyMenu","_harpoonBuyMenu",class_312,param2,true);
               break;
            case class_214.const_38:
               this.switchSubMenuVisible(class_150.const_261,"voodooMenu","_voodooMenu",class_1083,param2);
               break;
            case class_214.const_23:
               this.switchSubMenuVisible(class_150.const_128,"actionItemMenu","_actItmMenu",class_306,param2);
               break;
            case class_214.const_147:
               this.switchSubMenuVisible("","actionItemBuyMenu","_actionItemBuyMenu",class_309,param2,true);
               break;
            case class_214.const_26:
               this.switchSubMenuVisible(class_150.const_124,"fireworksMenu","_fireworksMenu",class_313,param2);
               break;
            case class_214.const_132:
               this.switchSubMenuVisible("","fireworkBuyMenu","_fireworkBuyMenu",class_327,param2,true);
               break;
            case class_214.const_75:
               this.switchSubMenuVisible("","gameActivityMenu","_gameActivityMenu",GameActivityMenu,param2,true);
               break;
            case class_214.const_160:
               this.switchSubMenuVisible("","compConfigMenu","_compConfigMenu",class_213,param2,true);
               break;
            case class_214.const_101:
               this.switchSubMenuVisible("","characterMenu","_characterMenu",class_1081,param2,true);
               this._characterMenu.method_1029();
               break;
            default:
               throw new class_57(param1,this);
         }
      }
      
      public final function switchSubMenu(param1:String, param2:Boolean = false) : void
      {
         this;
         SubMenuContainer.bringToTop();
         switch(param1)
         {
            case "options":
               this.switchOptionsMenu(param2);
               break;
            case "all":
               this.switchAllSubmenus(param2);
         }
      }
      
      public final function getMenu(param1:int) : class_167
      {
         var _loc2_:class_167 = null;
         switch(param1)
         {
            case class_214.const_252:
               _loc2_ = this._optionsMenu;
               break;
            case class_214.const_72:
               _loc2_ = this._inventoryMenu;
               break;
            case class_214.const_229:
               _loc2_ = this._inventoryBuyMenu;
               break;
            case class_214.const_69:
               _loc2_ = this._cannonBallMenu;
               break;
            case class_214.const_149:
               _loc2_ = this._cannonBallBuyMenu;
               break;
            case class_214.const_17:
               _loc2_ = this._harpoonMenu;
               break;
            case class_214.const_135:
               _loc2_ = this._harpoonBuyMenu;
               break;
            case class_214.const_38:
               _loc2_ = this._voodooMenu;
               break;
            case class_214.const_23:
               _loc2_ = this._actItmMenu;
               break;
            case class_214.const_147:
               _loc2_ = this._actionItemBuyMenu;
               break;
            case class_214.const_26:
               _loc2_ = this._fireworksMenu;
               break;
            case class_214.const_132:
               _loc2_ = this._fireworkBuyMenu;
               break;
            case class_214.const_75:
               _loc2_ = this._gameActivityMenu;
               break;
            case class_214.const_160:
               _loc2_ = this._compConfigMenu;
               break;
            case class_214.const_101:
               _loc2_ = this._characterMenu;
               break;
            default:
               throw new class_57(param1,this);
         }
         return _loc2_;
      }
      
      public final function getSubMenuByName(param1:String) : class_167
      {
         var _loc2_:class_167 = null;
         switch(param1)
         {
            case "options":
               _loc2_ = this._optionsMenu;
         }
         return _loc2_;
      }
      
      public final function ensureSubmenueBtn(param1:Class) : void
      {
         if(this._inventoryMenu && this._inventoryMenu is param1)
         {
            this._inventoryMenu.method_91();
         }
      }
      
      public final function placeSubMenBtn() : void
      {
         if(this._cannonBallMenu != null)
         {
            this._cannonBallMenu.method_91();
         }
         if(this._cannonBallBuyMenu != null)
         {
            this._cannonBallBuyMenu.method_91();
         }
         if(this._harpoonMenu != null)
         {
            this._harpoonMenu.method_91();
         }
         if(this._harpoonBuyMenu != null)
         {
            this._harpoonBuyMenu.method_91();
         }
         if(this._voodooMenu != null)
         {
            this._voodooMenu.method_91();
         }
         if(this._actItmMenu != null)
         {
            this._actItmMenu.method_91();
         }
         if(this._inventoryMenu != null)
         {
            this._inventoryMenu.method_91();
         }
         if(this._optionsMenu != null)
         {
            this._optionsMenu.method_91();
         }
         if(this._fireworksMenu != null)
         {
            this._fireworksMenu.method_91();
         }
         if(this._fireworkBuyMenu != null)
         {
            this._fireworkBuyMenu.method_91();
         }
         if(this._actionItemBuyMenu != null)
         {
            this._actionItemBuyMenu.method_91();
         }
      }
      
      public function get optionsMenu() : class_168
      {
         return this._optionsMenu;
      }
      
      private final function init() : void
      {
         this._swfFin = getSWFFinisher(class_123.const_21);
         this._configXML = this._ui.getUIConfig()["subMenuContainer"][0];
         this._styleSheet = this._ui.getStyleSheet();
         this._subMenuArr = new Array();
         class_47.method_24.method_39.addEventListener(MouseEvent.CLICK,this.stageClickHandler);
         CentralEventUnit.addEventListener(class_1086.const_954,this.onPhpRequestProgress);
         CentralEventUnit.addEventListener(class_1086.const_984,this.onPhpRequestComplete);
         CentralEventUnit.addEventListener(class_1086.const_1327,this.onPhpRequestComplete);
         CentralEventUnit.addEventListener(class_1086.const_1060,this.onPhpRequestComplete);
      }
      
      private final function onOpenQuickBuyEvent(param1:class_1082) : void
      {
         this.switchMenu(param1.method_1768);
      }
      
      private final function onPhpRequestProgress(param1:class_1086) : void
      {
         if(param1.method_1166 != class_1086.const_430)
         {
            return;
         }
         this._cannonBallMenu.method_244().name_26 = false;
         this._harpoonMenu.method_244().name_26 = false;
         this._fireworksMenu.method_244().name_26 = false;
         this._actItmMenu.method_244().name_26 = false;
         this._inventoryMenu.method_244().name_26 = false;
      }
      
      private final function onPhpRequestComplete(param1:class_1086) : void
      {
         if(param1.method_1166 != class_1086.const_430)
         {
            return;
         }
         this._cannonBallMenu.method_244().name_26 = true;
         this._harpoonMenu.method_244().name_26 = true;
         this._fireworksMenu.method_244().name_26 = true;
         this._actItmMenu.method_244().name_26 = true;
         this._inventoryMenu.method_244().name_26 = true;
      }
      
      private final function stageClickHandler(param1:Event) : void
      {
         var _loc2_:class_150 = class_47.method_24.var_12.actionsBar;
         _loc2_.method_69(class_150.const_109).method_70(false);
         _loc2_.method_69(class_150.const_113).method_70(false);
         _loc2_.method_69(class_150.const_261).method_70(false);
         _loc2_.method_69(class_150.const_128).method_70(false);
         _loc2_.method_69(class_150.const_319).method_70(false);
         _loc2_.method_69(class_150.const_124).method_70(false);
         this.switchAllSubmenus();
      }
      
      private final function switchOptionsMenu(param1:Boolean = false) : void
      {
         if(this._optionsMenu)
         {
            this._optionsMenu.method_77();
         }
         this.switchSubMenuVisible("optionsMenu","optionsMenu","_optionsMenu",class_168,param1,true);
      }
      
      private final function switchSubMenuVisible(param1:String, param2:String, param3:String, param4:Class, param5:Boolean = false, param6:Boolean = false) : void
      {
         var subMenu:class_167 = null;
         var btnID:String = param1;
         var idXML:String = param2;
         var subMenuId:String = param3;
         var subMenuClass:Class = param4;
         var invisible:Boolean = param5;
         var placeOnCenter:Boolean = param6;
         this.switchAllSubmenus();
         try
         {
            subMenu = this[subMenuId];
         }
         catch(e:Error)
         {
            LOG.error("ERROR PROBABLY JUST ADD SUBEMNUID TO IRRFUSCATOR IGNORELIST " + e);
         }
         var oldVisibleStatus:Boolean = false;
         if(subMenu)
         {
            oldVisibleStatus = subMenu.method_273();
            if(subMenu.method_751 || subMenu.method_440)
            {
               subMenu.method_132(true);
            }
            else if(invisible)
            {
               subMenu.method_132(false);
            }
            else
            {
               subMenu.method_132(!subMenu.method_273());
               if(placeOnCenter)
               {
                  subMenu.placeOnCenter();
               }
               else
               {
                  subMenu.method_1107(btnID);
               }
            }
         }
         else
         {
            subMenu = this.createSubmenu(subMenuId,btnID,idXML,subMenuClass,placeOnCenter,invisible);
         }
      }
      
      public final function resetAllSubmenus() : void
      {
         var _loc3_:class_167 = null;
         var _loc1_:int = this._subMenuArr.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this._subMenuArr[_loc2_] as class_167;
            if(_loc3_ != this._gameActivityMenu && _loc3_ != this._compConfigMenu)
            {
               _loc3_.method_941();
            }
            _loc2_++;
         }
      }
      
      public final function getSubmenues() : Array
      {
         var _loc4_:class_167 = null;
         var _loc1_:Array = [];
         var _loc2_:int = this._subMenuArr.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._subMenuArr[_loc3_] as class_167;
            if(_loc4_ != this._gameActivityMenu && _loc4_ != this._compConfigMenu)
            {
               _loc1_.push(_loc4_);
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      private final function switchAllSubmenus(param1:Boolean = false) : void
      {
         var _loc3_:class_167 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._subMenuArr.length)
         {
            _loc3_ = this._subMenuArr[_loc2_] as class_167;
            if(!(_loc3_.method_751 || _loc3_.method_440))
            {
               if(_loc3_ != this._gameActivityMenu)
               {
                  _loc3_.method_132(param1);
               }
            }
            _loc2_++;
         }
      }
      
      private final function createSubmenu(param1:String, param2:String, param3:String, param4:Class, param5:Boolean, param6:Boolean) : class_167
      {
         var _loc7_:XML = this._configXML[param3][0];
         var _loc8_:class_167 = this[param1] = new param4();
         _loc8_.init(_loc7_,this._styleSheet,this._swfFin,this._ui);
         _loc8_.method_132(!param6);
         if(_loc8_ == this._characterMenu)
         {
            class_47.method_49.addChild(_loc8_);
            this._subMenuArr.push(_loc8_);
         }
         else
         {
            this._subMenuArr.push(addChild(_loc8_));
         }
         if(param5)
         {
            _loc8_.placeOnCenter();
         }
         else
         {
            _loc8_.method_1107(param2);
         }
         return _loc8_;
      }
   }
}
