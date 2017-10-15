package package_34
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipselection.vo.ShipSelectionPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenShipSelectionWindow;
   import com.greensock.TweenLite;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.gems.class_709;
   import net.bigpoint.seafight.com.module.gems.class_746;
   import net.bigpoint.seafight.com.module.gems.class_763;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.gems.class_780;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_100.class_729;
   import package_104.class_628;
   import package_117.class_733;
   import package_139.class_576;
   import package_14.class_47;
   import package_14.class_96;
   import package_15.class_48;
   import package_150.class_805;
   import package_16.class_28;
   import package_17.class_54;
   import package_170.class_979;
   import package_175.class_1593;
   import package_30.class_1013;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1224;
   import package_5.class_123;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   import package_55.class_1009;
   import package_6.class_14;
   import package_7.class_672;
   import package_74.class_253;
   import package_8.class_1240;
   import package_84.class_270;
   import package_9.class_76;
   import package_9.class_91;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.Label;
   import spark.effects.easing.Elastic;
   import spark.filters.DropShadowFilter;
   
   public final class class_116 extends class_69
   {
      
      private static var name_55:class_116;
       
      
      public function class_116()
      {
         super();
      }
      
      public static function get name_3() : class_116
      {
         if(!name_55)
         {
            name_55 = new class_116();
         }
         return name_55;
      }
      
      public final function method_2992(param1:int = 0) : void
      {
         method_31(new class_628(param1));
      }
      
      public final function method_872() : void
      {
         method_31(new class_576());
      }
      
      public final function method_2672(param1:int, param2:int) : void
      {
         method_31(new class_763(class_763.const_964,param1,param2));
      }
      
      public final function method_2916() : void
      {
         method_31(new class_746(class_746.const_1681));
      }
      
      public final function method_2933() : void
      {
         method_31(new class_746(class_746.const_1008));
      }
      
      public final function method_2154(param1:int, param2:int, param3:int, param4:int, param5:class_775) : void
      {
         var _loc6_:class_780 = new class_780();
         _loc6_.var_1148 = param5;
         _loc6_.var_148 = param1;
         _loc6_.var_160 = param2;
         _loc6_.var_161 = param3;
         _loc6_.var_157 = param4;
         method_31(_loc6_);
      }
      
      public final function method_2377() : void
      {
         method_31(new class_709());
      }
      
      public final function method_1376() : void
      {
         var _loc1_:class_253 = class_48.name_3.method_310(class_270.const_99);
         var _loc2_:ShipSelectionPopupVo = new ShipSelectionPopupVo();
         _loc2_.gemHolderType = class_270.const_99;
         _loc2_.favorites = true;
         _loc2_.gemHolderList = _loc1_.method_720;
         StatelessCMD.invoke(CmdSL_OpenShipSelectionWindow,_loc2_);
      }
      
      public final function method_353(param1:int, param2:int, param3:int, param4:int = 0) : void
      {
         var _loc5_:class_729 = new class_729();
         _loc5_.var_13 = param1;
         _loc5_.var_722 = param2;
         _loc5_.var_10 = param3;
         _loc5_.name_15 = param4;
         method_31(_loc5_);
      }
      
      public final function method_406(param1:class_14) : void
      {
         method_31(param1);
      }
      
      public final function method_2264(param1:int, param2:int, param3:int = 0) : void
      {
         var _loc4_:class_733 = new class_733();
         _loc4_.var_780 = param1;
         _loc4_.var_10 = param2;
         _loc4_.name_15 = param3;
         method_31(_loc4_);
      }
      
      public final function method_2275(param1:int, param2:int, param3:Vector.<class_708>) : void
      {
         if(param3.length <= 0)
         {
            return;
         }
         method_31(new class_642(param1,param2,param3));
      }
      
      public final function method_1100(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:class_672 = new class_672();
         _loc4_.name_14 = param2;
         _loc4_.var_126 = param3;
         method_31(_loc4_);
         var _loc5_:class_253 = class_48.name_3.method_310(param1);
         _loc5_.method_2080(param2,param3);
      }
   }
}
