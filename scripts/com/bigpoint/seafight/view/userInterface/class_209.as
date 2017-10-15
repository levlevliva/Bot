package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_104.class_641;
   import package_105.class_369;
   import package_105.class_529;
   import package_107.class_693;
   import package_14.class_118;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_140.class_540;
   import package_152.class_801;
   import package_166.class_961;
   import package_17.class_151;
   import package_17.class_37;
   import package_17.class_54;
   import package_170.class_979;
   import package_174.class_1373;
   import package_177.class_1049;
   import package_185.class_1136;
   import package_213.class_1522;
   import package_214.class_1556;
   import package_216.class_1575;
   import package_23.class_42;
   import package_25.class_291;
   import package_26.class_1070;
   import package_28.class_198;
   import package_32.class_64;
   import package_36.class_100;
   import package_39.class_1367;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1455;
   import package_47.class_935;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_939;
   import package_51.class_1005;
   import package_51.class_148;
   import package_52.class_1096;
   import package_54.class_161;
   import package_54.class_319;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_1442;
   import package_72.class_203;
   import package_84.class_270;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_209 extends class_149
   {
      
      public static const const_242:int = 0;
      
      public static const const_76:int = 1;
      
      public static const const_794:int = 2;
      
      public static const const_177:int = 3;
      
      public static const const_1329:uint = 4.29490176E9;
      
      public static const const_159:uint = 4.294940928E9;
      
      private static const const_629:XML = <navigationMenu gfx="navMenu" xPos="-13" yPos="44" fadeInXpos="-140" style=".standard">
			<mask xPos="-178" yPos="34" width="200" height="100"/>
			<xAxisText width="28" height="18.5" xPos="54" yPos="43" style=".navAxisTextfield"/>
			<yAxisText width="28" height="18.5" xPos="89" yPos="43" style=".navAxisTextfield"/>
			<navOkBtn onAction="navigationTo" gfx="btn_nav_ok" tooltipKey="tooltip_miniMap_navMenu_ok" xPos="112" yPos="35"/>
			<navCloseBtn onAction="navigation" gfx="btn_nav_close" tooltipKey="tooltip_miniMap_navMenu" xPos="0" yPos="22"/>
		</navigationMenu>;
      
      private static const const_1405:String = ".standard";
      
      private static const const_305:uint = 90;
      
      private static const const_274:uint = 90;
      
      private static const const_1092:uint = 28;
      
      private static const const_1103:uint = 41;
      
      private static const const_1232:uint = 1;
      
      private static const const_1704:uint = 4.27825536E9;
      
      private static const const_940:uint = 4.294932983E9;
      
      private static const const_1440:uint = 2.583625983E9;
      
      private static const const_1821:uint = 255;
      
      private static const const_1635:uint = 255;
      
      private static const const_1365:uint = 255;
      
      private static const const_1589:uint = 0;
      
      private static const const_1424:uint = 1000;
      
      private static const const_1316:String = "showWorldMap";
      
      private static var var_193:Bitmap;
      
      private static var var_2090:Rectangle;
      
      private static var var_238:Sprite;
      
      private static var var_591:Sprite = new Sprite();
      
      private static var var_787:int = 0;
      
      private static var var_1312:uint = method_140(class_51.var_39);
      
      private static var var_1329:uint = method_138(class_51.var_40);
       
      
      private var var_2141:uint;
      
      private var var_2452:Number = 0.1;
      
      private var var_2203:int = 3;
      
      private var var_1314:int;
      
      private var var_2465:Boolean = false;
      
      private var var_1807:Boolean;
      
      private var var_360:class_1094;
      
      private var var_151:TextField;
      
      private var var_989:class_1096;
      
      private var var_1768:Point;
      
      private var var_48:SWFFinisher;
      
      private var var_102:UserInterface;
      
      private var var_703:Loader;
      
      private var var_85:StyleSheet;
      
      private var var_1133:Dictionary;
      
      private var var_1592:Boolean;
      
      private var var_667:PingButton;
      
      private var var_1082:MapTypeScroller;
      
      private var var_594:class_161;
      
      public function class_209(param1:UserInterface)
      {
         this.var_1314 = this.var_2203;
         super();
         this.var_1768 = class_47.name_37.var_120;
         this.var_102 = param1;
         var_37 = class_43.const_473;
         var_46 = class_43.const_536;
         this.var_1133 = new Dictionary();
         this.mouseEnabled = false;
         this.name_16();
      }
      
      private static function method_638() : void
      {
         var_591.graphics.clear();
         var_591.graphics.lineStyle(1,16777215,0.6);
         var_591.graphics.drawRect(0,0,var_1312,var_1329);
      }
      
      private static function method_140(param1:int) : int
      {
         return const_305 * param1 / class_51.var_548;
      }
      
      private static function method_138(param1:int) : int
      {
         return const_274 * param1 / class_51.var_526;
      }
      
      private static function method_568(param1:int) : int
      {
         return class_51.var_548 * param1 / const_305;
      }
      
      private static function method_595(param1:int) : int
      {
         return class_51.var_526 * param1 / const_274;
      }
      
      public static function method_726(param1:Number) : void
      {
         var_1312 = method_140(class_51.var_39 / param1);
         var_1329 = method_138(class_51.var_40 / param1);
         method_638();
      }
      
      public static function method_1245() : int
      {
         if(++var_787 >= int.MAX_VALUE)
         {
            var_787 = 1;
         }
         return var_787;
      }
      
      public function get method_871() : class_1094
      {
         return this.var_360;
      }
      
      public function get method_632() : class_1096
      {
         return this.var_989;
      }
      
      public final function method_1533(param1:int) : void
      {
         var request:URLRequest = null;
         var map_id:int = param1;
         this.method_1072();
         if(this.var_703)
         {
            removeChild(this.var_703);
         }
         this.var_703 = new Loader();
         this.var_703.x = const_1092;
         this.var_703.y = const_1103;
         var url:String = class_42.method_47(class_51.var_1576 + "mm" + map_id + ".png");
         request = new URLRequest(url);
         this.var_703.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
         {
            const_3.error("ERROR LOADING minimap: " + request.url);
         });
         const_3.info("LOADING minimap: " + request.url);
         this.var_703.load(request);
         addChild(this.var_703);
         setChildIndex(this.var_703,1);
      }
      
      public final function method_1452(param1:int, param2:int, param3:int = 16777215) : void
      {
         var _loc4_:class_1095 = new class_1095(param3);
         _loc4_.x = method_140(param1);
         _loc4_.y = method_138(param2);
         var_238.addChild(_loc4_);
      }
      
      private final function name_16() : void
      {
         this.var_48 = class_42.method_21().var_287.getFinisher("miniMapRes") as SWFFinisher;
         this.var_85 = this.var_102.getStyleSheet();
         this.method_2842();
         this.var_360 = new class_1094();
         var_193 = new Bitmap(new BitmapData(const_305,const_274,true,0));
         var_2090 = var_193.bitmapData.rect;
         var_238 = new Sprite();
         var_238.x = const_1092;
         var_238.y = const_1103;
         var_238.addChild(var_193);
         var_238.mouseEnabled = true;
         addChild(var_238);
         var _loc1_:Timer = new Timer(const_1424);
         _loc1_.addEventListener(TimerEvent.TIMER,this.method_1297);
         _loc1_.start();
         method_638();
         var_591.x = const_305 / 2;
         var_591.y = const_274 / 2;
         addChild(var_591);
         class_37.method_21().addEventListener(class_198.const_1033,this.method_1962);
         var_238.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2602);
         this.method_768(true);
         this.method_2417();
         this.var_151 = new TextField();
         this.var_151.x = 57;
         this.var_151.y = 112;
         this.var_151.multiline = false;
         this.var_151.selectable = true;
         this.var_151.mouseEnabled = false;
         this.var_151.border = false;
         this.var_151.defaultTextFormat = this.var_85.transform(this.var_85.getStyle(const_1405));
         this.var_151.visible = false;
         addChild(this.var_151);
         class_47.method_29.addEventListener(class_1070.const_1019,this.method_1192);
      }
      
      private final function method_1192(param1:class_1070 = null) : void
      {
         this.var_989.method_132(class_47.method_29.method_56.var_1352);
         this.var_1082.setActive(class_47.method_29.method_56.var_1245 == 1);
      }
      
      public final function method_1303() : void
      {
         if(this.var_360.parent == null)
         {
            this.method_1160();
         }
         else
         {
            this.closeWorldMap();
         }
         this.var_360.method_464 = null;
      }
      
      public final function method_1160(param1:Function = null) : void
      {
         if(this.var_360.parent != null)
         {
            return;
         }
         class_203.name_21(SoundEffectType.MENU_OPEN);
         this.var_594.method_70(true);
         this.var_360.method_1709();
         this.var_360.method_464 = param1;
         stage.addChild(this.var_360);
      }
      
      public final function method_1715() : void
      {
         if(this.var_360.method_464 != null)
         {
            this.closeWorldMap();
         }
      }
      
      private final function closeWorldMap() : void
      {
         if(this.var_360.parent == null)
         {
            return;
         }
         class_203.name_21(SoundEffectType.MENU_CLOSE);
         this.var_360.parent.removeChild(this.var_360);
         this.var_594.method_70(false);
      }
      
      private final function method_2602(param1:MouseEvent) : void
      {
         if(this.var_1592)
         {
            this.var_1592 = false;
            class_11.method_21().method_1567(method_568(Math.max(Math.min(var_238.mouseX,const_305),0)),method_595(Math.max(Math.min(var_238.mouseY,const_274),0)),true);
         }
         else
         {
            var_238.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.method_794);
            var_238.stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1017);
            this.method_794(param1);
         }
      }
      
      private final function method_794(param1:MouseEvent) : void
      {
         var _loc3_:int = var_238.mouseX + 1;
         var _loc4_:int = var_238.mouseY + 1;
         class_37.method_21().method_466();
         class_37.method_21().method_913(method_568(Math.max(Math.min(_loc3_,const_305),0)),method_595(Math.max(Math.min(_loc4_,const_274),0)));
      }
      
      private final function method_1017(param1:MouseEvent) : void
      {
         var_238.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_794);
         var_238.stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1017);
      }
      
      private final function method_1297(param1:TimerEvent = null) : void
      {
         if(!class_220.method_280(class_220.const_214))
         {
            return;
         }
         this.var_1314--;
         if(this.var_1314 <= 0)
         {
            this.method_1072();
            this.var_1314 = this.var_2203;
         }
         this.method_54();
         if(this.var_2465)
         {
            this.method_2245(class_47.method_165.method_886(),const_1440);
         }
         this.method_2324();
         if(this.var_1807)
         {
            this.method_1611(class_47.method_29.method_282());
            this.method_2690(class_11.method_21().method_1943());
            this.method_1068(class_47.method_267.method_1137(),-1,true);
         }
         else if(class_47.method_29.method_56.var_1245 == const_1232)
         {
            this.method_1068(class_47.method_267.method_1137(),this.var_2141,false);
         }
         this.method_397(method_140(class_47.method_29.method_75.name_6.x),method_138(class_47.method_29.method_75.name_6.y),const_1704);
         var _loc2_:Array = class_118.method_436(class_47.method_29.method_56.var_61,class_47.method_29.method_56.var_63);
         this.var_151.text = class_47.method_51.method_699() + "|" + class_118.method_1336(_loc2_[0],2) + _loc2_[1];
      }
      
      private final function method_2324() : void
      {
         var _loc2_:class_961 = null;
         var _loc1_:* = class_47.method_29.method_56.var_1245 == const_1232;
         for each(_loc2_ in this.var_1133)
         {
            if(!(_loc1_ && !this.var_1807 && _loc2_.method_789() == const_159))
            {
               this.method_397(method_140(_loc2_.method_1234),method_138(_loc2_.method_1273),_loc2_.method_789(),_loc2_.method_1213());
            }
         }
      }
      
      private final function method_2690(param1:Array) : void
      {
         var _loc3_:class_91 = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = class_91(param1[_loc2_]);
            _loc4_ = (_loc3_.var_9 + _loc3_.var_8) * 20;
            _loc5_ = (_loc3_.var_9 - _loc3_.var_8) * 14;
            this.method_397(method_140(_loc4_),method_138(_loc5_),const_940);
            _loc2_++;
         }
      }
      
      private final function method_1072() : void
      {
         var _loc1_:int = const_1635 * this.method_773();
         var _loc2_:int = const_1365 * this.method_773();
         var _loc3_:int = const_1589 * this.method_773();
         this.var_2141 = (const_1821 << 4 * 2 * 3) + (_loc1_ << 4 * 2 * 2) + (_loc2_ << 4 * 2 * 1) + _loc3_;
      }
      
      private final function method_773() : Number
      {
         return 1 - Math.random() * this.var_2452;
      }
      
      public final function method_54() : void
      {
         var_193.bitmapData.fillRect(var_2090,0);
      }
      
      public final function method_768(param1:Boolean) : void
      {
         this.var_1807 = param1;
         this.var_1082.setShowShips(param1);
         this.method_1297();
      }
      
      private final function method_1611(param1:Object) : void
      {
         var _loc2_:class_98 = null;
         var _loc3_:class_100 = null;
         var _loc4_:class_173 = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_ as class_100;
            _loc4_ = _loc3_.method_33;
            if(class_11.method_21().method_1989(_loc3_.method_33.name_4))
            {
               this.method_397(method_140(_loc2_.name_6.x),method_138(_loc2_.name_6.y),const_940,_loc4_.var_240);
            }
         }
      }
      
      private final function method_1068(param1:Object, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:class_1049 = null;
         var _loc5_:int = 0;
         for each(_loc4_ in param1)
         {
            _loc5_ = param2;
            switch(_loc4_.method_1900.var_240)
            {
               case const_794:
                  if(!param3)
                  {
                     continue;
                  }
                  _loc5_ = 4294967040;
                  break;
               case const_76:
                  continue;
               default:
                  if(_loc5_ == -1)
                  {
                     continue;
                  }
                  break;
            }
            this.method_397(method_140(_loc4_.name_6.x),method_138(_loc4_.name_6.y),_loc5_);
         }
      }
      
      private final function method_2245(param1:Object, param2:uint) : void
      {
         var _loc3_:class_98 = null;
         for each(_loc3_ in param1)
         {
            this.method_397(method_140(_loc3_.name_6.x),method_138(_loc3_.name_6.y),param2);
         }
      }
      
      private final function method_397(param1:uint, param2:uint, param3:uint, param4:int = 0) : void
      {
         switch(param4)
         {
            case const_242:
               this.method_1742(param1,param2,param3);
               break;
            case const_177:
               this.method_2181(param1,param2,param3);
               break;
            case const_76:
         }
      }
      
      private final function method_1742(param1:int, param2:int, param3:int) : void
      {
         var_193.bitmapData.setPixel32(param1,param2,param3);
         var_193.bitmapData.setPixel32(param1,param2 - 1,param3);
         var_193.bitmapData.setPixel32(param1 + 1,param2,param3);
         var_193.bitmapData.setPixel32(param1 + 1,param2 - 1,param3);
      }
      
      private final function method_2181(param1:int, param2:int, param3:int) : void
      {
         var_193.bitmapData.setPixel32(param1 - 1,param2 - 1,param3);
         var_193.bitmapData.setPixel32(param1 + 1,param2 + 1,param3);
         var_193.bitmapData.setPixel32(param1 - 1,param2 + 1,param3);
         var_193.bitmapData.setPixel32(param1 + 1,param2 - 1,param3);
         var_193.bitmapData.setPixel32(param1,param2,param3);
         var_193.bitmapData.setPixel32(param1 + 1,param2,param3);
         var_193.bitmapData.setPixel32(param1 + 2,param2,param3);
         var_193.bitmapData.setPixel32(param1 - 1,param2,param3);
         var_193.bitmapData.setPixel32(param1 - 2,param2,param3);
         var_193.bitmapData.setPixel32(param1,param2 + 1,param3);
         var_193.bitmapData.setPixel32(param1,param2 + 2,param3);
         var_193.bitmapData.setPixel32(param1,param2 - 1,param3);
         var_193.bitmapData.setPixel32(param1,param2 - 2,param3);
      }
      
      private final function method_2109(param1:int, param2:int) : void
      {
         var_591.x = method_140(param1) + var_238.x;
         var_591.y = method_138(param2) + var_238.y;
      }
      
      private final function method_1962(param1:Event) : void
      {
         this.method_2109(this.var_1768.x,this.var_1768.y);
      }
      
      private final function method_2417() : void
      {
         if(this.var_989 == null)
         {
            this.var_989 = new class_1096(this.var_48.getEmbeddedBitmap(const_629.@gfx),this);
            this.var_989.init(const_629,this.var_85,this.var_48,this.var_102);
            this.method_1192();
            this.var_989.method_132(false);
            addChild(this.var_989);
         }
      }
      
      private final function method_2842() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.addChild(this.var_48.getEmbeddedBitmap("minimap"));
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         this.addChild(_loc1_);
         method_166(0,0,155,163);
         this.x = 770;
         this.y = -30;
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.addChild(this.var_48.getEmbeddedBitmap("btn_world_map"));
         this.var_594 = new class_161(_loc2_);
         this.var_594.method_162(const_1316);
         this.var_594.method_400(null,null,false);
         addChild(this.var_594);
         this.var_594.addEventListener(class_148.const_13,class_54.method_21().method_129);
         class_64.method_21().method_84(this.var_594,class_13.method_78("tooltip_miniMap_showWorldMap"));
         this.var_594.x = 54;
         this.var_594.y = 0;
         this.var_667 = new PingButton(this.var_48);
         this.var_667.setOnClick(this.method_2671);
         this.var_667.setEnabled(false);
         this.var_667.x = 54;
         this.var_667.y = 131;
         this.addChild(this.var_667);
         this.var_1082 = new MapTypeScroller(this.var_48);
         this.var_1082.x = 118;
         this.var_1082.y = 66;
         this.addChild(this.var_1082);
      }
      
      public final function method_2257(param1:Boolean) : void
      {
         this.var_667.setEnabled(param1);
      }
      
      public final function method_2788(param1:class_961) : void
      {
         if(param1.name_7 <= 0)
         {
            param1.name_7 = method_1245();
         }
         this.var_1133[param1.name_7] = param1;
      }
      
      public final function method_2058(param1:class_961) : void
      {
         delete this.var_1133[param1.name_7];
      }
      
      override public function method_88() : void
      {
         super.method_88();
         if(class_12.var_104 == class_12.const_15)
         {
            this.x = class_51.var_39 - 150;
            this.y = 0;
         }
      }
      
      public final function method_132(param1:Boolean) : void
      {
         this.visible = param1;
         if(this.var_360)
         {
            this.var_360.visible = param1;
         }
      }
      
      public final function method_2148() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.var_1133)
         {
            delete this.var_1133[_loc1_];
         }
      }
      
      private final function method_2671(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.stage.addEventListener(MouseEvent.CLICK,this.method_1075,false,-1);
         this.var_667.setPressed(true);
         this.var_1592 = true;
      }
      
      private final function method_1075(param1:MouseEvent) : void
      {
         this.stage.removeEventListener(MouseEvent.CLICK,this.method_1075);
         this.var_1592 = false;
         this.var_667.setPressed(false);
      }
   }
}

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;
import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;

