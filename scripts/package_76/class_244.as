package package_76
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.vo.GemPopupBootybagTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuTreasuryTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuTreasuryTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_879;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_104.class_1160;
   import package_104.class_641;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_143.class_933;
   import package_15.class_273;
   import package_15.class_78;
   import package_188.class_1151;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_23.class_42;
   import package_41.class_103;
   import package_41.class_84;
   import package_46.class_1224;
   import package_46.class_1493;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_5.class_123;
   import package_5.class_945;
   import package_5.class_984;
   import package_51.class_1355;
   import package_8.class_1315;
   import package_91.class_1246;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   
   public final class class_244 extends class_78
   {
       
      
      private var var_1684:class_1151;
      
      public function class_244(param1:class_273)
      {
         super();
         this.var_1684 = param1.var_1684;
         method_35(this.var_1684);
      }
      
      private static function method_2295(param1:class_841, param2:class_841) : int
      {
         if(param1.name_5 > param2.name_5)
         {
            return 1;
         }
         return 0;
      }
      
      override protected function method_1182() : Object
      {
         return new Currencies_4539(this.var_1684.name_8);
      }
      
      public final function method_196(param1:int) : Number
      {
         return this.name_8.getCurrencyAmount(param1);
      }
      
      public final function method_360() : Vector.<class_841>
      {
         var _loc1_:class_879 = this.var_1684.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         _loc1_.var_580.sort(method_2295);
         return _loc1_.var_580;
      }
      
      public function get name_8() : Currencies_4539
      {
         return method_38() as class_244;
      }
   }
}

import flash.utils.Dictionary;
import net.bigpoint.seafight.com.module.guild.class_879;
import package_121.class_841;

class Currencies_4539
{
    
   
   private var values:Dictionary;
   
   function Currencies_4539(param1:class_879)
   {
      var _loc2_:class_841 = null;
      super();
      this.values = new Dictionary();
      if(param1 == null)
      {
         return;
      }
      for each(_loc2_ in param1.var_580)
      {
         this.values[_loc2_.name_5] = _loc2_.var_10;
      }
   }
   
   public function getCurrencyAmount(param1:int) : Number
   {
      return !!this.values.hasOwnProperty(param1)?Number(this.values[param1]):Number(0);
   }
}
