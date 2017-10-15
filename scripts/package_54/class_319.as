package package_54
{
   import com.adobe.serialization.json.JSONToken;
   import com.adobe.serialization.json.JSONTokenType;
   import com.adobe.serialization.json.JSONTokenizer;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronMapListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuAscendTab;
   import com.bigpoint.seafight.view.popups.leaguemenu.controllers.LeagueMenuAscendTabController;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyIdItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.MenuComponentSkin;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.SlotList;
   import package_103.class_525;
   import package_104.class_640;
   import package_121.class_841;
   import package_14.class_47;
   import package_15.class_273;
   import package_152.class_852;
   import package_158.class_703;
   import package_171.class_1275;
   import package_177.class_1049;
   import package_177.class_1107;
   import package_177.class_1108;
   import package_177.class_1109;
   import package_177.class_1110;
   import package_177.class_1111;
   import package_202.class_1238;
   import package_204.class_1289;
   import package_204.class_1338;
   import package_36.class_100;
   import package_41.class_93;
   import package_49.class_880;
   import package_5.class_1047;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_7.class_441;
   import package_7.class_443;
   import package_8.class_16;
   import package_92.class_336;
   import package_92.class_962;
   import package_98.class_777;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_319 extends class_163
   {
      
      protected static const const_3:ILogger = Log.getLogger("SubMenActionBtn");
      
      protected static const const_35:int = 200;
      
      protected static const const_37:int = 45;
       
      
      private var var_437:TextField;
      
      private var var_342:TextField;
      
      private var var_2467:Number;
      
      private var var_2253:Number;
      
      private var var_373:MovieClip;
      
      public var var_1128:String = null;
      
      public function class_319(param1:MovieClip)
      {
         super(param1);
      }
      
      override public function method_413() : Boolean
      {
         return super.method_413() || var_643 < 1;
      }
      
      public final function method_2410(param1:XML, param2:SWFFinisher, param3:String, param4:XML = null) : void
      {
         var _loc5_:Object = null;
         name_16(param2,method_58(),param3,param4);
         this.method_2193(param1);
         var_130.x = param1.@icoOffset_x;
         var_130.y = param1.@icoOffset_y;
         this.var_2467 = param1.@cntOffset_y;
         this.var_2253 = param1.@cntOffset_x;
         _loc5_ = var_85.getStyle(param1.@infoTxtStyle);
         this.var_437 = new TextField();
         this.var_437.multiline = true;
         this.var_437.selectable = _loc5_.selectable == "true";
         this.var_437.mouseEnabled = _loc5_.mouseEnabled == "true";
         this.var_437.x = var_130.width + 5;
         this.var_437.y = 0;
         this.var_437.width = 155;
         this.var_437.height = const_37;
         this.var_437.wordWrap = true;
         this.var_437.defaultTextFormat = var_85.transform(_loc5_);
         addChild(this.var_437);
         var _loc6_:Object = var_85.getStyle(param1.@cntTxtStyle);
         var _loc7_:TextFormat = var_85.transform(_loc6_);
         _loc7_.color = method_449();
         this.var_342 = new TextField();
         this.var_342.autoSize = _loc6_.autoSize;
         this.var_342.multiline = _loc6_.multiline == "true";
         this.var_342.selectable = _loc6_.selectable == "true";
         this.var_342.mouseEnabled = _loc6_.mouseEnabled == "true";
         this.var_342.defaultTextFormat = _loc7_;
         this.var_342.x = this.var_373.width - this.var_2253;
         this.var_342.visible = false;
         addChild(this.var_342);
      }
      
      private final function method_2193(param1:XML) : void
      {
         this.var_373 = var_48.getEmbeddedMovieClip(param1.@bkgGfx);
         this.var_373.gotoAndStop(1);
         addChild(this.var_373);
         this.setChildIndex(this.var_373,this.getChildIndex(var_130));
      }
      
      override protected function method_352(param1:MouseEvent) : void
      {
         if(this.var_373)
         {
            this.var_373.gotoAndStop(2);
         }
      }
      
      override protected function method_416(param1:MouseEvent) : void
      {
         if(this.var_373)
         {
            this.var_373.gotoAndStop(1);
         }
      }
      
      override protected function method_799() : void
      {
         var _loc1_:TextFormat = null;
         super.method_799();
         if(this.var_342)
         {
            _loc1_ = this.var_342.defaultTextFormat;
            _loc1_.color = method_449();
            this.var_342.setTextFormat(_loc1_);
         }
      }
      
      public final function method_289(param1:String) : void
      {
         this.var_437.htmlText = param1;
         this.var_342.y = this.var_373.height - 20;
      }
      
      public final function method_255(param1:int) : void
      {
         visible = param1 > 0 || param1 == -1;
         var_643 = param1;
         this.var_342.visible = true;
         this.var_342.text = param1 >= int.MAX_VALUE?"∞":param1 >= 0?param1.toString():"";
         this.method_799();
      }
      
      override public function get width() : Number
      {
         return const_35;
      }
      
      public final function method_20() : String
      {
         return this.var_437.text;
      }
   }
}