class PingButton extends Sprite
{
    
   
   private var _onClick:Function;
   
   private var _enabled:Boolean;
   
   private var _pressed:Boolean;
   
   private var _activeBitmap:DisplayObject;
   
   private var _inactiveBitmap:DisplayObject;
   
   private var _pressedBitmap:DisplayObject;
   
   function PingButton(param1:SWFFinisher)
   {
      super();
      this._activeBitmap = this.addChild(param1.getEmbeddedBitmap("btn_ping_active"));
      this._activeBitmap.visible = false;
      this._pressedBitmap = this.addChild(param1.getEmbeddedBitmap("btn_ping_pressed"));
      this._pressedBitmap.visible = false;
      this._inactiveBitmap = this.addChild(param1.getEmbeddedBitmap("btn_ping_inactive"));
   }
   
   public function setEnabled(param1:Boolean) : void
   {
      if(param1 != this._enabled)
      {
         this.setPressed(false);
         this._activeBitmap.visible = param1;
         this._inactiveBitmap.visible = !param1;
         this._enabled = param1;
         if(this._onClick != null)
         {
            if(this._enabled)
            {
               this.addEventListener(MouseEvent.CLICK,this._onClick);
            }
            else
            {
               this.removeEventListener(MouseEvent.CLICK,this._onClick);
            }
         }
         this.buttonMode = this._enabled;
      }
   }
   
