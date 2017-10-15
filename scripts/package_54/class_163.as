package package_54
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.display.utils.onCooldownToolTip;
   import com.bigpoint.seafight.model.inventory.type.Gem_Model;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.FleetContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.QuestContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.TradingContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.teamscore.component.CivilWarTeamScoreListItem;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.bitmapclip.initCollections;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.useraction.UserActionFailedReason;
   import org.osflash.signals.IOnceSignal;
   import package_100.class_1186;
   import package_100.class_598;
   import package_110.class_680;
   import package_121.class_841;
   import package_123.class_1032;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_48;
   import package_16.class_28;
   import package_17.class_325;
   import package_170.class_979;
   import package_216.class_1575;
   import package_23.class_42;
   import package_27.class_53;
   import package_29.class_143;
   import package_29.class_144;
   import package_32.class_64;
   import package_34.class_117;
   import package_34.class_73;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_9.class_76;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.TileLayout;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   public class class_163 extends class_162
   {
       
      
      protected var var_48:SWFFinisher;
      
      private var var_573:class_162;
      
      private var var_2363:String;
      
      private var var_1356:DisplayObject;
      
      private var var_1944:Boolean = false;
      
      private var var_1955:Boolean = true;
      
      private var var_1378:String = null;
      
      public var name_5:int = -1;
      
      public var var_2134:XML;
      
      public function class_163(param1:MovieClip)
      {
         super(param1);
         this.var_1356 = param1.parent;
         this.method_2469();
         method_1055();
         method_1377();
      }
      
      public final function method_3019() : void
      {
         method_123(this.method_413());
      }
      
      public final function method_1278(param1:class_162) : void
      {
         this.var_573 = param1;
      }
      
      override public function get method_374() : Boolean
      {
         return var_2013 > 0?var_1741 > 0:Boolean(super.method_374);
      }
      
      public final function name_16(param1:SWFFinisher, param2:class_320, param3:String, param4:XML = null) : void
      {
         this.var_2134 = param4;
         if(param1 && param2 && param3)
         {
            this.var_48 = param1;
            method_642(param2);
            this.var_2363 = param3;
            this.var_1944 = true;
         }
         else
         {
            this.var_1944 = false;
         }
         this.method_2732();
      }
      
      public function method_413() : Boolean
      {
         return var_2497 || method_372 && class_47.method_51.method_141(class_76.const_191);
      }
      
      public final function method_1902() : void
      {
         this.method_315(null);
      }
      
      override function method_315(param1:MouseEvent) : void
      {
         if(this.var_573)
         {
            this.var_573.method_315(param1);
         }
         else
         {
            super.method_315(param1);
         }
      }
      
      protected final function method_2732() : void
      {
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.method_1553);
      }
      
      protected final function method_1553(param1:Event = null) : void
      {
         this.removeEventListener(Event.REMOVED_FROM_STAGE,this.method_1553);
      }
      
      public final function method_1246(param1:String) : void
      {
         if(param1 != null)
         {
            this.var_1378 = param1;
         }
         if(this.var_1378 == null)
         {
            return;
         }
         if(this.var_1378.length == 0)
         {
            return;
         }
         class_64.method_21().method_84(this,class_47.method_22.method_28(this.var_1378));
      }
      
      override protected function method_452(param1:MouseEvent) : void
      {
         if(var_1415)
         {
            return;
         }
         super.method_452(param1);
         if(this.var_1955)
         {
            removeEventListener(MouseEvent.MOUSE_OUT,this.method_912);
         }
      }
      
      override protected function method_393(param1:MouseEvent) : void
      {
         if(var_1415)
         {
            return;
         }
         super.method_393(param1);
         if(this.var_1955)
         {
            addEventListener(MouseEvent.MOUSE_OUT,this.method_912);
         }
      }
      
      override protected function method_2469() : void
      {
         super.method_2469();
      }
      
      private final function method_912(param1:MouseEvent) : void
      {
         var _loc2_:class_155 = null;
         removeEventListener(MouseEvent.MOUSE_OUT,this.method_912);
         if(this.var_1944)
         {
            if(this.var_1356.parent.parent.parent is class_155)
            {
               _loc2_ = this.var_1356.parent.parent.parent as class_155;
               class_47.method_24.var_954.var_723 = _loc2_.var_222;
               this.name_5 = _loc2_.var_222;
               Log.getLogger("QuickBeltActionbutton").error("Quickbelt handleDragOut" + _loc2_.var_222);
            }
            class_47.method_24.var_954.method_2341(this.var_48,method_58(),this.var_2363,this.var_1356,this);
            class_47.method_24.var_12.createTransferClone(method_1558());
         }
      }
      
      public final function method_924(param1:Boolean) : void
      {
         this.var_1955 = param1;
      }
      
      public final function method_34() : void
      {
         if(!this.var_573)
         {
            return;
         }
         method_70(this.var_573.method_747);
         method_209(this.var_573.method_507());
         this.name_26 = this.var_573.name_26;
         method_123(this.name_26);
      }
      
      public function get method_2168() : String
      {
         return this.var_1378;
      }
      
      public function get name_35() : DisplayObject
      {
         return this.var_1356;
      }
      
      public function get method_2642() : class_162
      {
         return this.var_573;
      }
      
      override public function method_507() : int
      {
         return !!this.var_573?int(this.var_573.method_507()):int(super.method_507());
      }
   }
}
