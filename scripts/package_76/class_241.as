package package_76
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildAnnouncementListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.greensock.core.TweenCore;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import package_121.class_773;
   import package_121.class_841;
   import package_130.class_711;
   import package_130.class_809;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_17.class_54;
   import package_170.class_979;
   import package_188.class_1144;
   import package_204.thiz;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_32.class_64;
   import package_36.class_100;
   import package_41.class_93;
   import package_43.class_105;
   import package_46.class_1224;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_1355;
   import package_51.class_148;
   import package_54.class_161;
   import package_7.class_750;
   import package_72.class_1442;
   import package_8.class_1240;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public final class class_241 extends class_78
   {
       
      
      private var var_1647:class_1144;
      
      public function class_241(param1:class_273)
      {
         super();
         this.var_1647 = param1.var_2270;
         method_35(this.var_1647);
      }
      
      override protected function method_1182() : Object
      {
         var _loc4_:class_711 = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc1_:class_809 = this.var_1647.name_8;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:Vector.<class_711> = !!_loc1_?_loc1_.var_845:null;
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_.var_1129;
            _loc6_ = _loc4_.name_10;
            _loc7_ = _loc4_.var_365;
            _loc8_ = _loc5_ + "_" + _loc6_ + "_" + _loc7_;
            _loc2_[_loc8_] = _loc4_;
         }
         return _loc2_;
      }
      
      public final function method_120() : Boolean
      {
         var _loc1_:Dictionary = method_38() as Dictionary;
         var _loc2_:* = _loc1_ != null;
         return _loc2_;
      }
      
      public final function method_2832(param1:ArrayList, param2:int, param3:int) : void
      {
         var _loc5_:class_711 = null;
         var _loc6_:* = false;
         var _loc7_:int = 0;
         var _loc8_:ComboBoxLevelItemVo = null;
         var _loc4_:Dictionary = method_38() as Dictionary;
         param1.removeAll();
         if(_loc4_ == null)
         {
            return;
         }
         for each(_loc5_ in _loc4_)
         {
            if(!(_loc5_.var_1129 != param2 || _loc5_.name_10 < param3))
            {
               _loc6_ = false;
               _loc7_ = 0;
               while(_loc7_ < param1.length)
               {
                  _loc8_ = param1.getItemAt(_loc7_) as ComboBoxLevelItemVo;
                  _loc6_ = _loc8_.level == _loc5_.name_10;
                  if(_loc8_.level >= _loc5_.name_10)
                  {
                     break;
                  }
                  _loc7_++;
               }
               if(!_loc6_)
               {
                  param1.addItemAt(ComboBoxLevelItemVo.getVo(_loc5_.name_10),_loc7_);
               }
            }
         }
      }
      
      public final function method_618(param1:int, param2:int, param3:int = 1) : class_711
      {
         var _loc4_:Dictionary = method_38() as Dictionary;
         var _loc5_:String = param1 + "_" + param2 + "_" + param3;
         return !!_loc4_?_loc4_[_loc5_] as class_711:null;
      }
      
      public final function method_858(param1:int) : int
      {
         var _loc4_:class_711 = null;
         var _loc2_:Dictionary = method_38() as Dictionary;
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!(_loc4_.var_1129 != param1 || _loc4_.name_10 <= _loc3_))
            {
               _loc3_ = _loc4_.name_10;
            }
         }
         return _loc3_;
      }
      
      public final function method_824() : Vector.<class_841>
      {
         var _loc1_:class_809 = this.var_1647.name_8;
         var _loc2_:class_773 = _loc1_.var_386;
         var _loc3_:Vector.<class_841> = _loc2_.var_77;
         return _loc3_;
      }
   }
}