   public function setPressed(param1:Boolean) : void
   {
      if(this._enabled && param1 != this._pressed)
      {
         this._activeBitmap.visible = !param1;
         this._pressedBitmap.visible = param1;
         this._pressed = param1;
      }
   }
   
   public function setOnClick(param1:Function) : void
   {
      if(this._onClick != null)
      {
         this.removeEventListener(MouseEvent.CLICK,this._onClick);
      }
      this._onClick = param1;
      if(this._enabled)
      {
         this.addEventListener(MouseEvent.CLICK,this._onClick);
      }
   }
}

import com.bigpoint.seafight.model.vo.class_320;
import com.bigpoint.seafight.tools.class_13;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
import package_17.class_54;
import package_32.class_64;
import package_51.class_148;

class MapTypeScroller extends Sprite
{
   
   private static const SHOW_SHIPS_BUTTON_ACTION:String = "showShips";
   
   private static const SHOW_GLITY_BUTTON_ACTION:String = "showGlity";
    
   
   private var _ships:Sprite;
   
   private var _treasures:Sprite;
   
   private var _arrows:Sprite;
   
   private var _arrowUp:Sprite;
   
   private var _arrowDown:Sprite;
   
   function MapTypeScroller(param1:SWFFinisher)
   {
      super();
      this._arrows = new Sprite();
      this._arrows.addEventListener(MouseEvent.CLICK,this.onClick);
      this._arrowUp = new Sprite();
      this._arrowUp.addChild(param1.getEmbeddedBitmap("arrow_up_active"));
      this._arrows.addChild(this._arrowUp);
      this._arrowUp.x = 11;
      this._arrowUp.y = -7;
      this._arrowDown = new Sprite();
      this._arrowDown.addChild(param1.getEmbeddedBitmap("arrow_down_active"));
      this._arrows.addChild(this._arrowDown);
      this._arrowDown.x = 11;
      this._arrowDown.y = 32;
      this._arrows.buttonMode = true;
      this._ships = new Sprite();
      this._ships.addChild(param1.getEmbeddedBitmap("btn_ship"));
      this.addChild(this._ships);
      class_64.method_21().method_84(this._arrowUp,class_13.method_78("tooltip_miniMap_showShipsOnly"));
      this._treasures = new Sprite();
      this._treasures.addChild(param1.getEmbeddedBitmap("btn_treasure"));
      this.addChild(this._treasures);
      class_64.method_21().method_84(this._arrowDown,class_13.method_78("tooltip_miniMap_showItemsOnly"));
      this.setActive(false);
      this.setShowShips(true);
      this.addChild(this._arrows);
   }
   
   public function setShowShips(param1:Boolean) : void
   {
      this._arrowDown.visible = this._ships.visible = param1;
      this._arrowUp.visible = this._treasures.visible = !param1;
   }
   
   public function setActive(param1:Boolean) : void
   {
      this._arrows.visible = param1;
   }
   
   private function get isShowingShips() : Boolean
   {
      return this._ships.visible;
   }
   
   private function onClick(param1:Event) : void
   {
      var _loc2_:class_148 = new class_148(class_148.const_13);
      _loc2_.name_22 = new class_320();
      if(this.isShowingShips)
      {
         _loc2_.name_22.name_5 = SHOW_GLITY_BUTTON_ACTION;
      }
      else
      {
         _loc2_.name_22.name_5 = SHOW_SHIPS_BUTTON_ACTION;
      }
      class_54.method_21().method_129(_loc2_);
   }
}
