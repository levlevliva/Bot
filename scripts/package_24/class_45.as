package package_24
{
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildSearchListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentIslandsListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bit101.components.ListItem;
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   import flash.display.DisplayObjectContainer;
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
   import flash.text.TextFormatAlign;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_47;
   import package_140.class_540;
   import package_141.class_804;
   import package_150.class_587;
   import package_151.class_905;
   import package_158.class_728;
   import package_16.class_28;
   import package_171.class_1275;
   import package_20.class_982;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_565;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_115;
   import package_34.class_1499;
   import package_39.class_1367;
   import package_40.class_416;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_959;
   import package_5.class_123;
   import package_5.class_214;
   import package_52.class_306;
   import package_54.class_160;
   import package_54.class_163;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_9.class_91;
   import package_90.class_316;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.events.IndexChangeEvent;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   public final class class_45 extends Sprite
   {
      
      private static const const_2702:Number = 450;
      
      private static const const_1944:Number = 400;
      
      private static const const_523:Number = 4.28937489E9;
      
      private static const const_1268:Number = 4.294967295E9;
      
      private static const const_1786:int = 5;
       
      
      private var var_64:TextField;
      
      private var var_265:TextField;
      
      private var var_321:TextField;
      
      private var var_231:TextField;
      
      private var var_207:TextField;
      
      private var var_1036:int = 10;
      
      private var var_1320:int = 10;
      
      private var var_2455:int = 10;
      
      private var var_2492:int = 10;
      
      private var var_440:int = 10;
      
      private var var_1083:int = 450;
      
      private var var_2267:int = 400;
      
      private var var_430:TextFormat;
      
      private var var_1752:int = 0;
      
      private var var_1206:Timer;
      
      public function class_45(param1:String = "TITLE", param2:String = "content", param3:Boolean = true, param4:int = 450, param5:int = 400)
      {
         this.var_64 = new TextField();
         this.var_265 = new TextField();
         this.var_321 = new TextField();
         this.var_231 = new TextField();
         this.var_207 = new TextField();
         this.var_430 = new TextFormat();
         super();
         this.var_1206 = new Timer(100);
         this.var_1206.addEventListener(TimerEvent.TIMER,this.method_1230);
         visible = param3;
         this.var_430.align = TextFormatAlign.CENTER;
         this.var_430.font = "veranda";
         this.var_430.size = 10;
         this.var_430.bold = "bolder";
         this.var_430.color = const_523;
         var _loc6_:TextFormat = new TextFormat();
         _loc6_.align = TextFormatAlign.LEFT;
         _loc6_.font = "veranda";
         _loc6_.size = 15;
         _loc6_.bold = "bolder";
         _loc6_.color = const_523;
         this.addChild(this.var_64);
         this.var_64.defaultTextFormat = _loc6_;
         this.var_64.autoSize = TextFieldAutoSize.NONE;
         this.var_64.text = param1;
         this.var_64.selectable = false;
         this.var_64.mouseEnabled = false;
         this.var_64.height = 20;
         this.var_64.width = 1;
         var _loc7_:TextFormat = new TextFormat();
         _loc7_.align = TextFormatAlign.LEFT;
         _loc7_.font = "veranda";
         _loc7_.size = 10;
         _loc7_.color = const_523;
         this.addChild(this.var_265);
         this.var_265.defaultTextFormat = _loc7_;
         this.var_265.multiline = true;
         this.var_265.autoSize = TextFieldAutoSize.NONE;
         this.var_265.selectable = true;
         this.var_265.wordWrap = false;
         this.var_265.text = param2;
         this.var_265.scrollH = 100;
         this.addChild(this.var_231);
         this.var_231.defaultTextFormat = this.var_430;
         this.var_231.text = "▲ ▲ ▲ ▲ ▲ ▲ ▲";
         this.var_231.selectable = false;
         this.var_231.height = 17;
         this.var_231.autoSize = TextFieldAutoSize.NONE;
         this.var_231.addEventListener(MouseEvent.MOUSE_UP,this.method_1415);
         this.var_231.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2734);
         this.var_231.addEventListener(MouseEvent.MOUSE_OVER,this.method_730);
         this.var_231.addEventListener(MouseEvent.MOUSE_OUT,this.method_895);
         this.addChild(this.var_207);
         this.var_207.defaultTextFormat = this.var_430;
         this.var_207.text = "▼ ▼ ▼ ▼ ▼ ▼ ▼";
         this.var_207.selectable = false;
         this.var_207.height = 17;
         this.var_207.autoSize = TextFieldAutoSize.NONE;
         this.var_207.addEventListener(MouseEvent.MOUSE_UP,this.method_1415);
         this.var_207.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2421);
         this.var_207.addEventListener(MouseEvent.MOUSE_OVER,this.method_730);
         this.var_207.addEventListener(MouseEvent.MOUSE_OUT,this.method_895);
         this.addChild(this.var_321);
         this.var_321.defaultTextFormat = this.var_430;
         this.var_321.text = "CLOSE";
         this.var_321.selectable = false;
         this.var_321.height = 17;
         this.var_321.autoSize = TextFieldAutoSize.NONE;
         this.var_321.addEventListener(MouseEvent.MOUSE_UP,this.method_2827);
         this.var_321.addEventListener(MouseEvent.MOUSE_OVER,this.method_730);
         this.var_321.addEventListener(MouseEvent.MOUSE_OUT,this.method_895);
         this.alpha = 0.8;
         this.mouseEnabled = true;
         addEventListener(MouseEvent.MOUSE_DOWN,this.method_2505);
         addEventListener(MouseEvent.MOUSE_UP,this.method_1956);
         this.setSize(param4,param5);
      }
      
      private final function method_2734(param1:MouseEvent) : void
      {
         this.var_1752 = -1;
         this.method_1582();
      }
      
      private final function method_2421(param1:MouseEvent) : void
      {
         this.var_1752 = 1;
         this.method_1582();
      }
      
      private final function method_1415(param1:MouseEvent) : void
      {
         this.var_1206.stop();
         this.var_1752 = 0;
      }
      
      private final function method_1582() : void
      {
         this.var_1206.stop();
         this.var_1206.start();
         this.method_1230();
      }
      
      private final function method_1230(param1:TimerEvent = null) : void
      {
         this.var_265.scrollV = this.var_265.scrollV + this.var_1752 * const_1786;
      }
      
      private final function method_895(param1:MouseEvent) : void
      {
         this.var_430.color = const_523;
         TextField(param1.target).setTextFormat(this.var_430);
      }
      
      private final function method_730(param1:MouseEvent) : void
      {
         this.var_430.color = const_1268;
         TextField(param1.target).setTextFormat(this.var_430);
      }
      
      private final function method_2827(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private final function method_2505(param1:MouseEvent) : void
      {
         if(param1.target != this)
         {
            return;
         }
         startDrag();
      }
      
      private final function method_1956(param1:MouseEvent) : void
      {
         stopDrag();
      }
      
      private final function method_2694() : void
      {
         this.graphics.beginFill(0,0);
         this.graphics.drawRect(0,0,width,height);
         this.graphics.endFill();
      }
      
      private final function method_2478() : void
      {
         this.graphics.lineStyle(1,11184810);
         this.graphics.beginFill(3355443);
         this.graphics.drawRoundRectComplex(0,0,this.var_1083,this.var_2267,15,15,15,15);
         this.graphics.endFill();
         this.graphics.lineStyle(1,14540253);
         this.graphics.moveTo(this.var_1036,this.var_64.y + this.var_64.height + this.var_440 / 2);
         this.graphics.lineTo(this.var_1083 - this.var_1320,this.var_64.y + this.var_64.height + this.var_440 / 2);
         this.graphics.lineStyle(1,10066329,0.5);
         this.graphics.moveTo(this.var_1036,this.var_231.y + this.var_231.height + this.var_440 / 2);
         this.graphics.lineTo(this.var_1083 - this.var_1320,this.var_231.y + this.var_231.height + this.var_440 / 2);
         this.graphics.lineStyle(1,10066329,0.5);
         this.graphics.moveTo(this.var_1036,this.var_207.y - this.var_440 / 2);
         this.graphics.lineTo(this.var_1083 - this.var_1320,this.var_207.y - this.var_440 / 2);
         this.graphics.lineStyle(1,14540253);
         this.graphics.moveTo(this.var_1036,this.var_207.y + this.var_207.height + this.var_440 / 2);
         this.graphics.lineTo(this.var_1083 - this.var_1320,this.var_207.y + this.var_207.height + this.var_440 / 2);
      }
      
      private final function setSize(param1:Number, param2:Number) : void
      {
         this.method_2694();
         this.var_64.x = this.var_1036;
         this.var_64.y = this.var_2455;
         this.var_64.width = param1 - this.var_1036 - this.var_1320;
         this.var_231.x = this.var_64.x;
         this.var_231.width = this.var_64.width;
         this.var_231.y = this.var_64.y + this.var_64.height + this.var_440;
         this.var_265.x = this.var_64.x;
         this.var_265.width = this.var_64.width;
         this.var_265.y = this.var_231.y + this.var_231.height + this.var_440;
         this.var_321.x = this.var_64.x;
         this.var_321.width = this.var_64.width;
         this.var_321.y = param2 - this.var_2492 - this.var_321.height;
         this.var_207.x = this.var_64.x;
         this.var_207.width = this.var_64.width;
         this.var_207.y = this.var_321.y - this.var_440 - this.var_321.height;
         this.var_265.height = this.var_207.y - this.var_265.y - this.var_440;
         this.var_2267 = param2;
         this.var_1083 = param1;
         this.method_2478();
      }
      
      public final function method_3015() : void
      {
         this.var_265.text = "";
      }
      
      public final function method_2311(param1:String = "", param2:Boolean = true) : void
      {
         this.addText(param1 + "\n",param2);
      }
      
      private final function addText(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         this.var_265.appendText(param1);
         if(param2)
         {
            visible = true;
         }
         if(parent != null)
         {
            _loc3_ = parent;
            parent.removeChild(this);
            _loc3_.addChild(this);
         }
      }
   }
}
