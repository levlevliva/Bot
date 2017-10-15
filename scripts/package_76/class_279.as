package package_76
{
   import com.adobe.utils.IntUtil;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.vo.GemPopupBootybagTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildImageDisplaySelection;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_669;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.guild.class_847;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_104.class_1160;
   import package_104.class_641;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_170.class_979;
   import package_188.class_1203;
   import package_188.class_1215;
   import package_190.*;
   import package_41.class_103;
   import package_41.class_89;
   import package_43.class_105;
   import package_46.class_1224;
   import package_46.class_1501;
   import package_5.class_945;
   import package_8.class_1315;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TextInput;
   import spark.events.IndexChangeEvent;
   import spark.events.TextOperationEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   
   public final class class_279 extends class_78
   {
      
      private static var name_97:Dictionary = new Dictionary();
       
      
      private var var_1901:class_1203;
      
      private var var_2211:class_1215;
      
      private var var_2365:DataVo_2531;
      
      public function class_279(param1:class_273)
      {
         super();
         this.var_2365 = new DataVo_2531();
         method_35(this.var_1901 = param1.var_1901);
         method_35(this.var_2211 = param1.var_2211);
      }
      
      public static function method_168(param1:int) : int
      {
         if(name_97.hasOwnProperty(param1.toString()))
         {
            return name_97[param1];
         }
         switch(param1)
         {
            case class_1148.const_64:
               return 16763904;
            case class_1148.const_125:
               return 3394764;
            case class_1148.const_127:
               return 13369344;
            case class_1148.const_126:
               return 16737792;
            case class_1148.const_150:
               return 6736947;
            default:
               Main.LOG.error(class_279 + ": invalid type " + class_1148 + "=" + param1);
               return 16777215;
         }
      }
      
      public static function method_679(param1:int) : String
      {
         switch(param1)
         {
            case class_1148.const_125:
               return "peace";
            default:
               return null;
         }
      }
      
      override protected function method_1182() : Object
      {
         var _loc4_:class_681 = null;
         var _loc5_:class_669 = null;
         var _loc6_:Vector.<class_897> = null;
         var _loc7_:class_897 = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         if(!class_1224.name_3.method_148())
         {
            return null;
         }
         var _loc1_:DataVo_2531 = this.var_2365;
         var _loc2_:class_847 = this.var_1901.name_8;
         var _loc3_:Vector.<class_681> = !!_loc2_?_loc2_.var_737:null;
         class_127.method_54(_loc1_.descriptions);
         for each(_loc4_ in _loc3_)
         {
            _loc8_ = _loc4_.var_1730;
            _loc1_.descriptions[_loc8_] = _loc4_.var_205;
            name_97[_loc8_] = _loc4_.var_414;
         }
         _loc5_ = this.var_2211.name_8;
         _loc6_ = !!_loc5_?_loc5_.var_833:null;
         class_127.method_54(_loc1_.relations);
         for each(_loc7_ in _loc6_)
         {
            _loc9_ = class_177.method_1149(_loc7_.name_20);
            _loc1_.relations[_loc9_] = _loc7_.var_414;
         }
         return _loc1_;
      }
      
      public final function method_1389(param1:class_89) : int
      {
         var _loc2_:DataVo_2531 = method_38() as DataVo_2531;
         var _loc3_:String = !!param1?class_177.method_1149(param1):null;
         var _loc4_:int = _loc2_ && _loc2_.relations.hasOwnProperty(_loc3_)?int(_loc2_.relations[_loc3_] as int):int(class_1148.const_64);
         return _loc4_;
      }
      
      public final function method_564(param1:int) : String
      {
         var _loc2_:DataVo_2531 = method_38() as DataVo_2531;
         var _loc3_:String = _loc2_.descriptions[param1] as String;
         if(_loc3_ || !this.var_1901.name_8)
         {
            return _loc3_;
         }
         var _loc4_:class_87 = class_47.method_22;
         switch(param1)
         {
            case class_1148.const_64:
               _loc3_ = _loc4_.method_20("neutral");
               break;
            case class_1148.const_125:
               _loc3_ = _loc4_.method_20("defaultguildblue");
               break;
            case class_1148.const_127:
               _loc3_ = _loc4_.method_20("defaultguildred");
               break;
            case class_1148.const_126:
               _loc3_ = _loc4_.method_20("defaultguildorange");
               break;
            case class_1148.const_150:
               _loc3_ = _loc4_.method_20("defaultguildgreen");
               break;
            default:
               return "unknown-color-" + param1;
         }
         _loc2_.descriptions[param1] = _loc3_;
         return _loc3_;
      }
      
      public final function method_2077(param1:class_89) : int
      {
         var _loc2_:int = this.method_1389(param1);
         return method_168(_loc2_);
      }
   }
}

import flash.utils.Dictionary;

class DataVo_2531
{
    
   
   public var descriptions:Dictionary;
   
   public var relations:Dictionary;
   
   function DataVo_2531()
   {
      this.descriptions = new Dictionary();
      this.relations = new Dictionary();
      super();
   }
}
