package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_1342;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.QuestWindow;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.QuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_461;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_110.class_699;
   import package_122.class_428;
   import package_122.class_634;
   import package_126.class_1341;
   import package_126.class_453;
   import package_126.class_488;
   import package_126.class_508;
   import package_130.class_711;
   import package_14.class_227;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_153.class_931;
   import package_177.class_1049;
   import package_20.class_33;
   import package_20.class_982;
   import package_207.class_1358;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_34.class_1257;
   import package_36.class_100;
   import package_42.class_1106;
   import package_45.class_110;
   import package_46.class_1224;
   import package_49.class_137;
   import package_5.class_1047;
   import package_5.class_1340;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_974;
   import package_52.class_1227;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_426;
   import package_9.class_836;
   import package_9.class_91;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_548 extends class_10
   {
      
      private static const const_1462:int = 1;
      
      private static const const_1835:int = 45;
       
      
      private var var_1937:int = 1;
      
      public function class_548()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_453.name_3,this.method_2188);
         method_23(class_508.name_3,this.method_2623);
         method_23(class_488.name_3,this.method_2346);
         method_23(class_426.name_3,this.method_1972);
         method_23(class_836.name_3,this.method_2836);
         method_23(class_461.name_3,this.method_1700);
      }
      
      private final function method_2188(param1:class_14) : void
      {
         var _loc5_:int = 0;
         var _loc2_:class_453 = param1 as class_453;
         var _loc3_:class_1048 = new class_1048();
         _loc3_.name_4 = _loc2_.name_4;
         _loc3_.var_586 = this.method_2838(_loc2_.var_91);
         _loc3_.var_61 = _loc2_.name_6.var_9;
         _loc3_.var_63 = _loc2_.name_6.var_8;
         _loc3_.name_78 = _loc2_.var_1548;
         _loc3_.var_240 = -1;
         var _loc4_:class_1049 = class_47.method_267.method_321(_loc3_.name_4.name_4);
         if(_loc4_ == null)
         {
            _loc5_ = _loc3_.var_586;
            if(this.var_1937 > 1 && _loc5_ == const_1462 || _loc5_ == const_1835)
            {
               _loc3_.var_586 = this.var_1937;
            }
            _loc4_ = class_47.method_267.method_790(_loc3_);
         }
      }
      
      private final function method_1700(param1:class_461) : void
      {
         var _loc2_:class_1048 = null;
         _loc2_ = new class_1048();
         _loc2_.var_586 = class_1047.const_425;
         _loc2_.var_61 = param1.name_6.var_9;
         _loc2_.var_63 = param1.name_6.var_8;
         _loc2_.name_20 = param1.name_20;
         _loc2_.var_240 = -1;
         class_47.method_267.method_790(_loc2_);
      }
      
      private final function method_2838(param1:int) : int
      {
         switch(param1)
         {
            case class_1341.const_224:
               return class_1047.const_224;
            case class_1341.const_408:
               return class_1047.const_408;
            case class_1341.const_256:
               return class_1047.const_256;
            case class_1341.const_483:
               return class_1047.const_483;
            case class_1341.const_466:
               return class_1047.const_466;
            case class_1341.const_498:
               return class_1047.const_498;
            case class_1341.const_425:
               return class_1047.const_425;
            case class_1341.const_339:
               return class_1047.const_339;
            case class_1341.const_485:
               return class_1047.const_485;
            case class_1341.const_703:
               return class_1047.const_703;
            case class_1341.const_499:
               return class_1047.const_499;
            case class_1341.const_1571:
               return class_1047.const_499;
            case class_1341.const_731:
               return class_1047.const_731;
            case class_1341.const_789:
               return class_1047.const_789;
            case class_1341.const_797:
               return class_1047.const_797;
            case class_1341.const_846:
               return class_1047.const_846;
            case class_1341.const_704:
               return class_1047.const_704;
            case class_1341.const_1525:
               return class_1047.const_1452;
            case class_1341.const_1488:
               return class_1047.const_1854;
            case class_1341.const_881:
               return class_1047.const_881;
            case class_1341.const_689:
               return class_1047.const_689;
            case class_1341.const_930:
               return class_1047.const_930;
            default:
               return class_1047.const_335;
         }
      }
      
      private final function method_2623(param1:class_14) : void
      {
         var _loc2_:class_508 = param1 as class_508;
         var _loc3_:class_227 = class_47.method_267;
         var _loc4_:class_1049 = _loc3_.method_321(_loc2_.name_4.name_4);
         if(null == _loc4_)
         {
            const_3.warn("item does not exist: " + _loc2_.name_4.name_4);
            return;
         }
         _loc4_.suicide(true);
         _loc3_.method_2480(_loc2_.name_4.name_4);
      }
      
      private final function method_2346(param1:class_14) : void
      {
         var _loc2_:class_488 = param1 as class_488;
         this.var_1937 = class_1340.method_1730(_loc2_.name_5);
      }
      
      private final function method_1972(param1:class_14) : void
      {
         var _loc2_:class_426 = param1 as class_426;
         var _loc3_:class_1342 = new class_1342();
         _loc3_.var_61 = _loc2_.var_167.var_9;
         _loc3_.var_63 = _loc2_.var_167.var_8;
         _loc3_.name_25 = _loc2_.name_25;
         _loc3_.name_5 = _loc2_.name_5;
         new class_1106(_loc3_);
      }
      
      private final function method_2836(param1:class_14) : void
      {
         var _loc2_:class_836 = param1 as class_836;
      }
   }
}
