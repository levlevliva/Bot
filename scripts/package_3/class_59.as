package package_3
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuTreasuryTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuTreasuryTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsComboBoxListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildProfileController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.MenusContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.SimplePopup;
   import com.bit101.components.ColorChooser;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_591;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.useraction.UserActionFailedReason;
   import package_118.class_725;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_96;
   import package_15.class_48;
   import package_152.class_937;
   import package_16.class_28;
   import package_17.class_325;
   import package_170.class_979;
   import package_190.class_1469;
   import package_2.class_9;
   import package_20.class_33;
   import package_216.class_1575;
   import package_28.class_56;
   import package_34.class_333;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1455;
   import package_46.class_1501;
   import package_5.class_1054;
   import package_5.class_123;
   import package_51.class_1355;
   import package_6.class_14;
   import package_7.class_35;
   import package_74.class_236;
   import package_9.class_120;
   import package_90.class_811;
   import package_91.class_1246;
   import package_92.class_336;
   import package_99.class_810;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.events.GridSelectionEvent;
   import spark.events.TextOperationEvent;
   import spark.primitives.Graphic;
   
   public final class class_59 implements class_9
   {
       
      
      private var var_770:SimplePopup;
      
      private var var_2151:Function;
      
      private var var_1226:class_333;
      
      private var var_2031:Boolean;
      
      private var var_1702:int = 0;
      
      public function class_59(param1:class_28, param2:Function)
      {
         super();
         this.var_2151 = param2;
         this.var_2031 = false;
         param1.addEventListener(class_56.const_1141,this.method_1656);
         param1.addEventListener(class_56.const_500,this.method_1112);
         param1.addEventListener(class_56.const_757,this.method_1954);
         param1.addEventListener(class_56.const_51,this.method_1184);
      }
      
      private final function method_1954(param1:class_56) : void
      {
         if(this.var_770 || !this.var_2031)
         {
            return;
         }
         this.var_1702 = 0;
         this.method_1295();
      }
      
      private final function method_1295() : void
      {
         this.var_1702++;
         if(this.var_1702 > 10)
         {
            return;
         }
         if(!class_33.name_12.method_41.var_2374)
         {
            TweenMax.delayedCall(1,this.method_1295);
            return;
         }
         var _loc1_:class_332 = new class_332(class_332.const_552);
         _loc1_.method_185("reconnect");
         _loc1_.var_36 = 200;
         _loc1_.var_31 = 70;
         this.var_770 = MenusContainer.createMenu(SimplePopup,true) as SimplePopup;
         this.var_770.setCloseButtonVisible(false);
         this.var_770.create(_loc1_);
         MenusContainer.centerMenu(this.var_770);
      }
      
      private final function method_1184(param1:class_56) : void
      {
         if(this.var_1226)
         {
            this.var_1226.method_64();
         }
      }
      
      private final function method_1656(param1:class_56) : void
      {
         this.method_1112();
         class_325.method_21().method_678();
      }
      
      private final function method_1112(param1:class_56 = null) : void
      {
         if(this.var_770)
         {
            this.var_770.closeMenu();
            this.var_770 = null;
         }
         this.var_2031 = true;
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_35 = param1 as class_35;
         if(null == this.var_1226)
         {
            this.var_1226 = new class_333();
         }
         this.var_1226.name_23(_loc2_.var_289 * 1000);
         this.var_2151.apply(this,[_loc2_]);
      }
   }
}
