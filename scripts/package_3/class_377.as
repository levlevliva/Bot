package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.class_1277;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.StartProgressButton;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_100.class_358;
   import package_104.class_362;
   import package_104.class_448;
   import package_104.class_989;
   import package_107.class_693;
   import package_111.class_391;
   import package_111.class_425;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_143.class_542;
   import package_17.class_54;
   import package_171.class_1043;
   import package_171.class_1267;
   import package_171.class_1268;
   import package_171.class_1269;
   import package_171.class_1270;
   import package_171.class_1273;
   import package_171.class_1274;
   import package_171.class_1275;
   import package_171.class_1276;
   import package_176.class_1045;
   import package_179.class_1282;
   import package_20.class_33;
   import package_202.class_1301;
   import package_216.class_1575;
   import package_34.class_107;
   import package_34.class_1272;
   import package_34.class_1499;
   import package_36.class_100;
   import package_39.class_80;
   import package_41.class_330;
   import package_41.class_89;
   import package_46.class_1132;
   import package_46.class_1271;
   import package_47.class_522;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_300;
   import package_5.class_43;
   import package_51.class_1355;
   import package_52.class_1084;
   import package_54.class_162;
   import package_54.class_319;
   import package_56.class_170;
   import package_6.class_14;
   import package_65.class_188;
   import package_69.class_194;
   import package_7.class_1039;
   import package_7.class_104;
   import package_91.class_1246;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public final class class_377 extends class_10
   {
      
      public static const const_3:ILogger = Log.getLogger("InventoryItemListener");
       
      
      private var var_1217:class_188;
      
      private var var_2163:class_1276;
      
      private var var_1230:class_1267;
      
      private var var_2451:class_1043;
      
      private var var_2362:class_1273;
      
      private var var_2187:class_194;
      
      private var var_1771:class_1275;
      
      private var var_1801:class_1268;
      
      private var var_2272:class_1274;
      
      private var var_2297:class_1270;
      
      private var var_2413:class_1269;
      
      public function class_377()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_362.name_3,this.method_1763);
         method_23(class_448.name_3,this.method_785);
         method_23(class_330.name_3,this.method_2810);
         method_23(class_542.name_3,this.method_1705);
         method_23(class_425.name_3,this.method_1048);
         method_23(class_391.name_3,this.method_1048);
         method_23(class_358.name_3,this.method_2611);
         method_23(class_104.name_3,this.method_1854);
         this.var_2451 = class_1043.method_21();
         this.var_1217 = class_33.name_12.name_104;
         this.var_2163 = class_1276.method_21();
         this.var_1230 = class_1267.method_21();
         this.var_2187 = class_33.name_12.method_697;
         this.var_2362 = class_1273.method_21();
         this.var_1771 = class_1275.method_21();
         this.var_2272 = class_1274.method_21();
         this.var_2297 = class_1270.method_21();
         this.var_2413 = class_1269.method_21();
      }
      
      private final function method_785(param1:class_14) : void
      {
         var _loc2_:class_448 = param1 as class_448;
         var _loc3_:class_1084 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_72) as class_1084;
         this.var_1217.method_1947(_loc2_.name_9);
         _loc3_.method_2022(_loc2_.name_9);
         switch(_loc2_.name_5)
         {
            case class_989.const_115:
               this.var_2163.method_55(param1);
               break;
            case class_989.const_36:
               this.var_1230.method_55(param1);
               break;
            case class_989.const_89:
               this.var_2362.method_55(param1);
               break;
            case class_989.const_748:
               this.var_2297.method_55(param1);
               break;
            case class_989.const_17:
               this.var_2413.method_55(param1);
               break;
            case class_989.const_29:
               if(!this.var_1801)
               {
                  this.var_1801 = class_1268.method_21();
               }
               this.var_1801.method_55(param1);
               break;
            case class_989.const_31:
               this.var_2272.method_55(param1);
               break;
            case class_989.const_217:
               this.var_1771.method_55(param1);
               break;
            case class_989.const_25:
               class_1132.name_3.method_785(_loc2_);
               break;
            case class_989.const_61:
               class_1271.name_3.method_785(_loc2_);
               break;
            case class_989.const_28:
               break;
            default:
               Main.LOG.warn(this + ": unhandled " + class_989 + "=" + _loc2_.name_5);
         }
      }
      
      private final function method_2611(param1:class_14) : void
      {
         var _loc2_:class_358 = param1 as class_358;
         const_3.error("buy failure message-id: " + _loc2_.name_15);
         MultiPopUpManager.addErrorPopup("popupnotenoughcredits");
      }
      
      private final function method_1048(param1:class_14) : void
      {
         this.var_1771.method_55(param1);
      }
      
      private final function method_1763(param1:class_14) : void
      {
         var _loc2_:class_362 = null;
         _loc2_ = param1 as class_362;
         var _loc3_:int = _loc2_.name_5;
         switch(_loc2_.name_5)
         {
            case class_362.const_1754:
               this.method_713(_loc3_,"chest_opened",class_123.const_421);
               break;
            case class_362.const_1898:
               this.method_713(_loc3_,"chest_opened",class_123.const_461,25,-70);
         }
         class_170.method_188("warmap:opentreasurechest");
      }
      
      private final function method_1854(param1:class_14) : void
      {
         var _loc2_:class_104 = param1 as class_104;
         if(_loc2_.name_5 == class_1039.const_98)
         {
            class_1272.name_3.method_74(class_989.const_115);
         }
      }
      
      private final function method_2810(param1:class_14) : void
      {
         var _loc4_:class_319 = null;
         var _loc2_:class_330 = param1 as class_330;
         var _loc3_:class_1084 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_72) as class_1084;
         switch(_loc2_.var_252)
         {
            case class_300.const_740:
               _loc3_.method_266(class_54.const_617).method_70(!_loc2_.name_28);
               break;
            case class_300.const_546:
               _loc4_ = _loc3_.method_266(class_54.const_651);
               _loc4_.visible = true;
               _loc4_.method_70(!_loc2_.name_28);
               break;
            case class_300.const_608:
               _loc4_ = _loc3_.method_266(class_54.const_656);
               _loc4_.visible = true;
               _loc4_.method_70(!_loc2_.name_28);
               break;
            default:
               const_3.warn("unknown crew id: " + _loc2_.var_252);
         }
         _loc3_.method_91();
      }
      
      protected final function method_713(param1:int, param2:String, param3:int, param4:int = 0, param5:int = 0) : void
      {
         var animation:class_1278 = null;
         var container:Sprite = null;
         var id:int = param1;
         var resID:String = param2;
         var type:int = param3;
         var xoffset:int = param4;
         var chestX:int = param5;
         var finisher:SWFFinisher = getSWFFinisher(type,this.method_713,id,resID,type,xoffset,chestX);
         if(finisher == null)
         {
            return;
         }
         var styleSheet:StyleSheet = class_47.method_24.method_291();
         var style:Object = styleSheet.getStyle(".instanceNotifierMap");
         var textFormat:TextFormat = styleSheet.transform(style);
         textFormat.size = 24;
         textFormat.align = TextFormatAlign.CENTER;
         textFormat.leading = -10;
         textFormat.bold = true;
         textFormat.letterSpacing = 1;
         textFormat.leading = 1;
         var text:TextField = class_1277.method_363({
            "multiline":true,
            "defaultTextFormat":textFormat,
            "selectable":false,
            "autoSize":TextFieldAutoSize.LEFT
         });
         var mc:MovieClip = finisher.getEmbeddedMovieClip(class_123.method_27(type));
         animation = new class_1278(mc,mc.name);
         container = new Sprite();
         var background:Sprite = new Sprite();
         container.mouseEnabled = false;
         container.mouseChildren = false;
         background.addChild(new Bitmap(finisher.getEmbeddedBitmapData("bg")));
         animation.fps = class_22.const_46;
         animation.x = chestX;
         animation.y = -10;
         animation.play();
         container.addChild(background);
         container.addChild(animation);
         background.addChild(text);
         container.x = (class_51.var_39 - container.width) * 0.5;
         container.y = (class_51.var_40 - container.height) * 0.5;
         text.htmlText = class_47.method_22.method_28(resID);
         text.x = animation.x + animation.width + (background.width - animation.width - text.width) * 0.5 + xoffset;
         text.y = (background.height - text.height) * 0.5;
         class_47.method_24.var_12.addChild(container);
         animation.method_223(function():void
         {
            animation.stop();
         },mc.totalFrames - 1);
         delay(1000,function():void
         {
            TweenLite.to(container,0.5,{
               "alpha":0,
               "onComplete":function():void
               {
                  container.parent.removeChild(container);
               }
            });
         });
      }
      
      private final function method_1705(param1:class_14) : void
      {
         var _loc2_:class_542 = param1 as class_542;
         this.var_2187.method_55(_loc2_);
      }
   }
}
