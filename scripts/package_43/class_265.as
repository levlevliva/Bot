package package_43
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.currencypopup.vo.CurrencyItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsComboBoxListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildProfileController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bit101.components.ColorChooser;
   import com.bit101.components.Style;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.managers.PopUpManager;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_351;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import net.bigpoint.seafight.com.module.useraction.UserActionFailedReason;
   import package_104.class_448;
   import package_104.class_641;
   import package_111.class_1176;
   import package_111.class_742;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_273;
   import package_15.class_48;
   import package_15.class_78;
   import package_169.class_977;
   import package_170.class_979;
   import package_190.class_1181;
   import package_20.class_33;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_216.class_1575;
   import package_29.class_565;
   import package_34.class_1526;
   import package_41.class_103;
   import package_41.class_93;
   import package_42.class_959;
   import package_45.class_110;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_48.class_999;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.components.TitleWindow;
   import spark.events.GridSelectionEvent;
   import spark.events.TextOperationEvent;
   
   public final class class_265 extends class_78
   {
       
      
      private var var_1799:class_977;
      
      private var var_77:Dictionary;
      
      public function class_265(param1:class_273)
      {
         super();
         this.var_1799 = param1.var_1799;
         this.var_77 = new Dictionary();
         method_35(this.var_1799);
      }
      
      private static function method_707(param1:CurrencyItemVo, param2:CurrencyItemVo) : int
      {
         if(param1.currency.name_5 > param2.currency.name_5)
         {
            return 1;
         }
         if(param1.currency.name_5 < param2.currency.name_5)
         {
            return -1;
         }
         return 0;
      }
      
      override protected function method_1182() : Object
      {
         var _loc4_:class_641 = null;
         var _loc5_:CurrencyItemVo = null;
         var _loc6_:int = 0;
         var _loc7_:CurrencyItemVo = null;
         var _loc1_:class_448 = this.var_1799.name_8;
         var _loc2_:Vector.<CurrencyItemVo> = new Vector.<CurrencyItemVo>();
         var _loc3_:ArrayList = new ArrayList();
         if(_loc1_ == null)
         {
            return _loc3_;
         }
         for each(_loc4_ in _loc1_.name_9)
         {
            _loc6_ = _loc4_.var_13;
            if(_loc6_ != class_103.const_1569)
            {
               _loc7_ = this.method_1987(_loc6_);
               _loc7_.purchasable = _loc6_ == class_103.name_32;
               _loc7_.currency.var_10 = _loc4_.var_10;
               if(_loc4_.var_10 > 0 || _loc6_ == class_103.name_32 || _loc6_ == class_103.name_36)
               {
                  _loc2_.push(_loc7_);
               }
            }
         }
         _loc2_.sort(method_707);
         for each(_loc5_ in _loc2_)
         {
            _loc3_.addItem(_loc5_);
         }
         return _loc3_;
      }
      
      private final function method_1987(param1:int) : CurrencyItemVo
      {
         var _loc2_:CurrencyItemVo = this.var_77[param1] as CurrencyItemVo;
         if(_loc2_)
         {
            return _loc2_;
         }
         this.var_77[param1] = _loc2_ = new CurrencyItemVo();
         _loc2_.currency.name_5 = param1;
         return _loc2_;
      }
      
      public function get name_8() : ArrayList
      {
         return method_38() as ArrayList;
      }
   }
}
