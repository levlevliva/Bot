package package_54
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleWindowData;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.StatisticItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentBuffTab;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentDecksWindow;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentSailsWindow;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentStorageTab;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentWindow;
   import com.bit101.components.ListItem;
   import com.bit101.components.Style;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.IFlexDisplayObject;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.managers.PopUpManager;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import org.osflash.signals.SlotList;
   import package_101.class_511;
   import package_103.class_367;
   import package_104.class_628;
   import package_105.class_369;
   import package_107.class_693;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_120.class_919;
   import package_122.class_656;
   import package_123.class_652;
   import package_123.class_837;
   import package_127.class_753;
   import package_133.class_595;
   import package_136.class_926;
   import package_139.class_532;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_141.class_804;
   import package_15.class_273;
   import package_17.class_151;
   import package_170.class_979;
   import package_173.class_1016;
   import package_174.class_1592;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_188.class_1200;
   import package_2.*;
   import package_20.class_33;
   import package_202.class_1238;
   import package_22.class_645;
   import package_23.class_42;
   import package_25.class_295;
   import package_26.class_1086;
   import package_26.class_1319;
   import package_28.class_56;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_1099;
   import package_4.class_11;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_48.class_1534;
   import package_48.class_996;
   import package_48.class_999;
   import package_49.class_137;
   import package_5.class_1012;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_41;
   import package_5.class_945;
   import package_5.class_984;
   import package_51.class_1005;
   import package_51.class_1015;
   import package_51.class_148;
   import package_52.class_168;
   import package_53.class_157;
   import package_57.class_171;
   import package_6.class_14;
   import package_7.class_1039;
   import package_72.class_203;
   import package_8.class_114;
   import package_88.class_1014;
   import package_88.class_1093;
   import package_91.class_450;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.components.gridClasses.GridColumn;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_162 extends class_161 implements class_157
   {
       
      
      private var var_176:TextField;
      
      private var var_523:TextField;
      
      private var var_936:TextFormat;
      
      private var var_2265:int;
      
      private var var_1240:Boolean = true;
      
      private var var_522:class_1014;
      
      private var var_866:class_1016;
      
      private var var_1726:Bitmap;
      
      private var var_281:MovieClip;
      
      private var var_2410:BitmapData;
      
      private var var_593:TextField;
      
      private var var_607:Sprite;
      
      private var var_1250:Boolean;
      
      private var var_1512:int;
      
      private var var_2260:Boolean = false;
      
      private var var_1972:Boolean;
      
      public var var_1415:Boolean = false;
      
      protected var var_1741:int;
      
      protected var var_2013:int;
      
      protected var var_643:int;
      
      protected var var_85:StyleSheet;
      
      public var var_1529:int = 60;
      
      public function class_162(param1:MovieClip)
      {
         super(param1);
         this.var_1250 = false;
         this.var_281 = param1;
         this.var_1512 = class_1012.const_140;
         this.var_643 = -1;
         this.saveSkin();
      }
      
      public final function method_303(param1:StyleSheet) : void
      {
         this.var_85 = param1;
      }
      
      public final function method_338(param1:XML, param2:Bitmap) : void
      {
         var _loc4_:Sprite = null;
         var _loc3_:Object = this.var_85.getStyle(param1.@style);
         if(!this.var_176)
         {
            this.var_176 = new TextField();
            this.var_176.multiline = _loc3_.multiline == "true";
            this.var_176.selectable = _loc3_.selectable == "true";
            this.var_176.mouseEnabled = _loc3_.mouseEnabled == "true";
            this.var_176.border = _loc3_["border"] == "true";
            this.var_176.background = _loc3_["background"] == "true";
            this.var_176.backgroundColor = _loc3_["backgroundColor"];
            _loc4_ = new Sprite();
            _loc4_.graphics.beginFill(0,0.5);
            _loc4_.graphics.drawRect(param1.@xPos,new Number(param1.@yPos) + 2,param1.@width,new Number(param1.@height) - 3);
            _loc4_.graphics.endFill();
            addChild(_loc4_);
         }
         this.var_176.width = param1.@width;
         this.var_176.height = param1.@height;
         this.var_176.x = param1.@xPos;
         this.var_176.y = param1.@yPos;
         if(!this.var_936)
         {
            this.var_936 = new TextFormat();
            this.var_936 = this.var_85.transform(_loc3_);
            this.var_936.color = this.method_449();
         }
         this.var_176.defaultTextFormat = this.var_936;
         this.var_607 = new Sprite();
         this.var_607.addChild(param2);
         this.var_607.x = Math.round(this.var_176.x + this.var_176.width / 2 - this.var_607.width / 2);
         this.var_607.y = Math.round(this.var_176.y + this.var_176.height / 2 - this.var_607.height / 2);
         this.var_607.visible = false;
         this.addChild(this.var_607);
         this.addChild(this.var_176);
      }
      
      protected final function method_1377() : void
      {
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 29440;
         _loc1_.size = 10;
         _loc1_.font = "Tahoma";
         this.var_523 = new TextField();
         this.var_523.mouseEnabled = false;
         this.var_523.width = 20;
         this.var_523.height = this.height;
         this.var_523.x = 3;
         this.var_523.y = -1;
         this.var_523.defaultTextFormat = _loc1_;
         this.var_523.text = "";
         this.var_523.filters = [new GlowFilter(0,1,2,2,10)];
         addChild(this.var_523);
      }
      
      protected final function method_449() : int
      {
         return this.var_1741 > this.var_643 || this.var_643 == 0?16711680:16777215;
      }
      
      protected function method_799() : void
      {
         if(this.var_176)
         {
            this.var_936.color = this.method_449();
            this.var_176.setTextFormat(this.var_936);
         }
      }
      
      public final function method_888(param1:int, param2:int) : void
      {
         this.var_1741 = param1;
         this.var_2013 = param2;
         this.var_523.text = param1 <= 0?"":param1.toString();
         this.method_799();
      }
      
      public final function method_2499(param1:XML) : void
      {
         this.var_522 = new class_1014(param1.@maxWidth,param1.@height);
         this.var_522.x = param1.@xPos;
         this.var_522.y = param1.@yPos;
         addChild(this.var_522);
      }
      
      public final function method_209(param1:int, param2:Boolean = false, param3:Boolean = true) : void
      {
         this.var_643 = param1;
         if(this.var_176 == null || this.var_643 < 0)
         {
            return;
         }
         if(!param2)
         {
            if(param1 < 1000000 && param1 >= 0)
            {
               this.var_607.visible = false;
               this.var_176.text = this.var_643.toString();
            }
            else
            {
               this.var_176.text = "";
               if(!isNaN(param1))
               {
                  this.var_607.visible = true;
               }
            }
         }
         else if(param2)
         {
            this.method_2091(param1);
         }
         this.method_2744(param1,param3);
         this.method_799();
      }
      
      private final function method_2091(param1:Number) : void
      {
         var _loc2_:int = Math.round(100 / 100000 * param1);
         this.var_522.method_34(_loc2_);
      }
      
      private final function method_2744(param1:Number, param2:Boolean = true) : void
      {
         if(param2 && param1 < this.var_2265)
         {
            if(method_471 == class_160.const_233)
            {
               return;
            }
            this.method_167(class_160.const_233);
            this.method_191();
            this.method_837(true);
         }
         else if(this.var_1240)
         {
            if(method_471 == class_160.const_146)
            {
               return;
            }
            this.method_167(class_160.const_146);
            this.method_837(false);
            this.method_246();
         }
         else
         {
            if(method_471 == class_160.const_271)
            {
               return;
            }
            this.method_167(class_160.const_271);
            this.method_837(false);
            this.method_191();
         }
      }
      
      public final function method_1537(param1:BitmapData) : void
      {
         var _loc3_:DisplayObject = null;
         try
         {
            _loc3_ = this.var_281.getChildAt(0);
            this.var_281.removeChild(_loc3_);
         }
         catch(e:Error)
         {
         }
         var _loc2_:Bitmap = new Bitmap(param1);
         this.var_281.addChild(_loc2_);
         setChildIndex(this.var_281,0);
      }
      
      public final function method_748(param1:Bitmap, param2:XML) : void
      {
         var _loc3_:Object = this.var_85.getStyle(param2.@style);
         this.var_1726 = param1;
         this.var_1726.x = this.var_281.width - param1.width;
         this.var_1726.y = 0;
         addChild(this.var_1726);
         this.var_593 = new TextField();
         this.var_593.multiline = _loc3_.multiline == "true";
         this.var_593.selectable = _loc3_.selectable == "true";
         this.var_593.mouseEnabled = _loc3_.mouseEnabled == "true";
         this.var_593.autoSize = _loc3_.autoSize;
         this.var_593.x = this.var_281.width - param1.width;
         this.var_593.y = -4;
         var _loc4_:TextFormat = new TextFormat();
         _loc4_ = this.var_85.transform(_loc3_);
         _loc4_.bold = _loc3_.bold == "true";
         this.var_593.defaultTextFormat = _loc4_;
         addChild(this.var_593);
         this.method_492("X");
      }
      
      public final function method_492(param1:String) : void
      {
         this.var_593.text = param1;
      }
      
      public final function method_2081() : class_1016
      {
         if(this.var_1250)
         {
            return null;
         }
         this.var_866 = new class_1016(this,this.var_281.width,this.var_281.height,var_401);
         this.var_866.addEventListener(class_1005.const_506,this.method_538);
         this.var_866.x = this.var_281.x;
         this.var_866.y = this.var_281.y;
         addChild(this.var_866);
         return this.var_866;
      }
      
      public final function method_538(param1:class_1005 = null) : void
      {
         if(param1 == null)
         {
            dispatchEvent(new class_1015(class_1015.const_568));
            return;
         }
         this.var_866.removeEventListener(class_1005.const_506,this.method_538);
         removeChild(this.var_866);
         this.var_1250 = false;
      }
      
      private final function method_1997() : BitmapData
      {
         var _loc1_:BitmapData = new BitmapData(this.var_281.width,this.var_281.height);
         var _loc2_:int = this.var_281.currentFrame;
         this.var_281.gotoAndStop(1);
         _loc1_.draw(this.var_281);
         this.var_281.gotoAndStop(_loc2_);
         return _loc1_;
      }
      
      private final function saveSkin() : void
      {
         this.var_2410 = this.method_1997();
      }
      
      public final function method_1558() : BitmapData
      {
         return this.var_2410;
      }
      
      public final function method_123(param1:Boolean) : void
      {
         if(this.var_1240 == param1)
         {
            return;
         }
         this.var_1240 = param1;
         if(!this.var_1240)
         {
            method_167(class_160.const_271);
            method_191();
            var_587 = false;
            method_251();
         }
         else
         {
            method_167(class_160.const_563);
            method_191();
            var_587 = true;
            method_659();
         }
      }
      
      public function set name_28(param1:Boolean) : void
      {
         this.var_1240 = param1;
      }
      
      override function method_315(param1:MouseEvent) : void
      {
         if(this.var_1415)
         {
            return;
         }
         if(!this.method_374 || this.var_1972)
         {
            return;
         }
         super.method_315(param1);
      }
      
      public final function method_855(param1:int) : Boolean
      {
         return (this.var_1512 & param1) > 0;
      }
      
      public final function method_1081(param1:int) : void
      {
         this.var_1972 = true;
         class_62.name_3.method_200(new class_1013(this.method_2712,null),param1);
      }
      
      private final function method_2712() : void
      {
         this.var_1972 = false;
      }
      
      public function set method_2271(param1:int) : void
      {
         this.var_2265 = param1;
      }
      
      public function get method_350() : Boolean
      {
         return this.var_1250;
      }
      
      public function set method_350(param1:Boolean) : void
      {
         this.var_1250 = param1;
      }
      
      public function get method_374() : Boolean
      {
         return !this.method_350;
      }
      
      public function get method_372() : Boolean
      {
         return this.var_2260;
      }
      
      public function set method_698(param1:int) : void
      {
         this.var_1512 = param1;
      }
      
      public function get method_698() : int
      {
         return this.var_1512;
      }
      
      public function set method_372(param1:Boolean) : void
      {
         this.var_2260 = param1;
      }
      
      public final function method_1212() : int
      {
         return this.var_1741;
      }
      
      public final function method_1323() : int
      {
         return this.var_2013;
      }
      
      public function method_507() : int
      {
         return this.var_643;
      }
   }
}
