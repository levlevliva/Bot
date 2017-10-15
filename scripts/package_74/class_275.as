package package_74
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.tools.GemTools;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.gems.class_717;
   import net.bigpoint.seafight.com.module.gems.class_932;
   import net.bigpoint.seafight.com.module.guild.class_383;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_871;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_391;
   import package_121.class_841;
   import package_15.class_273;
   import package_15.class_78;
   import package_16.class_28;
   import package_17.class_54;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_41.class_84;
   import package_41.class_89;
   import package_51.class_1355;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   import package_6.class_14;
   import package_7.class_1039;
   import package_80.class_1180;
   import package_80.class_1217;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   
   public final class class_275 extends class_78
   {
       
      
      private var var_1361:class_249;
      
      private var var_2112:class_236;
      
      private var var_1843:class_236;
      
      private var var_1169:class_252;
      
      private var var_1157:class_1217;
      
      private var var_1373:class_1180;
      
      public function class_275(param1:class_273, param2:class_249, param3:class_236, param4:class_236)
      {
         super();
         method_35(this.var_2112 = param3);
         method_35(this.var_1843 = param4);
         method_35(this.var_1361 = param2);
         method_35(this.var_1169 = new class_252(param1));
         method_35(this.var_1157 = param1.method_2380());
         method_35(this.var_1373 = param1.method_1124());
      }
      
      override protected function method_1182() : Object
      {
         var _loc8_:GemItemVo = null;
         var _loc9_:int = 0;
         var _loc1_:Dictionary = this.var_2112.method_177();
         var _loc2_:Dictionary = this.var_1843.method_177();
         if(!_loc1_ || !_loc2_)
         {
            return null;
         }
         var _loc3_:class_932 = this.var_1373.name_8;
         var _loc4_:* = _loc3_ != null;
         if(_loc4_)
         {
            this.var_1373.method_54();
            this.var_1157.method_54();
            this.var_1157.name_8;
         }
         if(!this.var_1361.method_339() || !this.var_1169.method_339())
         {
            return null;
         }
         var _loc5_:class_717 = this.var_1157.name_8;
         var _loc6_:DataVo_1740 = new DataVo_1740();
         if(_loc5_ && _loc5_.var_405 > 0)
         {
            _loc9_ = 0;
            _loc6_.level = class_1168.name_3.method_222(_loc5_.var_148).name_10;
            _loc6_.maxRerolls = _loc5_.var_470;
            _loc6_.reroll = _loc5_.var_504 + 1;
            _loc6_.result = GemItemVo.create(_loc5_.var_405);
            _loc6_.process[_loc9_++] = GemItemVo.create(_loc5_.var_148);
            _loc6_.process[_loc9_++] = GemItemVo.create(_loc5_.var_160);
            _loc6_.process[_loc9_++] = GemItemVo.create(_loc5_.var_161);
            _loc6_.process[_loc9_++] = GemItemVo.create(_loc5_.var_157);
         }
         var _loc7_:int = this.method_609();
         for each(_loc8_ in _loc1_)
         {
            if(_loc8_.type != GemType.SHIP_SPECIAL && _loc8_.level <= _loc7_)
            {
               _loc6_.inventory[_loc8_.getId()] = _loc8_;
            }
         }
         for each(_loc8_ in _loc2_)
         {
            if(_loc8_.type != GemType.PET_SPECIAL && _loc8_.level <= _loc7_)
            {
               _loc6_.inventory[_loc8_.getId()] = _loc8_;
            }
         }
         _loc6_.levels.levels = GemTools.getGemLevels(_loc6_.inventory);
         _loc6_.levels.optionAll = false;
         return _loc6_;
      }
      
      public final function method_929(param1:int) : GemItemVo
      {
         var _loc2_:Dictionary = this.method_177();
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:GemItemVo = _loc2_[param1] as GemItemVo;
         if(_loc3_ == null)
         {
            _loc2_[param1] = _loc3_ = GemItemVo.create(param1);
         }
         return _loc3_;
      }
      
      public final function method_609() : int
      {
         return this.var_1361.method_609();
      }
      
      public final function method_177() : Dictionary
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc1_?_loc1_.inventory:null;
      }
      
      public final function method_2235() : Dictionary
      {
         return this.var_1169.method_388();
      }
      
      public final function method_582() : GemItemVo
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc1_?_loc1_.result:null;
      }
      
      public final function method_1826() : Vector.<GemItemVo>
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc1_?_loc1_.process:null;
      }
      
      public final function method_943() : GemLevelsVo
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc1_?_loc1_.levels:null;
      }
      
      public final function method_548(param1:int) : class_841
      {
         var _loc2_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc2_?this.var_1361.method_548(_loc2_.reroll,param1):null;
      }
      
      public final function method_2571() : int
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return _loc1_.level;
      }
      
      public final function method_2409() : Boolean
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc1_?_loc1_.reroll == 1:false;
      }
      
      public final function method_2557() : Boolean
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return !!_loc1_?_loc1_.reroll <= _loc1_.maxRerolls:false;
      }
      
      public final function method_885(param1:int) : int
      {
         return this.var_1169.method_885(param1);
      }
      
      public final function method_339() : Boolean
      {
         var _loc1_:DataVo_1740 = method_38() as DataVo_1740;
         return _loc1_ != null;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1361);
         method_43(this.var_2112);
         method_43(this.var_1843);
         method_43(this.var_1169);
         method_43(this.var_1157);
         method_43(this.var_1373);
         this.var_1169.method_36();
         this.var_1157.method_36();
         this.var_1373.method_36();
      }
   }
}

import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
import flash.utils.Dictionary;

class DataVo_1740
{
    
   
   public var inventory:Dictionary;
   
   public var levels:GemLevelsVo;
   
   public var process:Vector.<GemItemVo>;
   
   public var result:GemItemVo;
   
   public var maxRerolls:int;
   
   public var reroll:int;
   
   public var level:int;
   
   function DataVo_1740()
   {
      this.inventory = new Dictionary();
      this.levels = new GemLevelsVo();
      this.process = new Vector.<GemItemVo>(4,true);
      super();
   }
}
