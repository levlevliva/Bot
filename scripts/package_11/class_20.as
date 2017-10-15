package package_11
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.event.modules.faction.getFactionTeamName;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_790;
   import package_13.class_23;
   import package_14.class_118;
   import package_14.class_1535;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_141.class_804;
   import package_166.class_1502;
   import package_17.class_151;
   import package_17.class_537;
   import package_17.class_54;
   import package_171.class_1270;
   import package_29.class_57;
   import package_32.class_64;
   import package_34.class_115;
   import package_34.class_1499;
   import package_41.class_84;
   import package_42.class_959;
   import package_46.class_1455;
   import package_47.class_124;
   import package_47.class_128;
   import package_47.class_129;
   import package_47.class_134;
   import package_47.class_135;
   import package_47.class_136;
   import package_48.class_126;
   import package_48.class_132;
   import package_48.class_138;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_1012;
   import package_5.class_1050;
   import package_5.class_133;
   import package_5.class_139;
   import package_5.class_214;
   import package_5.class_22;
   import package_50.class_141;
   import package_51.class_148;
   import package_52.class_167;
   import package_54.class_161;
   import package_54.class_319;
   import package_58.class_175;
   import package_69.class_978;
   import package_72.class_1442;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_1278;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   import spark.events.IndexChangeEvent;
   import spark.filters.GlowFilter;
   import spark.layouts.TileLayout;
   import spark.primitives.Rect;
   
   public final class class_20
   {
      
      private static const const_901:String = "%ITEMNAME%";
      
      private static const const_1317:String = "%BALLTYPE%";
      
      private static const const_204:String = "%NPCNAME%";
      
      private static const const_1636:String = "%EVENTTITLE%";
      
      private static const const_1489:String = "%TEAM%";
      
      private static const const_6:String = "%1";
      
      private static const const_324:String = "%AMOUNT%";
      
      private static const const_1222:String = "%MAPNAME%";
      
      private static const const_257:String = "%HARPOON%";
      
      private static const const_1187:String = "%MONSTERNAME%";
      
      private static const const_946:String = "%MAP%";
      
      private static const const_1510:String = "%SUPPLY%";
      
      private static const const_1810:String = "%MIN%";
      
      private static const const_1828:String = "%MAX%";
      
      private static const const_1905:String = "%QUESTTITLE%";
      
      private static const const_915:TextField = new TextField();
      
      private static const const_798:TextFormat = new TextFormat("Verdana",10);
      
      private static var name_55:class_20;
       
      
      private var var_934:class_23;
      
      private var var_2246:Array;
      
      public function class_20(param1:class_23)
      {
         super();
         this.var_934 = param1;
         const_915.defaultTextFormat = const_798;
         this.var_2246 = [];
         this.var_2246[0] = "";
      }
      
      public static function name_16(param1:class_23) : void
      {
         name_55 = new class_20(param1);
      }
      
      public static function get name_3() : class_20
      {
         return name_55;
      }
      
      public final function method_1357(param1:class_130, param2:int, param3:Boolean) : String
      {
         var _loc4_:class_129 = param1.method_413(param2);
         if(_loc4_.name_5 == class_134.const_560 || _loc4_.name_5 == class_134.const_556)
         {
            return this.method_2145(param1,_loc4_,param3);
         }
         return this.method_1163(_loc4_.name_5,_loc4_.name_17,_loc4_.name_18,param3);
      }
      
      public final function method_1858(param1:class_130, param2:int) : String
      {
         var _loc3_:class_136 = param1.method_2731(param2);
         return this.method_1163(_loc3_.name_5,class_124.const_903,_loc3_.name_18,true);
      }
      
      private final function method_1163(param1:int, param2:int, param3:Vector.<String>, param4:Boolean) : String
      {
         /*
          * Visszafordítási hiba
          * Időtúllépés (1 perc)
          * Utasítások száma: 5815
          */
         throw new flash.errors.IllegalOperationError("Időtúllépés miatt nem lett visszafordítva");
      }
      
      private final function method_2145(param1:class_130, param2:class_129, param3:Boolean) : String
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc4_:Vector.<String> = param2.name_18;
         var _loc5_:* = _loc4_[0] != "";
         var _loc6_:String = "";
         if(_loc5_)
         {
            _loc7_ = parseInt(_loc4_[0]);
            _loc8_ = parseInt(_loc4_[1]);
            _loc9_ = parseInt(_loc4_[2]);
         }
         if(param1.name_17 != class_128.const_78 && param1.name_17 != class_128.const_185)
         {
            if(this.method_2015(param1) == param2)
            {
               _loc6_ = class_47.method_22.method_28("questWindowMultiCoord");
               _loc10_ = this.method_1898(param1);
               _loc6_ = _loc6_.replace(const_324,_loc10_);
            }
         }
         else if(_loc5_)
         {
            _loc11_ = class_118.method_436(_loc7_,_loc8_);
            _loc12_ = _loc9_ > 0?class_139.method_27(_loc9_):class_47.method_51.method_2222();
            _loc6_ = class_47.method_22.method_28("taskReachGlobalPosition");
            _loc6_ = _loc6_.replace("%POSITIONX%",_loc11_[0]);
            _loc6_ = _loc6_.replace("%POSITIONY%",_loc11_[1]);
            _loc6_ = _loc6_.replace("%MAP%",_loc12_);
         }
         else
         {
            _loc6_ = class_47.method_22.method_28("questWindowMultiCoord");
            _loc6_ = _loc6_.replace(const_324,1);
         }
         return _loc6_;
      }
      
      private final function method_1898(param1:class_130) : int
      {
         var _loc5_:int = 0;
         var _loc2_:int = param1.var_90.length;
         var _loc3_:int = 0;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = param1.var_90[_loc4_].name_5;
            if(_loc5_ == class_134.const_560 || _loc5_ == class_134.const_556)
            {
               _loc3_++;
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      private final function method_2015(param1:class_130) : class_129
      {
         var _loc4_:class_129 = null;
         var _loc5_:int = 0;
         var _loc2_:int = param1.var_90.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.var_90[_loc3_];
            _loc5_ = _loc4_.name_5;
            if(_loc5_ == class_134.const_560 || _loc5_ == class_134.const_556)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private final function method_1134(param1:String, param2:class_126, param3:String) : String
      {
         var _loc4_:String = class_47.method_22.method_20("taskFinishMap");
         var _loc5_:Array = param3.split(",");
         var _loc6_:* = "";
         var _loc7_:int = _loc5_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc6_ = _loc6_ + class_47.method_37.method_32(param1,param2.method_27(parseInt(_loc5_[_loc8_])));
            if(_loc8_ < _loc7_ - 1)
            {
               _loc6_ = _loc6_ + ", ";
            }
            _loc8_++;
         }
         _loc4_ = _loc4_.replace(const_1222,_loc6_);
         return _loc4_;
      }
      
      public final function method_381(param1:class_130) : String
      {
         var _loc2_:String = null;
         if(param1.name_5 == class_135.const_219)
         {
            _loc2_ = class_47.method_22.method_20("pirateExamHeadline").replace("%LEVEL%",param1.name_10 + 1);
         }
         else
         {
            _loc2_ = this.var_934.method_381(param1.name_7);
         }
         return _loc2_;
      }
      
      public final function method_2167(param1:int) : String
      {
         var _loc2_:String = this.var_934.method_381(param1);
         return _loc2_;
      }
      
      public final function method_2603(param1:class_130) : String
      {
         return this.var_934.method_2114(param1.name_7);
      }
      
      public final function method_1373(param1:class_130) : String
      {
         var _loc2_:* = null;
         var _loc3_:class_137 = null;
         if(param1.name_5 == class_135.const_219)
         {
            _loc2_ = this.var_934.method_1373(param1.name_7) + "\n\n";
         }
         else
         {
            _loc2_ = "";
         }
         for each(_loc3_ in param1.var_144)
         {
            _loc2_ = _loc2_ + (this.method_2309(_loc3_.name_5,_loc3_.var_10,_loc3_.var_13) + "\n");
         }
         return _loc2_;
      }
      
      private final function method_2309(param1:int, param2:int, param3:int) : String
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc5_:class_87 = class_47.method_22;
         switch(param1)
         {
            case class_140.const_28:
               return class_133.method_27(param1,param3);
            case class_140.const_441:
               _loc4_ = _loc5_.method_20("experiencepointsReward");
               break;
            case class_140.const_555:
               _loc4_ = "";
               break;
            case class_140.const_155:
               _loc4_ = _loc5_.method_20(param2 + "reward");
               break;
            default:
               _loc6_ = class_133.method_27(param1,param3);
               if(_loc6_ && param2)
               {
                  _loc4_ = param2 + " " + _loc6_;
                  break;
               }
         }
         return _loc4_.replace("%AMOUNT%",param2);
      }
   }
}
