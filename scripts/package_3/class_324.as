package package_3
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.BoardingLogListItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.tabs.MateysMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.managers.PopUpManager;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_102.class_359;
   import package_103.class_367;
   import package_104.class_628;
   import package_121.class_841;
   import package_136.class_509;
   import package_136.class_533;
   import package_136.class_926;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_16.class_193;
   import package_17.class_151;
   import package_17.class_325;
   import package_17.class_537;
   import package_17.class_54;
   import package_170.class_979;
   import package_173.class_1236;
   import package_184.class_1135;
   import package_20.class_33;
   import package_202.class_1238;
   import package_30.class_1013;
   import package_39.class_1366;
   import package_41.class_84;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_214;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_1015;
   import package_51.class_1355;
   import package_51.class_148;
   import package_52.class_167;
   import package_52.class_168;
   import package_52.class_306;
   import package_53.class_157;
   import package_54.class_162;
   import package_54.class_163;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_1240;
   import package_9.class_76;
   import package_90.class_316;
   import package_91.class_450;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.filters.DropShadowFilter;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_324 extends class_10
   {
       
      
      private var var_2286:class_193;
      
      public function class_324()
      {
         super();
         class_368.name_3.addEventListener(class_223.const_860,this.method_1076,false,-10);
         class_368.name_3.addEventListener(class_223.const_581,this.method_2297);
         CentralEventUnit.addEventListener(class_223.const_1022,this.method_550);
         CentralEventUnit.addEventListener(class_325.const_391,this.method_2150);
         method_23(class_450.name_3,this.method_2367);
         method_23(class_367.name_3,this.method_2132);
         method_23(class_533.name_3,this.method_2389);
         method_23(class_509.name_3,this.method_2570);
         this.var_2286 = class_33.name_12.method_441;
      }
      
      public static function method_1803(param1:int, param2:int) : void
      {
         var _loc6_:class_155 = null;
         var _loc8_:Array = null;
         var _loc9_:class_163 = null;
         var _loc3_:class_306 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_23) as class_306;
         var _loc4_:class_319 = _loc3_.method_356(param1) as class_319;
         var _loc5_:Vector.<class_155> = class_47.method_24.var_12.quickBelt;
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.length)
         {
            _loc6_ = _loc5_[_loc7_];
            _loc8_ = _loc6_.method_733(param1);
            _loc4_.method_1081(param2);
            for each(_loc9_ in _loc8_)
            {
               _loc9_.method_1081(param2);
            }
            _loc7_++;
         }
      }
      
      private final function method_2367(param1:class_14) : void
      {
         var _loc2_:class_450 = param1 as class_450;
         if(!class_177.method_52(_loc2_.var_52,class_51.var_21) && !class_177.method_52(_loc2_.var_251,class_51.var_21))
         {
            return;
         }
         var _loc3_:int = _loc2_.var_58;
         var _loc4_:Boolean = false;
         if(_loc3_ == class_450.const_958 || _loc3_ == class_450.const_398)
         {
            if(class_177.method_52(_loc2_.var_251,class_47.method_29.method_56.name_4))
            {
               _loc4_ = true;
            }
         }
         if(_loc3_ == class_450.const_1094 || _loc3_ == class_450.const_398)
         {
            if(class_177.method_52(_loc2_.var_52,class_47.method_29.method_56.name_4))
            {
               _loc4_ = true;
            }
         }
         if(_loc4_)
         {
            this.method_1076();
         }
      }
      
      private final function method_2297(param1:class_223) : void
      {
         this.method_100(class_368.name_9[param1.name_7] as class_317);
         class_47.method_72.method_366();
      }
      
      private final function method_2389(param1:class_14) : void
      {
         var _loc4_:class_926 = null;
         var _loc2_:class_533 = param1 as class_533;
         var _loc3_:Vector.<class_926> = _loc2_.var_256;
         for each(_loc4_ in _loc3_)
         {
            class_1240.name_3.method_493(_loc4_);
            this.method_1123(_loc4_);
         }
      }
      
      private final function method_2570(param1:class_14) : void
      {
         var _loc2_:class_509 = param1 as class_509;
         var _loc3_:class_150 = class_47.method_24.var_12.actionsBar;
         var _loc4_:class_926 = _loc2_.var_1110;
         class_1240.name_3.method_493(_loc4_);
         if(_loc4_.var_261 == class_1239.const_1253)
         {
            this.var_2286.method_2790(_loc2_);
            this.method_634(_loc3_.method_69(class_150.const_786),_loc4_.var_510,_loc4_.var_71);
            this.method_634(_loc3_.method_69(class_150.const_868),_loc4_.var_510,_loc4_.var_71);
         }
         else
         {
            this.method_1123(_loc4_);
         }
      }
      
      private final function method_1123(param1:class_926) : void
      {
         var _loc3_:class_317 = null;
         var _loc2_:Array = class_368.name_9;
         for each(_loc3_ in _loc2_)
         {
            if(param1.var_261 > 0)
            {
               if(_loc3_.var_315 == param1.var_261)
               {
                  this.method_1390(_loc3_,param1);
               }
               if(_loc3_.var_307 == param1.var_261)
               {
                  this.method_1390(_loc3_,param1);
               }
            }
         }
      }
      
      private final function method_1076(param1:class_223 = null) : void
      {
         var _loc3_:class_317 = null;
         var _loc2_:Array = class_368.name_9;
         for each(_loc3_ in _loc2_)
         {
            this.method_100(_loc3_);
         }
         class_47.method_72.method_600();
      }
      
      protected final function method_100(param1:class_317) : void
      {
         var _loc2_:class_167 = null;
         var _loc3_:class_319 = null;
         switch(param1.var_13)
         {
            case class_317.const_729:
            case class_317.const_824:
            case class_317.const_199:
               _loc2_ = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_26);
               _loc3_ = _loc2_.method_356(param1.var_13) as class_319;
               if(_loc3_)
               {
                  _loc3_.method_888(param1.name_54,param1.name_51);
               }
               class_151.method_21().method_481();
               break;
            case class_317.const_1174:
               if(param1.var_353)
               {
                  class_537.method_21();
                  break;
               }
               class_537.method_21().method_992();
               break;
            case class_317.const_690:
               _loc2_ = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_23);
               _loc3_ = _loc2_.method_356(param1.var_13) as class_319;
               _loc3_.method_70(param1.var_353);
         }
      }
      
      private final function method_1390(param1:class_317, param2:class_926) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param1.var_13;
         var _loc4_:int = class_317.method_1712(_loc3_);
         var _loc5_:class_167 = class_47.method_24.var_12.subMenuContainer.getMenu(_loc4_);
         var _loc6_:class_319 = _loc5_.method_356(_loc3_) as class_319;
         param1.method_1714(param2.name_54,param2.name_51);
         _loc6_.method_888(param1.name_54,param1.name_51);
         _loc6_.method_70(false);
         this.method_634(_loc6_,param2.var_510,param2.var_71,3,2);
         this.method_550(null,_loc3_,_loc4_);
      }
      
      private final function method_550(param1:class_223, param2:int = -1, param3:int = -1) : void
      {
         var _loc9_:class_155 = null;
         var _loc11_:class_1236 = null;
         var _loc12_:Array = null;
         var _loc13_:class_163 = null;
         var _loc14_:int = 0;
         if(param3 < 0)
         {
            this.method_550(param1,param2,class_214.const_26);
            this.method_550(param1,param2,class_214.const_23);
            return;
         }
         if(param1)
         {
            param2 = param1.name_7;
         }
         if(param2 < 0)
         {
            throw new Error("Invalid ID to update on quick Belt: " + param2);
         }
         var _loc4_:class_167 = class_47.method_24.var_12.subMenuContainer.getMenu(param3);
         var _loc5_:class_319 = _loc4_.method_356(param2) as class_319;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(_loc5_.method_350)
         {
            _loc11_ = _loc5_.getChildByName(class_1236.name_67) as class_1236;
            _loc6_ = _loc11_.name_50;
            _loc7_ = _loc11_.method_1735;
         }
         var _loc8_:Vector.<class_155> = class_47.method_24.var_12.quickBelt;
         var _loc10_:int = 0;
         while(_loc10_ < _loc8_.length)
         {
            _loc9_ = _loc8_[_loc10_];
            _loc12_ = _loc9_.method_733(param2);
            for each(_loc13_ in _loc12_)
            {
               _loc13_.method_70(_loc5_.method_747);
               _loc13_.method_888(_loc5_.method_1212(),_loc5_.method_1323());
               _loc14_ = !!_loc13_.method_58()?int(_loc13_.method_58().var_1295):0;
               if(_loc14_ == class_206.const_218 || _loc14_ == class_206.const_26)
               {
                  this.method_634(_loc13_,_loc6_,_loc7_);
               }
            }
            _loc10_++;
         }
      }
      
      protected final function method_634(param1:class_162, param2:int, param3:int, param4:int = 0, param5:int = 0) : void
      {
         var coolDownEffect:class_1236 = null;
         var btn:class_162 = param1;
         var timeLeft:int = param2;
         var timeTotal:int = param3;
         var posX:int = param4;
         var posY:int = param5;
         btn.method_538();
         if(timeLeft <= 0 || timeTotal <= 0)
         {
            return;
         }
         coolDownEffect = new class_1236(btn as class_157,btn.method_135.width,btn.method_135.height);
         coolDownEffect.x = posX;
         coolDownEffect.y = posY;
         btn.addEventListener(class_1015.const_568,function(param1:class_1015):void
         {
            if(coolDownEffect && coolDownEffect.parent)
            {
               btn.removeChild(coolDownEffect);
            }
            coolDownEffect.method_71();
            btn.removeEventListener(class_1015.const_568,arguments["callee"]);
         });
         btn.addChild(coolDownEffect);
         var stacking:Boolean = btn.method_1323() > 0 && btn.method_1212() > 0;
         if(stacking)
         {
            coolDownEffect.method_2619(timeLeft,timeTotal);
         }
         else
         {
            coolDownEffect.method_66(timeLeft,timeTotal);
         }
      }
      
      protected final function method_2150(param1:Event) : void
      {
         var _loc3_:class_316 = null;
         var _loc4_:int = 0;
         var _loc5_:class_319 = null;
         var _loc6_:Vector.<class_155> = null;
         var _loc7_:int = 0;
         var _loc8_:class_155 = null;
         var _loc9_:Array = null;
         var _loc10_:class_163 = null;
         var _loc2_:class_306 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_23) as class_306;
         for each(_loc3_ in class_368.name_9)
         {
            _loc4_ = _loc3_.var_13;
            _loc5_ = _loc2_.method_356(_loc4_) as class_319;
            if(_loc5_ != null)
            {
               _loc5_.method_538();
            }
            _loc6_ = class_47.method_24.var_12.quickBelt;
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc8_ = _loc6_[_loc7_];
               _loc9_ = _loc8_.method_733(_loc4_);
               for each(_loc10_ in _loc9_)
               {
                  _loc10_.method_538();
               }
               _loc7_++;
            }
         }
      }
      
      protected final function method_2132(param1:class_14) : void
      {
         var _loc2_:class_367 = param1 as class_367;
         var _loc3_:class_1235 = new class_1235();
         _loc3_.var_408 = _loc2_.var_59;
         _loc3_.var_389 = _loc2_.var_330;
         _loc3_.var_168 = _loc2_.var_132;
         class_1238.method_763(_loc3_);
      }
   }
}
