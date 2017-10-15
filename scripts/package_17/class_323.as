package package_17
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_44;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEventDispatcher;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.skins.target;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.common.SimpleHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildNameItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationData;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.utils.ObjectUtil;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_670;
   import org.osflash.signals.Signal;
   import package_10.class_18;
   import package_10.class_38;
   import package_111.class_1176;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_122.class_656;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_143.class_933;
   import package_147.class_572;
   import package_170.class_979;
   import package_173.class_1236;
   import package_185.class_1136;
   import package_204.thiz;
   import package_214.class_1559;
   import package_216.class_1575;
   import package_29.class_166;
   import package_29.class_57;
   import package_3.btn;
   import package_3.coolDownEffect;
   import package_36.class_100;
   import package_39.class_1366;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_89;
   import package_45.class_110;
   import package_46.class_1356;
   import package_47.class_129;
   import package_48.class_996;
   import package_49.class_137;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_51.class_1015;
   import package_51.class_1355;
   import package_51.class_148;
   import package_52.class_310;
   import package_53.class_1100;
   import package_53.class_157;
   import package_54.class_162;
   import package_69.class_1615;
   import package_69.class_978;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_323
   {
      
      private static var name_55:class_323;
      
      public static const const_1211:int = 0;
      
      public static const const_1426:int = 1;
      
      public static const const_1078:int = 2;
      
      public static const const_1108:int = 3;
      
      public static const const_1764:int = 4;
      
      public static const const_1793:int = 7;
      
      public static const const_1892:int = 11;
      
      public static const const_2794:int = 12;
      
      public static const const_1079:int = 13;
      
      public static const const_2710:int = 14;
      
      public static const const_1421:int = 15;
      
      public static const const_1053:int = 16;
       
      
      private var var_94:class_87;
      
      private var var_764:class_215;
      
      private var var_1058:int;
      
      private var var_1850:String = "";
      
      private var var_1795:XML = null;
      
      private var var_257:class_1100;
      
      private var var_1048:class_310;
      
      public function class_323(param1:Function)
      {
         this.var_94 = class_47.method_22;
         this.var_764 = class_47.method_24.var_12.messageBoxContainer;
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_323
      {
         if(name_55 == null)
         {
            name_55 = new class_323(method_976);
         }
         return name_55;
      }
      
      public final function method_2653(param1:String, param2:String, param3:Array = null, param4:Array = null, param5:int = -1, param6:int = -1) : class_1100
      {
         var _loc7_:int = !!param3?int(param3.length):0;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            param3[_loc8_] = this.var_94.method_28(param3[_loc8_]);
            _loc8_++;
         }
         this.var_257 = this.var_764.method_252(param4,param3);
         this.var_257.name_42(this.var_94.method_28(param1));
         this.var_257.method_295(this.var_94.method_28(param2));
         this.var_257.method_1556(param5);
         this.var_257.method_1203(param6);
         return this.var_257;
      }
      
      public final function method_2901(param1:String, param2:String, param3:Array, param4:Array = null, param5:Array = null, param6:int = -1, param7:int = -1) : class_1100
      {
         var _loc8_:int = !!param4?int(param4.length):0;
         var _loc9_:int = 0;
         while(_loc9_ < _loc8_)
         {
            param4[_loc9_] = this.var_94.method_28(param4[_loc9_]);
            _loc9_++;
         }
         this.var_257 = this.var_764.method_252(param5,param4);
         this.var_257.name_42(this.var_94.method_28(param1));
         var _loc10_:String = this.var_94.method_28(param2);
         var _loc11_:int = 0;
         while(_loc11_ < param3.length)
         {
            _loc10_ = _loc10_.replace("%" + (_loc11_ + 1),param3[_loc11_]);
            _loc11_++;
         }
         this.var_257.method_295(_loc10_);
         this.var_257.method_1556(param6);
         this.var_257.method_1203(param7);
         return this.var_257;
      }
      
      public final function method_547(param1:int, param2:String = "", param3:Array = null) : void
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(class_47.method_272.death)
         {
            return;
         }
         if(this.var_1058 == param1 && this.var_1850 == param2)
         {
            if(this.var_257 != null && this.var_257.parent != null && this.var_257.visible)
            {
               return;
            }
         }
         this.var_1058 = param1;
         this.var_1850 = param2;
         switch(param1)
         {
            case const_1211:
               _loc4_ = new Array(this.method_151);
               _loc5_ = new Array(this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleNotice");
               _loc7_ = class_13.method_78(param2,param3);
               break;
            case const_1892:
               _loc4_ = new Array(this.method_1886);
               _loc5_ = new Array(this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleError");
               _loc7_ = this.var_94.method_28("loginError_" + param2);
               break;
            case const_1079:
               _loc4_ = new Array(this.method_151,this.method_2679);
               _loc5_ = new Array(this.var_94.method_28("close"),this.var_94.method_28("tutorial_skip_popup_confirm"));
               _loc6_ = this.var_94.method_28("tutorial_skip_popup_headline");
               _loc7_ = this.var_94.method_28("tutorial_skip_popup");
               break;
            case const_1426:
               _loc4_ = new Array(this.method_2767,this.method_151);
               _loc5_ = new Array(this.var_94.method_28("buy"),this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleNotice");
               _loc7_ = this.var_94.method_28("no_pirates");
               break;
            case const_1421:
               _loc4_ = new Array(this.method_151);
               _loc5_ = new Array(this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("questLimitTitle");
               _loc7_ = this.var_94.method_28("questLimitText");
               break;
            case const_1078:
               _loc4_ = new Array(this.method_2115,this.method_151);
               _loc5_ = new Array(this.var_94.method_28("buy"),this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleNotice");
               _loc7_ = this.var_94.method_28("info_message_no_balls");
               break;
            case const_1108:
               _loc4_ = new Array(this.method_2399,this.method_151);
               _loc5_ = new Array(this.var_94.method_28("buy"),this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleNotice");
               _loc7_ = this.var_94.method_28("info_message_no_harps");
               break;
            case const_1764:
               _loc4_ = new Array(this.method_1707,this.method_151);
               _loc5_ = new Array(this.var_94.method_28("buy"),this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleNotice");
               _loc7_ = this.var_94.method_28("no_repair");
               break;
            case const_1793:
               _loc4_ = new Array(this.method_151);
               _loc5_ = new Array(this.var_94.method_28("close"));
               _loc6_ = this.var_94.method_28("msgTitleNotice");
               _loc7_ = this.var_94.method_28("logout_denied");
               break;
            case const_1053:
               _loc5_ = ["ok"];
               _loc4_ = [this.method_2068];
               break;
            default:
               return;
         }
         if(!_loc6_)
         {
            _loc6_ = this.var_94.method_28("msgTitleNotice");
         }
         if(!_loc7_)
         {
            _loc7_ = class_13.method_78(param2,param3);
         }
         this.var_257 = this.var_764.method_252(_loc4_,_loc5_);
         this.var_257.name_42(_loc6_);
         this.var_257.method_295(_loc7_);
      }
      
      private final function method_2068(param1:MouseEvent) : void
      {
         class_323.method_21().method_151(param1);
         class_154.method_562();
      }
      
      public final function method_2990(param1:int, param2:XML) : void
      {
         var _loc4_:Class = null;
         if(class_47.method_272.death)
         {
            return;
         }
         if(this.var_1058 == param1 && this.var_1795 == param2)
         {
            if(this.var_1048 != null && this.var_1048.parent != null && this.var_1048.visible)
            {
               return;
            }
         }
         this.var_1058 = param1;
         this.var_1795 = param2;
         var _loc3_:String = param2.@className;
         if(0)
         {
         }
         _loc4_ = class_310;
         this.var_1048 = new _loc4_(param2);
         this.var_764.method_2655(this.var_1048);
      }
      
      private final function method_2115(param1:MouseEvent) : void
      {
         var _loc2_:class_148 = new class_148(class_148.const_13);
         _loc2_.name_22 = new class_320();
         _loc2_.name_22.name_5 = class_54.const_949;
         class_54.method_21().method_129(_loc2_);
         this.method_151(param1);
      }
      
      private final function method_2399(param1:MouseEvent) : void
      {
         var _loc2_:class_148 = new class_148(class_148.const_13);
         _loc2_.name_22 = new class_320();
         _loc2_.name_22.name_5 = class_54.const_1003;
         class_54.method_21().method_129(_loc2_);
         this.method_151(param1);
      }
      
      public final function method_151(param1:MouseEvent = null, param2:Sprite = null) : void
      {
         this.var_1058 = -1;
         this.var_1850 = "";
         this.var_764.method_348(!!param1?(param1.target as DisplayObject).parent.parent:param2);
      }
      
      public final function method_3014(param1:MouseEvent) : void
      {
         this.var_1058 = -1;
         this.var_1795 = null;
         this.var_764.method_348((param1.target as DisplayObject).parent.parent,class_310);
      }
      
      private final function method_2679(param1:MouseEvent) : void
      {
         var _loc2_:class_148 = new class_148(class_148.const_13);
         _loc2_.name_22 = new class_320();
         _loc2_.name_22.name_5 = class_54.const_1156;
         class_54.method_21().method_129(_loc2_);
         this.method_151(param1);
      }
      
      private final function method_2767(param1:MouseEvent) : void
      {
         class_44.method_21().method_1288("PirateShop");
         this.method_151(param1);
      }
      
      private final function method_1707(param1:MouseEvent) : void
      {
         class_44.method_21().method_1288("RepairShop");
         this.method_151(param1);
      }
      
      public final function method_2912(param1:String, param2:String) : void
      {
         var _loc3_:Array = new Array(this.method_151);
         var _loc4_:Array = new Array(this.var_94.method_28("close"));
         var _loc5_:class_1100 = this.var_764.method_252(_loc3_,_loc4_);
         _loc5_.name_42(param1);
         _loc5_.method_295(param2);
      }
      
      private final function method_1886(param1:MouseEvent) : void
      {
         class_154.method_927();
      }
      
      public final function method_2971() : class_310
      {
         return this.var_1048;
      }
   }
}
