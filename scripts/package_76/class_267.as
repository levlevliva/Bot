package package_76
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.GuildIslandWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildAnnouncementListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.bit101.components.LabelBar;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.net.FileReference;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_621;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_602;
   import package_101.class_511;
   import package_121.class_841;
   import package_130.class_1143;
   import package_130.class_663;
   import package_130.class_711;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_153.class_931;
   import package_175.class_1547;
   import package_185.class_1136;
   import package_188.class_1149;
   import package_188.class_1194;
   import package_188.class_1195;
   import package_20.class_33;
   import package_204.thiz;
   import package_26.class_101;
   import package_30.class_62;
   import package_34.class_1257;
   import package_36.class_100;
   import package_39.class_973;
   import package_41.class_89;
   import package_45.class_110;
   import package_46.class_1224;
   import package_5.class_22;
   import package_5.class_984;
   import package_51.class_1355;
   import package_51.class_974;
   import package_7.class_1039;
   import package_9.class_76;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.effects.animation.Animation;
   
   public final class class_267 extends class_78
   {
       
      
      private var var_228:GuildIslandMenuOverviewTabVo;
      
      private var var_355:class_241;
      
      private var var_992:class_1195;
      
      private var var_1020:class_1149;
      
      private var var_1095:class_1194;
      
      public function class_267(param1:class_273, param2:class_241)
      {
         super();
         this.var_355 = param2;
         this.var_992 = param1.method_2784();
         this.var_1020 = param1.var_1020;
         this.var_1095 = param1.method_1880();
         method_35(this.var_1020);
         method_35(this.var_355);
         method_35(this.var_992);
         method_35(this.var_1095);
      }
      
      override protected function method_1182() : Object
      {
         var _loc2_:TowerListItemVo = null;
         var _loc6_:class_841 = null;
         var _loc9_:class_821 = null;
         var _loc10_:int = 0;
         var _loc11_:class_841 = null;
         var _loc1_:class_663 = this.var_992.name_8;
         if(!this.method_160())
         {
            return null;
         }
         if(this.var_228 == null)
         {
            this.var_228 = new GuildIslandMenuOverviewTabVo();
         }
         this.var_228.rightToBuild = this.var_1020.method_137(class_1147.const_759);
         this.var_228.rightToRepair = this.var_1020.method_137(class_1147.const_829);
         this.var_228.id = _loc1_.var_786.var_225;
         this.var_228.type = _loc1_.var_786.name_30;
         var _loc3_:int = this.var_355.method_858(this.var_228.type);
         var _loc4_:class_711 = this.var_355.method_618(this.var_228.type,_loc3_);
         var _loc5_:Dictionary = new Dictionary();
         var _loc7_:int = 0;
         while(_loc7_ < this.var_228.towers.length)
         {
            _loc2_ = this.var_228.towers.getItemAt(_loc7_) as TowerListItemVo;
            _loc2_.level = -1;
            for each(_loc9_ in _loc1_.var_786.name_41)
            {
               if(_loc2_.position != _loc9_.name_6)
               {
                  continue;
               }
               TowerListItemVo.create(_loc9_,_loc2_);
               break;
            }
            _loc2_.islandType = this.var_228.type;
            _loc2_.attacked = this.var_1095.method_2301(this.var_228.id) == _loc2_.position;
            this.var_228.towers.setItemAt(_loc2_,_loc2_.slot);
            if(_loc2_.level < _loc3_)
            {
               for each(_loc6_ in _loc4_.var_1015.var_77)
               {
                  _loc10_ = _loc6_.name_5;
                  _loc11_ = !!_loc5_.hasOwnProperty(_loc10_)?_loc5_[_loc10_] as class_841:new class_841(_loc10_);
                  if(!_loc2_.building)
                  {
                     _loc11_.var_10 = _loc11_.var_10 + _loc6_.var_10;
                  }
                  _loc5_[_loc10_] = _loc11_;
               }
            }
            _loc7_++;
         }
         if(this.var_228.modes.length <= 0)
         {
            this.var_228.modes.addItem(ComboBoxTowerModeItemVo.getVo(class_1143.const_64));
            this.var_228.modes.addItem(ComboBoxTowerModeItemVo.getVo(class_1143.const_502));
            this.var_228.modes.addItem(ComboBoxTowerModeItemVo.getVo(class_1143.const_613));
         }
         var _loc8_:Vector.<class_841> = this.var_228.maxTowersCost;
         _loc8_.length = 0;
         for each(_loc6_ in _loc5_)
         {
            _loc8_.push(_loc6_);
         }
         return this.var_228;
      }
      
      public final function method_160() : Boolean
      {
         var _loc1_:class_663 = this.var_992.name_8;
         var _loc2_:Boolean = this.var_355.method_120() && this.var_1020.method_160();
         return _loc1_ != null && _loc2_;
      }
      
      public final function method_475() : int
      {
         var _loc1_:GuildIslandMenuOverviewTabVo = this.method_262();
         return _loc1_.type;
      }
      
      public final function method_262() : GuildIslandMenuOverviewTabVo
      {
         var _loc1_:GuildIslandMenuOverviewTabVo = method_38() as GuildIslandMenuOverviewTabVo;
         return _loc1_;
      }
      
      public final function method_1404(param1:int) : GuildIslandMenuOverviewTabVo
      {
         var _loc2_:GuildIslandMenuOverviewTabVo = this.method_262();
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:TowerListItemVo = _loc2_.towers.getItemAt(param1) as TowerListItemVo;
         this.var_355.method_2832(_loc2_.levels,_loc2_.type,_loc3_.level);
         return _loc2_;
      }
      
      public final function method_2616() : Boolean
      {
         var _loc1_:GuildIslandMenuOverviewTabVo = this.method_262();
         return !!_loc1_?Boolean(_loc1_.rightToBuild):false;
      }
      
      public final function method_2214() : Boolean
      {
         var _loc1_:GuildIslandMenuOverviewTabVo = this.method_262();
         return !!_loc1_?Boolean(_loc1_.rightToRepair):false;
      }
      
      public final function method_1252(param1:int, param2:int) : class_711
      {
         var _loc3_:int = this.method_475();
         return this.var_355.method_618(_loc3_,param1,param2);
      }
      
      private final function getTowerMaxLevel() : int
      {
         var _loc1_:int = this.method_475();
         return this.var_355.method_858(_loc1_);
      }
      
      public final function method_1960() : Number
      {
         var _loc1_:int = this.method_475();
         var _loc2_:int = this.var_355.method_858(_loc1_);
         var _loc3_:class_711 = this.var_355.method_618(_loc1_,_loc2_);
         return _loc3_.var_1289;
      }
      
      public final function method_1215() : Vector.<class_841>
      {
         return this.var_228.maxTowersCost;
      }
      
      public final function method_2561(param1:ArrayList, param2:Boolean, param3:int, param4:Boolean, param5:int) : void
      {
         var _loc9_:class_841 = null;
         var _loc10_:class_841 = null;
         param1.removeAll();
         var _loc6_:GuildIslandMenuOverviewTabVo = this.method_262();
         var _loc7_:class_711 = this.var_355.method_618(_loc6_.type,param3,param5);
         var _loc8_:Dictionary = _loc6_.changeTowerCost;
         for each(_loc9_ in _loc8_)
         {
            _loc9_.var_10 = 0;
         }
         if(param2)
         {
            for each(_loc9_ in _loc7_.var_1015.var_77)
            {
               _loc10_ = !!_loc8_.hasOwnProperty(_loc9_.name_5)?_loc8_[_loc9_.name_5] as class_841:new class_841(_loc9_.name_5);
               _loc10_.var_10 = _loc10_.var_10 + _loc9_.var_10;
               _loc8_[_loc9_.name_5] = _loc10_;
            }
         }
         else if(param4)
         {
            for each(_loc9_ in _loc7_.var_1167.var_77)
            {
               _loc10_ = !!_loc8_.hasOwnProperty(_loc9_.name_5)?_loc8_[_loc9_.name_5] as class_841:new class_841(_loc9_.name_5);
               _loc10_.var_10 = _loc10_.var_10 + _loc9_.var_10;
               _loc8_[_loc9_.name_5] = _loc10_;
            }
         }
         for each(_loc9_ in _loc8_)
         {
            if(_loc9_.var_10 > 0)
            {
               param1.addItem(_loc9_);
            }
         }
      }
      
      public final function method_1686() : Boolean
      {
         var _loc3_:TowerListItemVo = null;
         var _loc1_:GuildIslandMenuOverviewTabVo = this.method_262();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.towers.length)
         {
            _loc3_ = _loc1_.towers.getItemAt(_loc2_) as TowerListItemVo;
            if(_loc3_.hp < _loc3_.hpMax && !_loc3_.repairing)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public final function method_2128() : Boolean
      {
         var _loc4_:TowerListItemVo = null;
         var _loc1_:GuildIslandMenuOverviewTabVo = this.method_262();
         var _loc2_:int = this.getTowerMaxLevel();
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.towers.length)
         {
            _loc4_ = _loc1_.towers.getItemAt(_loc3_) as TowerListItemVo;
            if(_loc4_.level < _loc2_ && !_loc4_.building)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public final function method_2855() : Boolean
      {
         var _loc3_:TowerListItemVo = null;
         var _loc1_:GuildIslandMenuOverviewTabVo = this.method_262();
         if(_loc1_ == null)
         {
            return false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.towers.length)
         {
            _loc3_ = _loc1_.towers.getItemAt(_loc2_) as TowerListItemVo;
            if(_loc3_.building)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public final function method_824() : Vector.<class_841>
      {
         return this.var_355.method_824();
      }
      
      override public function method_36() : void
      {
         this.var_992.method_36();
         this.var_1095.method_36();
         method_43(this.var_1020);
         method_43(this.var_355);
         method_43(this.var_992);
         method_43(this.var_1095);
         this.var_1020 = null;
         this.var_992 = null;
         this.var_355 = null;
         this.var_1095 = null;
      }
   }
}
