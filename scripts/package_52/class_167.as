package package_52
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_111;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bit101.components.LabelBar;
   import com.bit101.components.List;
   import com.bit101.components.ScrollPane;
   import com.bit101.components.SeafightTextPanel;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_641;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_17.class_54;
   import package_29.class_57;
   import package_32.class_64;
   import package_34.class_107;
   import package_5.class_1012;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_158;
   import package_54.class_159;
   import package_54.class_161;
   import package_54.class_162;
   import package_54.class_319;
   import package_55.class_1017;
   import package_55.class_1018;
   import package_55.class_1019;
   import package_72.class_203;
   import package_95.class_341;
   import package_95.class_382;
   
   public class class_167 extends class_111
   {
      
      protected static const const_3:ILogger = Log.getLogger("SubMenu");
      
      protected static var var_629:Dictionary = new Dictionary();
      
      public static const const_220:String = "comingsoon";
      
      public static const const_1888:String = "iconpearls";
      
      public static const const_1413:String = "icongold";
      
      public static const const_1763:String = "amountfield";
      
      public static const const_1139:String = "subgfxbtn";
      
      private static const const_1845:String = "subMenuList";
      
      private static const const_1292:String = "subMenuTextPanelElement";
      
      protected static const const_151:String = ".subMenBtnInfoTxtYellow";
      
      protected static const const_1152:String = "subMenuBtn";
      
      protected static const const_1143:String = "subMenuText";
      
      protected static const const_1448:String = "subMenuSimpleButton";
      
      protected static const const_1618:String = "subMenuLabelBar";
      
      protected static const const_1508:String = "subMenuDynamicImageWithText";
      
      protected static const const_1559:String = "subMenuDynamicImageBorderedWithText";
      
      protected static const const_1482:String = "subMenuPlaceholder";
      
      protected static const const_1753:String = "subMenuTextArea";
      
      protected static const const_1800:String = "subMenuScrollPane";
       
      
      protected var var_112:class_87;
      
      protected var var_1516:class_88;
      
      protected var var_48:SWFFinisher;
      
      protected var var_18:XML;
      
      protected var var_100:Vector.<class_319>;
      
      protected var var_140:Vector.<class_158>;
      
      protected var var_519:Dictionary;
      
      protected var var_102:UserInterface;
      
      protected var var_85:StyleSheet;
      
      protected var var_64:Sprite;
      
      protected var var_210:TextField;
      
      protected var var_311:Boolean;
      
      protected var var_1994:Boolean;
      
      protected var var_221:class_159;
      
      protected var var_110:class_159;
      
      protected var var_122:class_159;
      
      protected var var_255:class_159;
      
      protected var var_398:class_319;
      
      protected var var_1809:Object;
      
      protected var var_1112:Sprite;
      
      public function class_167()
      {
         this.var_112 = class_47.method_22;
         this.var_1516 = class_47.method_37;
         this.var_519 = new Dictionary(true);
         this.var_1809 = new Object();
         super();
         this.mouseEnabled = false;
         this.var_1994 = false;
      }
      
      public static function method_2276(param1:int, param2:int) : String
      {
         var _loc3_:int = method_499(param1,param2);
         var _loc4_:String = null;
         switch(_loc3_)
         {
            case class_214.const_149:
            case class_214.const_69:
               _loc4_ = "ballBtn_";
               break;
            case class_214.const_135:
            case class_214.const_17:
               _loc4_ = "harpBtn_";
               break;
            case class_214.const_132:
            case class_214.const_26:
            case class_214.const_147:
            case class_214.const_23:
               _loc4_ = "actItmBtn_";
               break;
            case class_214.const_72:
               _loc4_ = "invItmBtn_";
               break;
            case class_214.const_38:
               _loc4_ = "vodoBtn_";
               break;
            default:
               const_3.warn("unhandled menu type: " + _loc3_);
         }
         return _loc4_;
      }
      
      public static function method_499(param1:int, param2:int) : int
      {
         return int(var_629[param2 + "_" + param1]) || -1;
      }
      
      public static function method_2925() : String
      {
         return "";
      }
      
      public function init(param1:XML, param2:StyleSheet, param3:SWFFinisher, param4:UserInterface) : void
      {
         this.var_102 = param4;
         this.var_18 = param1;
         this.var_48 = param3;
         this.var_85 = param2;
         var _loc5_:Object = this.var_85.getStyle(param1.@style);
         this.scaleX = _loc5_.scale;
         this.scaleY = _loc5_.scale;
         this.alpha = _loc5_.alpha;
         this.method_132(_loc5_.visible == "true");
         if(this.var_18.subMenuTitleConfig[0])
         {
            this.buildTitle();
         }
         if(this.var_18.subMenuCustomTitleConfig[0])
         {
            this.buildCustomTitle();
         }
         this.method_2608();
      }
      
      public function get method_2011() : int
      {
         return this.var_64.height;
      }
      
      public function set method_2350(param1:int) : void
      {
         this.var_64.getChildAt(0).width = param1;
      }
      
      public final function method_2885(param1:String) : void
      {
         this.var_210.htmlText = param1;
      }
      
      private final function buildTitle() : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:Bitmap = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Bitmap = null;
         var _loc7_:int = 0;
         var _loc8_:Bitmap = null;
         this.var_64 = new Sprite();
         var _loc1_:Object = this.var_85.getStyle(this.var_18.subMenuTitleConfig[0].@style);
         this.var_210 = new TextField();
         this.var_210.autoSize = _loc1_["autoSize"];
         this.var_210.multiline = _loc1_["multiline"] == "true";
         this.var_210.selectable = _loc1_["selectable"] == "true";
         this.var_210.mouseEnabled = _loc1_["mouseEnabled"] == "true";
         this.var_210.defaultTextFormat = this.var_85.transform(_loc1_);
         this.var_210.htmlText = this.var_112.method_28(this.var_18.@titleRes);
         var _loc2_:* = this.var_18.subMenuTitleConfig[0].@dynamicTitleGFX == "true";
         if(_loc2_)
         {
            this.var_1112 = new Sprite();
            _loc3_ = new Sprite();
            _loc4_ = this.var_48.getEmbeddedBitmap("headerBarLeft");
            _loc5_ = this.var_48.getEmbeddedBitmap("headerBarMiddle");
            _loc6_ = this.var_48.getEmbeddedBitmap("headerBarRight");
            _loc7_ = this.var_18.subMenuTitleConfig[0].@titleSize;
            _loc3_.addChild(_loc4_);
            while(_loc3_.width < _loc7_ - _loc6_.width)
            {
               _loc8_ = new Bitmap(_loc5_.bitmapData);
               _loc8_.x = _loc3_.width;
               _loc3_.addChild(_loc8_);
            }
            _loc6_.x = _loc3_.width;
            _loc3_.addChild(_loc6_);
            _loc3_.x = 0;
            _loc3_.y = 0;
            this.var_1112.addChild(_loc3_);
            this.var_64.addChild(this.var_1112);
            this.var_210.x = 2;
         }
         else
         {
            this.var_64.addChild(this.var_48.getEmbeddedBitmap(this.var_18.subMenuTitleConfig[0].@bkgGfx));
         }
         if(this.var_18.@xBtnGfx != undefined && this.var_18.@xBtnGfx != "")
         {
            this.var_122 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@xBtnGfx));
            this.var_122.x = new Number(this.var_64.x + this.var_64.width - this.var_122.width);
            this.var_122.addEventListener(MouseEvent.CLICK,this.method_189);
            this.var_64.addChild(this.var_122);
            class_64.method_21().method_84(this.var_122,class_13.method_78(this.var_102.getUIConfig().subMenuContainer[0].@closeTooltipKey));
         }
         if(this.var_18.@minimizeBtnGfx != undefined && this.var_18.@minimizeBtnGfx != "")
         {
            this.var_221 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@minimizeBtnGfx));
            this.var_221.x = new Number(this.var_64.x + this.var_64.width - this.var_221.width);
            if(this.var_122)
            {
               this.var_221.x = this.var_221.x - this.var_122.width;
            }
            this.var_221.addEventListener(MouseEvent.CLICK,this.method_1195);
            this.var_64.addChild(this.var_221);
            class_64.method_21().method_84(this.var_221,class_13.method_78(this.var_102.getUIConfig().subMenuContainer[0].@minimizeTooltipKey));
         }
         if(this.var_18.@stickyBtnGfx != undefined && this.var_18.@stickyBtnGfx != "")
         {
            this.var_110 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@stickyBtnGfx));
            this.var_110.x = new Number(this.var_64.x + this.var_64.width - this.var_110.width);
            if(this.var_122)
            {
               this.var_110.x = this.var_110.x - this.var_122.width;
            }
            if(this.var_221)
            {
               this.var_110.x = this.var_110.x - this.var_221.width;
            }
            if(this.var_311)
            {
               this.var_110.method_135.gotoAndStop(2);
            }
            this.var_110.addEventListener(MouseEvent.CLICK,this.method_1229);
            this.var_64.addChild(this.var_110);
            class_64.method_21().method_84(this.var_110,class_13.method_78(this.var_102.getUIConfig().subMenuContainer[0].@pinTooltipKey));
         }
         if(this.var_18.@miniBtnGfx != undefined && this.var_18.@miniBtnGfx != "")
         {
            this.var_255 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@miniBtnGfx));
            this.var_255.x = new Number(this.var_64.x + this.var_64.width - this.var_255.width);
            if(this.var_122)
            {
               this.var_255.x = this.var_255.x - this.var_122.width;
            }
            if(this.var_110)
            {
               this.var_255.x = this.var_255.x - this.var_110.width;
            }
            this.var_255.addEventListener(MouseEvent.CLICK,this.handleMiniClick);
            this.var_64.addChild(this.var_255);
         }
         this.var_64.addChild(this.var_210);
         addChild(this.var_64);
         if(!this.var_311)
         {
            this.var_64.addEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
         }
      }
      
      private final function buildCustomTitle() : void
      {
         var _loc8_:Bitmap = null;
         this.var_64 = new Sprite();
         var _loc1_:Object = this.var_85.getStyle(this.var_18.subMenuCustomTitleConfig[0].@style);
         this.var_210 = new TextField();
         this.var_210.autoSize = TextFieldAutoSize.LEFT;
         this.var_210.multiline = _loc1_["multiline"] == "true";
         this.var_210.selectable = _loc1_["selectable"] == "true";
         this.var_210.mouseEnabled = _loc1_["mouseEnabled"] == "true";
         this.var_210.defaultTextFormat = this.var_85.transform(_loc1_);
         this.var_210.htmlText = this.var_112.method_28(this.var_18.@titleRes);
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Bitmap = this.var_48.getEmbeddedBitmap(this.var_18.subMenuCustomTitleConfig[0].@bgGfx + "Left");
         var _loc5_:Bitmap = this.var_48.getEmbeddedBitmap(this.var_18.subMenuCustomTitleConfig[0].@bgGfx + "Middle");
         var _loc6_:Bitmap = this.var_48.getEmbeddedBitmap(this.var_18.subMenuCustomTitleConfig[0].@bgGfx + "Right");
         var _loc7_:int = this.var_18.subMenuCustomTitleConfig[0].@titleSize;
         _loc7_ = _loc7_ - 4;
         _loc3_.addChild(_loc4_);
         while(_loc3_.width < _loc7_ - _loc6_.width)
         {
            _loc8_ = new Bitmap(_loc5_.bitmapData);
            _loc8_.x = _loc3_.width;
            _loc3_.addChild(_loc8_);
         }
         _loc6_.x = _loc3_.width;
         _loc3_.addChild(_loc6_);
         _loc3_.x = 2;
         _loc3_.y = 2;
         _loc2_.addChild(_loc3_);
         _loc2_.graphics.lineStyle(1,9404775);
         _loc2_.graphics.moveTo(0,_loc3_.height + 4);
         _loc2_.graphics.lineTo(0,0);
         _loc2_.graphics.lineTo(_loc3_.width + 3,0);
         _loc2_.graphics.lineTo(_loc3_.width + 3,_loc3_.height + 4);
         this.var_64.addChild(_loc2_);
         this.var_210.x = _loc4_.width + 2;
         if(this.var_18.@xBtnGfx != undefined && this.var_18.@xBtnGfx != "")
         {
            this.var_122 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@xBtnGfx));
            this.var_122.x = new Number(this.var_64.x + this.var_64.width - this.var_122.width);
            this.var_122.addEventListener(MouseEvent.CLICK,this.method_189);
            this.var_64.addChild(this.var_122);
            class_64.method_21().method_84(this.var_122,class_13.method_78(this.var_102.getUIConfig().subMenuContainer[0].@closeTooltipKey));
         }
         if(this.var_18.@minimizeBtnGfx != undefined && this.var_18.@minimizeBtnGfx != "")
         {
            this.var_221 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@minimizeBtnGfx));
            this.var_221.x = new Number(this.var_64.x + this.var_64.width - this.var_221.width);
            if(this.var_122)
            {
               this.var_221.x = this.var_221.x - this.var_122.width;
            }
            this.var_221.addEventListener(MouseEvent.CLICK,this.method_1195);
            this.var_64.addChild(this.var_221);
            class_64.method_21().method_84(this.var_221,class_13.method_78(this.var_102.getUIConfig().subMenuContainer[0].@minimizeTooltipKey));
         }
         if(this.var_18.@stickyBtnGfx != undefined && this.var_18.@stickyBtnGfx != "")
         {
            this.var_110 = new class_159(this.var_48.getEmbeddedMovieClip(this.var_18.@stickyBtnGfx));
            this.var_110.x = new Number(this.var_64.x + this.var_64.width - this.var_110.width);
            if(this.var_122)
            {
               this.var_110.x = this.var_110.x - this.var_122.width;
            }
            if(this.var_221)
            {
               this.var_110.x = this.var_110.x - this.var_221.width;
            }
            if(this.var_311)
            {
               this.var_110.method_135.gotoAndStop(2);
            }
            this.var_110.addEventListener(MouseEvent.CLICK,this.method_1229);
            this.var_64.addChild(this.var_110);
            class_64.method_21().method_84(this.var_110,class_13.method_78(this.var_102.getUIConfig().subMenuContainer[0].@pinTooltipKey));
         }
         this.var_64.addChild(this.var_210);
         addChild(this.var_64);
         if(!this.var_311)
         {
            this.var_64.addEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
         }
      }
      
      private final function updateTitleSize(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            param1 = this.var_64.width;
         }
         if(this.var_18.@xBtnGfx != undefined && this.var_18.@xBtnGfx != "")
         {
            this.var_122.x = this.var_64.x + param1 - this.var_122.width;
         }
         if(this.var_18.@stickyBtnGfx != undefined && this.var_18.@stickyBtnGfx != "")
         {
            if(this.var_122)
            {
               this.var_110.x = int(this.var_64.x + param1 - this.var_122.width - this.var_110.width);
            }
            else
            {
               this.var_110.x = this.var_64.x + param1 - this.var_110.width;
            }
         }
      }
      
      protected function method_402(param1:MouseEvent) : void
      {
         this.var_64.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
         this.var_64.stage.addEventListener(MouseEvent.MOUSE_UP,this.method_673);
         var _loc2_:Rectangle = this.var_102.validStageArea.clone();
         _loc2_.right = _loc2_.right - this.width;
         _loc2_.bottom = _loc2_.bottom - this.method_485();
         this.startDrag(false,_loc2_);
      }
      
      protected function method_673(param1:MouseEvent) : void
      {
         this.var_64.stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_673);
         this.var_64.addEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
         this.stopDrag();
      }
      
      protected final function method_1229(param1:MouseEvent) : void
      {
         this.method_587();
         if(this.var_311)
         {
            class_107.name_3.method_95(var_37,this.x,var_46,this.y);
         }
         else
         {
            class_107.name_3.method_102(var_37,var_46);
         }
      }
      
      protected final function method_1195(param1:MouseEvent) : void
      {
      }
      
      protected function handleMiniClick(param1:MouseEvent) : void
      {
      }
      
      protected final function method_587() : void
      {
         if(this.var_110 != null)
         {
            if(!this.var_311)
            {
               this.var_64.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
               this.var_110.method_135.gotoAndStop(2);
               this.var_311 = true;
            }
            else
            {
               this.var_64.addEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
               this.var_110.method_135.gotoAndStop(1);
               this.var_311 = false;
            }
         }
      }
      
      protected function method_2608() : void
      {
         var _loc1_:String = null;
         var _loc2_:XML = null;
         this.var_100 = new Vector.<class_319>();
         this.var_140 = new Vector.<class_158>();
         for each(_loc2_ in this.var_18.children())
         {
            _loc1_ = _loc2_.name();
            if(_loc1_ == const_1152)
            {
               this.method_275(_loc2_);
            }
            else if(_loc1_ == const_1143)
            {
               this.method_363(_loc2_);
            }
            else if(_loc1_ == const_1845)
            {
               this.method_1979(_loc2_);
            }
            else if(_loc1_ == const_1448)
            {
               this.method_2814(_loc2_);
            }
            else if(_loc1_ == const_1292)
            {
               this.method_2083(_loc2_);
            }
            else if(_loc1_ == const_1618)
            {
               this.method_2075(_loc2_);
            }
            else if(_loc1_ == const_1482)
            {
               this.method_1850(_loc2_);
            }
            else if(_loc1_ == const_1508)
            {
               this.method_2247(_loc2_);
            }
            else if(_loc1_ == const_1559)
            {
               this.method_1777(_loc2_);
            }
            else if(_loc1_ == const_1753)
            {
               this.method_1644(_loc2_);
            }
            else if(_loc1_ == const_1800)
            {
               this.method_2783(_loc2_);
            }
         }
         this.method_1630();
         this.method_91();
      }
      
      protected final function method_363(param1:XML) : void
      {
         var _loc2_:class_158 = new class_158();
         _loc2_.alpha = Number(param1.@bkAlpha);
         _loc2_.graphics.beginFill(param1.@bkColor);
         _loc2_.graphics.drawRect(0,0,this.width,param1.@height);
         _loc2_.graphics.endFill();
         _loc2_.graphics.lineStyle(Number(param1.@borderThickness),Number(param1.@borderColor),Number(param1.@borderAlpha));
         _loc2_.graphics.lineTo(0,param1.@height - 1);
         _loc2_.graphics.lineTo(this.width - 1,param1.@height - 1);
         _loc2_.graphics.lineTo(this.width - 1,0);
         var _loc3_:TextField = new TextField();
         var _loc4_:Object = this.var_85.getStyle(param1.@style);
         _loc3_.defaultTextFormat = this.var_85.transform(_loc4_);
         _loc3_.x = param1.@leftText;
         _loc3_.y = param1.@topText;
         _loc3_.width = this.width - param1.@rightText - 1 - _loc3_.x;
         _loc3_.height = param1.@height - param1.@bottomText - 1 - _loc3_.y;
         _loc3_.border = true;
         _loc3_.wordWrap = true;
         _loc3_.multiline = true;
         _loc3_.selectable = true;
         _loc3_.mouseEnabled = true;
         _loc2_.addChild(_loc3_);
         this.var_1809[param1.@id] = _loc3_;
         addChild(_loc2_);
         _loc2_.method_404();
         this.var_140.push(_loc2_);
      }
      
      protected function method_275(param1:XML) : void
      {
         var _loc7_:MovieClip = null;
         if(class_13.method_796(param1.@debug))
         {
            if(!class_51.method_829())
            {
               return;
            }
         }
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:Bitmap = this.method_2739(param1.@gfx);
         _loc2_.addChild(this.var_48.getEmbeddedBitmap(const_1139));
         _loc3_.x = (_loc2_.width - _loc3_.width) * 0.5;
         _loc3_.y = (_loc2_.height - _loc3_.height) * 0.5;
         _loc2_.addChild(_loc3_);
         var _loc4_:class_319 = new class_319(_loc2_);
         _loc4_.var_1128 = param1.@textKey == null || String(param1.@textKey).length == 0?null:String(param1.@textKey);
         var _loc5_:int = param1.@id;
         var _loc6_:String = this.method_2521(_loc5_);
         if(_loc6_)
         {
            class_64.method_21().method_84(_loc4_,_loc6_);
         }
         else
         {
            _loc4_.method_1246(param1.@toolTipKey == null || String(param1.@toolTipKey).length == 0?null:String(param1.@toolTipKey));
         }
         _loc4_.method_303(this.var_85);
         _loc4_.method_162(param1.@onAction,_loc5_,class_206.method_124(param1.@inventoryCat));
         _loc4_.method_2410(this.var_18.subMenuBtnConfig[0],this.var_48,param1.@gfx,param1);
         _loc4_.addEventListener(class_148.const_13,this.method_129);
         _loc4_.var_1529 = int(param1.@coolDownDefault);
         _loc4_.method_372 = param1.@notOnBonusMap == "true";
         _loc4_.method_698 = this.method_2710(param1.@notUsableOnMaps);
         if(_loc4_.var_1128 != null)
         {
            _loc4_.method_289(this.var_112.method_28(_loc4_.var_1128));
         }
         _loc4_.method_404();
         if(param1.@isEmptyMsg == "1")
         {
            this.var_398 = _loc4_;
            this.var_398.visible = false;
            this.var_398.name_26 = true;
            this.var_398.method_924(false);
            this.var_398.name = param1.@gfx;
            return;
         }
         this.var_100.push(_loc4_);
         this.var_140.push(_loc4_);
         if(param1.@isSwitch == "true")
         {
            _loc7_ = new MovieClip();
            _loc7_.addChild(getSWFFinisher(class_123.const_152).getEmbeddedBitmap(this.var_18.@lockedStateGfx));
            _loc4_.method_400(null,_loc7_);
         }
      }
      
      protected final function method_118(param1:String, param2:int) : String
      {
         return "<b>" + class_47.method_37.method_32(param1,param2.toString()).toLocaleUpperCase() + "</b><br/>";
      }
      
      protected function method_2739(param1:String) : Bitmap
      {
         var bmp:Bitmap = null;
         var name:String = param1;
         try
         {
            bmp = this.var_48.getEmbeddedBitmap(name);
         }
         catch(e:Error)
         {
            bmp = var_48.getEmbeddedBitmap(const_220);
         }
         return bmp;
      }
      
      protected final function method_129(param1:class_148) : void
      {
         class_54.method_21().method_129(param1);
      }
      
      protected final function method_2710(param1:String) : int
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc2_:int = class_1012.const_140;
         var _loc3_:Array = !!param1?param1.split(class_22.const_1718):null;
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = class_1012.const_929[_loc4_];
            if(_loc5_ <= 0)
            {
               throw new class_57(_loc4_,this);
            }
            _loc2_ = _loc2_ - _loc5_;
         }
         return _loc2_;
      }
      
      protected final function method_1979(param1:XML) : void
      {
         var _loc2_:Object = this.var_85.getStyle(param1.@style);
         var _loc3_:Object = this.var_85.getStyle(param1.@alternateStyle);
         var _loc4_:com.bit101.components.List = new com.bit101.components.List(this,param1.@xPos,param1.@yPos,null,_loc2_,_loc3_);
         var _loc5_:String = param1.@id;
         _loc4_.width = param1.@width;
         _loc4_.height = param1.@height;
         _loc4_.defaultColor = param1.@listDefaultColor;
         _loc4_.selectedColor = param1.@listSelectedColor;
         _loc4_.rolloverColor = param1.@listRolloverColor;
         _loc4_.defaultAlpha = param1.@listDefaultAlpha;
         var _loc6_:String = String(param1.@listAlternateRows);
         if(_loc6_ == "true")
         {
            _loc4_.alternateRows = true;
            _loc4_.alternateColor = param1.@listAlternateColor;
            _loc4_.alternateAlpha = param1.@listAlternateAlpha;
         }
         _loc4_.listItemHeight = param1.@listItemHeight;
         if(_loc5_)
         {
            this.var_519[_loc5_] = _loc4_;
         }
      }
      
      protected final function method_2814(param1:XML) : void
      {
         var _loc2_:String = param1.@id;
         var _loc3_:MovieClip = new MovieClip();
         _loc3_.addChild(this.var_48.getEmbeddedBitmap(param1.@gfx));
         var _loc4_:class_1006 = new class_1006(_loc3_);
         _loc4_.x = param1.@xPos;
         _loc4_.y = param1.@yPos;
         var _loc5_:int = param1.@width;
         var _loc6_:int = param1.@height;
         if(_loc5_)
         {
            _loc4_.width = _loc5_;
         }
         if(_loc6_)
         {
            _loc4_.height = _loc6_;
         }
         _loc4_.method_106(this.var_112.method_28(param1.@labelRes));
         _loc4_.method_639(param1.@style);
         _loc4_.method_162(param1.@onAction);
         _loc4_.addEventListener(class_148.const_13,this.method_129);
         this.addChild(_loc4_);
         if(_loc2_)
         {
            this.var_519[_loc2_] = _loc4_;
         }
      }
      
      protected final function method_2075(param1:XML) : void
      {
         var _loc2_:Object = this.var_85.getStyle(param1.@style);
         var _loc3_:String = param1.@id;
         var _loc4_:LabelBar = new LabelBar(param1.@width,null,0,0,"",_loc2_);
         _loc4_.x = param1.@xPos;
         _loc4_.y = param1.@yPos;
         _loc4_.text = this.var_112.method_28(param1.@labelLocaID);
         this.addChild(_loc4_);
         if(_loc3_)
         {
            this.var_519[_loc3_] = _loc4_;
         }
      }
      
      protected final function method_2083(param1:XML) : void
      {
         var _loc2_:Object = this.var_85.getStyle(param1.@styleUpper);
         var _loc3_:Object = this.var_85.getStyle(param1.@styleLower);
         var _loc4_:String = param1.@id;
         var _loc5_:SeafightTextPanel = new SeafightTextPanel(param1.@bgGFX,_loc2_,_loc3_,this,param1.@xPos,param1.@yPos);
         if(_loc4_)
         {
            this.var_519[_loc4_] = _loc5_;
         }
      }
      
      protected final function method_2247(param1:XML) : class_1017
      {
         var _loc2_:String = param1.@id;
         var _loc3_:class_1017 = new class_1017(param1,this.var_85);
         _loc3_.method_387(this.var_48.getEmbeddedMovieClip(param1.@gfx));
         if(_loc2_)
         {
            this.var_519[_loc2_] = _loc3_;
         }
         return _loc3_;
      }
      
      protected final function method_1777(param1:XML) : class_1018
      {
         var _loc2_:String = param1.@id;
         var _loc3_:class_1018 = new class_1018(param1,this.var_85);
         _loc3_.method_2756(this.var_48.getEmbeddedMovieClip(param1.@borderGfx));
         _loc3_.method_387(this.var_48.getEmbeddedMovieClip(param1.@gfx));
         if(_loc2_)
         {
            this.var_519[_loc2_] = _loc3_;
         }
         return _loc3_;
      }
      
      protected final function method_1850(param1:XML) : Sprite
      {
         var _loc2_:String = param1.@id;
         var _loc3_:Sprite = new Sprite();
         if(_loc2_)
         {
            this.var_519[_loc2_] = _loc3_;
         }
         return _loc3_;
      }
      
      protected final function method_1644(param1:XML) : void
      {
         var _loc2_:String = param1.@id;
         var _loc3_:class_1019 = new class_1019(param1,this.var_85);
         _loc3_.method_257(this.var_112.method_28(param1.@textRes));
         if(_loc2_)
         {
            this.var_519[_loc2_] = _loc3_;
         }
      }
      
      protected final function method_2783(param1:XML) : void
      {
         var _loc2_:String = param1.@id;
         var _loc3_:ScrollPane = new ScrollPane(this,param1.@xPos,param1.@yPos);
         _loc3_.width = param1.@width;
         _loc3_.height = param1.@height;
         _loc3_.dragContent = false;
         if(_loc2_)
         {
            this.var_519[_loc2_] = _loc3_;
         }
      }
      
      public final function method_91() : void
      {
         var _loc4_:class_158 = null;
         if(this.var_140 == null)
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:int = this.var_140.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.var_140[_loc3_] as class_158;
            if(!_loc4_.visible)
            {
               if(_loc4_.parent != null)
               {
                  _loc4_.parent.removeChild(_loc4_);
               }
            }
            else
            {
               _loc1_++;
               this.positionContent(_loc1_,_loc4_);
            }
            _loc3_++;
         }
         if(_loc1_ == 0)
         {
            if(this.var_398 != null)
            {
               this.var_398.visible = true;
               this.positionContent(0,this.var_398);
            }
         }
         else if(this.var_398 != null)
         {
            if(this.var_398.name == "buyBtn")
            {
               this.var_398.visible = true;
               this.positionContent(_loc1_ + 1,this.var_398);
            }
         }
      }
      
      private final function positionContent(param1:int, param2:class_158) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:int = 1;
         var _loc4_:int = this.var_18.@hSpacer;
         var _loc5_:int = this.var_18.@vSpacer;
         _loc3_ = _loc3_ + int((param1 - 1) / 10);
         _loc6_ = param1 - (_loc3_ - 1) * 10;
         _loc7_ = _loc3_;
         if(_loc6_ == 0)
         {
            _loc6_ = 1;
         }
         param2.x = (param2.width + _loc4_) * (_loc7_ - 1);
         param2.y = this.method_2011 + (param2.method_2185 + _loc5_) * (_loc6_ - 1);
         if(!param2.parent)
         {
            addChild(param2);
         }
         this.method_2350 = param2.width * _loc3_;
         this.updateTitleSize(param2.width * _loc3_);
      }
      
      public final function method_27() : String
      {
         return this.var_18.@gfx;
      }
      
      public final function method_666(param1:Boolean = true) : void
      {
         this.var_311 = !param1;
         this.method_587();
      }
      
      public final function method_941() : void
      {
         if(!this.method_273())
         {
            return;
         }
         this.method_666(false);
         this.method_132(false);
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function method_189(param1:MouseEvent) : void
      {
         class_203.name_21(SoundEffectType.MENU_CLOSE);
         if(this.var_311)
         {
            this.method_587();
            class_107.name_3.method_102(var_37,var_46);
         }
         this.method_132(false);
      }
      
      public function get method_751() : Boolean
      {
         return this.var_311;
      }
      
      public function set method_440(param1:Boolean) : void
      {
         this.var_1994 = param1;
      }
      
      public function get method_440() : Boolean
      {
         return this.var_1994;
      }
      
      public final function method_1107(param1:String) : void
      {
         if(this.var_311)
         {
            return;
         }
         var _loc2_:class_162 = this.var_102.actionsBar.method_69(param1);
         var _loc3_:Point = _loc2_.localToGlobal(new Point());
         var _loc4_:Rectangle = this.var_102.validStageArea;
         var _loc6_:Point = new Point();
         if(this.var_102.actionsBar.method_2605())
         {
            _loc6_.x = _loc3_.x + _loc2_.width + 10;
            _loc6_.y = _loc3_.y;
            if(_loc6_.x > _loc4_.right - this.width)
            {
               _loc6_.x = _loc3_.x - this.width - 10;
            }
            _loc6_.y = Math.min(_loc4_.bottom - this.method_485(),_loc6_.y);
         }
         else
         {
            _loc6_.x = _loc3_.x;
            _loc6_.y = _loc3_.y - this.method_485() - 10;
            if(_loc6_.y < _loc4_.top)
            {
               _loc6_.y = _loc3_.y + _loc2_.height + 10;
            }
            _loc6_.x = Math.min(_loc6_.x,_loc4_.right - this.width);
         }
         this.x = _loc6_.x;
         this.y = _loc6_.y;
         if(class_12.var_104 == class_12.const_15)
         {
            this.y = this.y - UserInterface.MAXIMIZED_SCREEN_HEIGHT_EXCESS;
         }
      }
      
      public function placeOnCenter() : void
      {
         if(this.var_311)
         {
            this.method_587();
         }
         this.x = Math.round(class_51.var_39 / 2 - this.width / 2);
         this.y = Math.round(class_51.var_40 / 2 - this.method_485() / 2);
      }
      
      protected final function method_2987(param1:int, param2:int) : void
      {
         this.var_110.x = param1;
         this.var_110.y = param2;
      }
      
      protected final function method_2949(param1:int, param2:int) : void
      {
         this.var_210.x = param1;
         this.var_210.y = param2;
      }
      
      protected function method_1630() : void
      {
      }
      
      public function get method_3021() : Object
      {
         return this.var_1809;
      }
      
      public function get method_502() : Vector.<class_319>
      {
         return this.var_100;
      }
      
      public final function method_2039(param1:int) : class_319
      {
         var _loc2_:class_319 = null;
         for each(_loc2_ in this.var_100)
         {
            if(_loc2_.method_58().name_7 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public final function method_594(param1:int, param2:Boolean) : void
      {
         var _loc3_:class_319 = this.method_356(param1);
         if(_loc3_)
         {
            _loc3_.method_58().var_895 = param2;
         }
      }
      
      public final function method_356(param1:int) : class_319
      {
         var _loc2_:class_319 = null;
         for each(_loc2_ in this.var_100)
         {
            if(_loc2_.method_58().name_7 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public final function method_266(param1:String) : class_319
      {
         var _loc2_:class_319 = null;
         for each(_loc2_ in this.var_100)
         {
            if(_loc2_.method_58().name_5 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public final function method_2747(param1:Boolean) : void
      {
         var _loc2_:class_319 = null;
         for each(_loc2_ in this.var_100)
         {
            _loc2_.method_58().var_895 = param1;
         }
      }
      
      override public function method_88() : void
      {
         super.method_88();
         this.method_666(false);
      }
      
      public function method_132(param1:Boolean) : void
      {
         this.visible = param1;
      }
      
      public final function method_273() : Boolean
      {
         return this.visible;
      }
      
      public final function method_485() : int
      {
         return this.height;
      }
      
      public final function method_244() : class_319
      {
         return this.var_398;
      }
      
      protected final function method_2644(param1:int, param2:int) : void
      {
         graphics.beginFill(0,0.6);
         graphics.lineStyle(1,9404775);
         graphics.moveTo(0,0);
         graphics.lineTo(param1,0);
         graphics.lineTo(param1,param2);
         graphics.lineTo(0,param2);
         graphics.endFill();
      }
      
      protected function method_2521(param1:int) : String
      {
         return null;
      }
   }
}
