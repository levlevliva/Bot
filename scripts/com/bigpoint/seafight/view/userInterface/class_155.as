package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_1258;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.PlayerGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildOverviewLogListItemVo;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_107.class_1467;
   import package_121.class_841;
   import package_130.class_480;
   import package_14.class_47;
   import package_14.class_51;
   import package_152.class_852;
   import package_166.class_1589;
   import package_17.class_54;
   import package_26.class_1086;
   import package_26.class_1354;
   import package_26.class_218;
   import package_32.class_338;
   import package_32.class_64;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_148;
   import package_52.class_167;
   import package_54.class_162;
   import package_54.class_163;
   import package_54.class_319;
   import package_55.class_1008;
   import package_6.class_14;
   import package_72.class_1442;
   import package_72.class_203;
   import package_88.class_967;
   import package_89.class_1011;
   import package_92.class_944;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_155 extends class_150
   {
      
      public static var var_2092:Boolean = true;
      
      private static const const_80:ILogger = Log.getLogger("QuickBelt");
       
      
      public var var_2094:int = -1;
      
      public var var_222:int = -1;
      
      protected var var_1819;
      
      private var var_364:MovieClip;
      
      private var var_357:MovieClip;
      
      public function class_155(param1:UserInterface, param2:int)
      {
         super(param1);
         this.var_222 = param2;
         switch(param2)
         {
            case 1:
               var_428 = class_43.const_232;
               var_37 = class_43.const_188;
               var_46 = class_43.const_161;
               break;
            case 2:
               var_428 = class_43.const_295;
               var_37 = class_43.const_279;
               var_46 = class_43.const_317;
               break;
            default:
               var_428 = class_43.const_353;
               var_37 = class_43.const_436;
               var_46 = class_43.const_371;
         }
      }
      
      public static function method_2984(param1:Vector.<class_163>) : void
      {
      }
      
      public final function method_2486(param1:int, param2:int, param3:int) : void
      {
         this.x = param1;
         this.y = param2;
         this.method_423(Boolean(param3));
      }
      
      public final function method_2004(param1:Vector.<int>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1[_loc3_];
            if(_loc4_)
            {
               _loc5_ = _loc4_ & 65535;
               _loc6_ = _loc4_ >> 16;
               this.method_325(_loc5_,_loc6_,_loc3_);
            }
            _loc3_++;
         }
         method_277();
         class_47.method_72.method_366();
      }
      
      private final function method_325(param1:int, param2:int, param3:int) : void
      {
         var fin:SWFFinisher = null;
         var bmp:Bitmap = null;
         var id:int = param1;
         var category:int = param2;
         var pos:int = param3;
         fin = getSWFFinisher(class_123.const_21);
         var icon:MovieClip = new MovieClip();
         var btnprefix:String = class_167.method_2276(id,category);
         icon.addChild(fin.getEmbeddedBitmap("subgfxbtn"));
         try
         {
            bmp = fin.getEmbeddedBitmap(btnprefix + id);
         }
         catch(e:Error)
         {
            bmp = fin.getEmbeddedBitmap(class_167.const_220);
         }
         bmp.x = (icon.width - bmp.width) * 0.5;
         bmp.y = (icon.height - bmp.height) * 0.5;
         icon.addChild(bmp);
         var quickBeltBtn:class_163 = new class_163(icon);
         var menuType:int = class_167.method_499(id,category);
         if(menuType < 0)
         {
            const_80.warn("menu containing item id " + id + " not yet initialised: ");
            return;
         }
         var menu:class_167 = var_102.subMenuContainer.getMenu(menuType);
         var subMenuBtn:class_319 = menu.method_2039(id);
         var action:class_320 = subMenuBtn.method_58();
         quickBeltBtn.method_1278(subMenuBtn);
         quickBeltBtn.name_16(fin,action,btnprefix + id,new XML());
         quickBeltBtn.method_303(var_102.getStyleSheet());
         quickBeltBtn.method_338(this.var_1819,getSWFFinisher(class_123.const_57).getEmbeddedBitmap(class_150.const_287));
         quickBeltBtn.method_748(var_48.getEmbeddedBitmap(var_18.keyBindingInfo[0].@keyBindInfoGfx),var_18.keyBindingInfo[0]);
         quickBeltBtn.method_492(this.method_612(pos));
         quickBeltBtn.method_642(action);
         quickBeltBtn.addEventListener(class_148.const_13,class_54.method_21().method_129);
         quickBeltBtn.addEventListener(MouseEvent.MOUSE_UP,this.method_589);
         quickBeltBtn.name_5 = this.var_222;
         var_140.addChild(quickBeltBtn);
         quickBeltBtn.method_404();
         var oldQuickBeltBtn:class_163 = var_108[pos];
         if(oldQuickBeltBtn != null)
         {
            class_64.method_21().method_287(oldQuickBeltBtn);
            var_140.removeChild(oldQuickBeltBtn);
         }
         if(subMenuBtn.method_1251())
         {
            quickBeltBtn.method_400(null,subMenuBtn.method_1190());
         }
         var_108.splice(pos,1,quickBeltBtn);
      }
      
      override protected function name_16() : void
      {
         const_80.info("CONSTRUCTING");
         var_48 = getSWFFinisher(class_123.const_152);
         var_18 = var_102.getUIConfig().quickBelt[0];
         var_85 = var_102.getStyleSheet();
         this.var_1819 = var_18.counterFieldConfig[0];
         this.method_1755();
      }
      
      override protected function method_1755() : void
      {
         var _loc1_:XML = null;
         var _loc2_:Object = null;
         var_108 = new Array();
         var_279 = false;
         var_373 = var_48.getEmbeddedBitmap("bgmenu");
         var_140.addChild(var_373);
         method_539();
         method_166(0,0,436,59);
         for each(_loc1_ in var_18.quickBeltBtn)
         {
            this.method_1015(_loc1_);
         }
         method_277();
         this.x = var_18.@xPos;
         this.y = var_18.@yPos;
         _loc2_ = var_85.getStyle(var_18.@style);
         this.scaleX = _loc2_.scale;
         this.scaleY = _loc2_.scale;
         this.alpha = _loc2_.alpha;
         this.visible = _loc2_.visible;
      }
      
      private final function method_1015(param1:XML, param2:int = -1000) : class_163
      {
         var _loc3_:MovieClip = new MovieClip();
         _loc3_.addChild(var_48.getEmbeddedBitmap(param1["gfx"]));
         var _loc4_:class_163 = new class_163(_loc3_);
         _loc4_.method_303(var_85);
         _loc4_.method_748(var_48.getEmbeddedBitmap(var_18.keyBindingInfo[0].@keyBindInfoGfx),var_18.keyBindingInfo[0]);
         _loc4_.method_492(this.method_612(var_108.length));
         _loc4_.addEventListener(MouseEvent.MOUSE_UP,this.method_589);
         if(param2 != -1000)
         {
            var_108.splice(param2,0,var_140.addChild(_loc4_));
            _loc4_.method_492(this.method_612(param2));
         }
         else
         {
            var_108.push(var_140.addChild(_loc4_));
         }
         class_64.method_21().method_84(_loc4_,class_13.method_78(var_18.@tooltipKey));
         if(param1.@has_cf == true)
         {
            _loc4_.method_338(var_18.counterFieldConfig[0],getSWFFinisher(class_123.const_57).getEmbeddedBitmap(const_287));
         }
         if(param1.@custom == true)
         {
            _loc4_.width = param1.@width;
            _loc4_.height = param1.@height;
            _loc4_.x = param1.@xPos;
            _loc4_.y = param1.@yPos;
            _loc4_.scaleX = param1.@scale;
            _loc4_.scaleY = param1.@scale;
            _loc4_.alpha = param1.@alpha;
            _loc4_.visible = param1.@visible;
            if(param1.counterFieldConfig[0])
            {
               _loc4_.method_338(param1.counterFieldConfig[0],getSWFFinisher(class_123.const_57).getEmbeddedBitmap(const_287));
            }
         }
         _loc4_.method_404();
         _loc4_.name_5 = this.var_222;
         return _loc4_;
      }
      
      private final function method_612(param1:int) : String
      {
         return (++param1 % 10).toString();
      }
      
      private final function method_589(param1:MouseEvent) : void
      {
         var _loc3_:class_163 = null;
         var _loc2_:class_210 = class_47.method_24.var_954;
         _loc2_.var_608 = _loc2_.var_723;
         _loc2_.var_723 = this.var_222;
         if(_loc2_.var_1395)
         {
         }
         var _loc4_:DisplayObject = param1.target as DisplayObject;
         var _loc5_:DisplayObject = _loc4_.parent as DisplayObject;
         if(_loc5_ is class_163)
         {
            _loc3_ = _loc5_ as class_163;
         }
         else
         {
            _loc3_ = _loc5_.parent as class_163;
         }
         if(_loc2_.var_340 == null || _loc2_.var_340.name == _loc3_.name)
         {
            return;
         }
         _loc4_.removeEventListener(MouseEvent.MOUSE_UP,this.method_589);
         this.method_1879(_loc2_,this.method_826(_loc3_),_loc3_.name_5);
      }
      
      public final function method_826(param1:class_163) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < var_108.length)
         {
            if((var_108[_loc3_] as class_163).name == param1.name)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private final function method_1879(param1:class_210, param2:int, param3:int) : void
      {
         var bmp:Bitmap = null;
         var num:int = 0;
         var cloneStencil:class_210 = param1;
         var newPos:int = param2;
         var type:int = param3;
         var diffquickBelt:Boolean = false;
         if(cloneStencil.var_608 != cloneStencil.var_723 || cloneStencil.var_608 == -1)
         {
            diffquickBelt = true;
         }
         if(cloneStencil.var_608 >= 0 && cloneStencil.var_723 != cloneStencil.var_608)
         {
            return;
         }
         var quickBelt:class_155 = var_102.quickBelt[cloneStencil.var_723] as class_155;
         var quickBeltLast:class_155 = null;
         if(cloneStencil.var_608 != -1)
         {
            quickBeltLast = var_102.quickBelt[cloneStencil.var_608] as class_155;
         }
         var icon:MovieClip = new MovieClip();
         icon.addChild(cloneStencil.var_1126.getEmbeddedBitmap("subgfxbtn"));
         try
         {
            bmp = cloneStencil.var_1126.getEmbeddedBitmap(cloneStencil.var_1751);
         }
         catch(e:Error)
         {
            bmp = cloneStencil.var_1126.getEmbeddedBitmap(class_167.const_220);
         }
         bmp.x = (icon.width - bmp.width) * 0.5;
         bmp.y = (icon.height - bmp.height) * 0.5;
         icon.addChild(bmp);
         var quickBeltBtn:class_163 = new class_163(icon);
         quickBeltBtn.method_1278(cloneStencil.var_340);
         quickBeltBtn.name_16(cloneStencil.var_1126,cloneStencil.name_22,cloneStencil.var_1751,cloneStencil.var_340.var_2134);
         quickBeltBtn.method_1246(cloneStencil.var_340.method_2168);
         quickBeltBtn.method_303(var_85);
         quickBeltBtn.method_338(this.var_1819,getSWFFinisher(class_123.const_57).getEmbeddedBitmap(const_287));
         quickBeltBtn.method_748(var_48.getEmbeddedBitmap(var_18.keyBindingInfo[0].@keyBindInfoGfx),var_18.keyBindingInfo[0]);
         quickBeltBtn.method_492(this.method_612(newPos));
         quickBeltBtn.method_642(cloneStencil.name_22);
         quickBeltBtn.addEventListener(class_148.const_13,class_54.method_21().method_129);
         quickBeltBtn.addEventListener(MouseEvent.MOUSE_UP,this.method_589);
         quickBeltBtn.var_1529 = cloneStencil.var_340.var_1529;
         quickBeltBtn.method_372 = cloneStencil.var_340.method_372;
         quickBeltBtn.method_698 = cloneStencil.var_340.method_698;
         quickBeltBtn.method_924(true);
         var btn:DisplayObject = var_140.addChild(quickBeltBtn);
         quickBeltBtn.method_404();
         if(cloneStencil.var_340.method_1251())
         {
            quickBeltBtn.method_400(null,cloneStencil.var_340.method_1190());
         }
         var old:class_163 = this.method_931(newPos);
         old.parent.removeChild(old);
         var_108.splice(newPos,1,btn);
         if(cloneStencil.name_35.parent && cloneStencil.name_35.parent.parent.parent is class_155)
         {
            quickBelt = cloneStencil.name_35.parent.parent.parent as class_155;
            num = this.method_826(cloneStencil.var_340);
            this.delBtn(cloneStencil.var_340);
            this.method_782(cloneStencil.name_35,num);
            switch(quickBelt.var_222)
            {
               case 1:
                  class_107.name_3.method_102(class_43.const_119 + num);
                  break;
               case 2:
                  class_107.name_3.method_102(class_43.const_180 + num);
                  break;
               default:
                  class_107.name_3.method_102(class_43.const_477 + num);
            }
         }
         cloneStencil.method_77();
         method_277();
         var data:int = cloneStencil.name_22.name_7 + (cloneStencil.name_22.var_1295 << 16);
         switch(this.var_222)
         {
            case 1:
               class_107.name_3.method_95(class_43.const_119 + newPos,data);
               break;
            case 2:
               class_107.name_3.method_95(class_43.const_180 + newPos,data);
               break;
            default:
               class_107.name_3.method_95(class_43.const_477 + newPos,data);
         }
         class_47.method_72.method_1420();
      }
      
      public final function method_782(param1:DisplayObject, param2:int = -1) : void
      {
         var _loc3_:class_163 = this.method_1015(var_18.quickBeltBtnDummy[0],param2);
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
      }
      
      private final function method_1235(param1:class_163) : void
      {
         var _loc3_:class_163 = null;
         var _loc2_:int = 0;
         while(_loc2_ < var_108.length)
         {
            _loc3_ = var_108[_loc2_] as class_163;
            if(_loc3_.name == param1.name)
            {
               var_108.splice(_loc2_,1);
            }
            _loc2_++;
         }
      }
      
      private final function delBtn(param1:class_163) : void
      {
         class_64.method_21().method_287(param1);
         if(param1.parent != null)
         {
            this.method_1235(param1);
            param1.parent.removeChild(param1);
         }
      }
      
      public final function method_2954(param1:int) : void
      {
         var _loc2_:class_163 = var_108[param1] as class_163;
         class_64.method_21().method_287(_loc2_);
         this.method_1235(_loc2_);
         _loc2_.parent.removeChild(_loc2_);
      }
      
      public final function method_1863(param1:String) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_108.length)
         {
            if((var_108[_loc2_] as class_163).name == param1)
            {
               this.delBtn(var_108[_loc2_]);
            }
            _loc2_++;
         }
      }
      
      public final function method_931(param1:int) : class_163
      {
         return var_108[param1];
      }
      
      override public function method_115() : void
      {
         super.method_115();
         this.showConfButtons();
      }
      
      override public function method_107() : void
      {
         super.method_107();
         this.hideConfButtons();
      }
      
      public final function method_2866() : Boolean
      {
         var _loc3_:class_163 = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = this.method_931(_loc2_);
            if(_loc3_.method_507() == 0)
            {
               this.method_782(_loc3_.name_35,_loc2_);
               this.delBtn(_loc3_);
               _loc1_ = true;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public final function method_2946(param1:int) : class_163
      {
         var _loc2_:class_163 = null;
         var _loc3_:class_320 = null;
         for each(_loc2_ in var_108)
         {
            _loc3_ = _loc2_.method_58();
            if(_loc3_ && _loc3_.name_7 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      override public function method_423(param1:Boolean) : void
      {
         super.method_423(param1);
         this.layoutConfButtons(var_279);
      }
      
      public final function method_733(param1:int) : Array
      {
         var _loc3_:class_163 = null;
         var _loc4_:class_320 = null;
         var _loc2_:Array = [];
         for each(_loc3_ in var_108)
         {
            _loc4_ = _loc3_.method_58();
            if(_loc4_ && _loc4_.name_7 == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public final function method_2041(param1:int = 16711680, param2:int = 16) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         _loc3_.graphics.beginFill(param1);
         _loc3_.graphics.drawRect(0,0,param2,param2);
         _loc3_.graphics.endFill();
         return _loc3_;
      }
      
      private final function method_2333(param1:MouseEvent) : void
      {
         var _loc2_:class_218 = new class_218(class_218.const_1045,this.var_222,0,true,true);
         dispatchEvent(_loc2_);
      }
      
      private final function method_1867(param1:MouseEvent) : void
      {
         var _loc2_:class_218 = new class_218(class_218.const_1198,this.var_222,0,true,true);
         dispatchEvent(_loc2_);
      }
      
      public final function method_2517() : void
      {
         this.method_438();
      }
      
      override protected function method_438() : void
      {
         super.method_438();
         switch(this.var_222)
         {
            case 1:
               this.y = class_51.var_40 - 240;
               break;
            case 2:
               this.y = class_51.var_40 - 294;
               break;
            default:
               this.y = class_51.var_40 - 150;
         }
      }
      
      private final function showConfButtons() : void
      {
         if(this.var_222 != 0)
         {
            if(!this.var_357)
            {
               this.var_357 = this.method_1209("x");
               this.var_357.addEventListener(MouseEvent.CLICK,this.method_1867);
               var_644.addChild(this.var_357);
            }
         }
         if(!this.var_364)
         {
            this.var_364 = this.method_1209("+");
            this.var_364.addEventListener(MouseEvent.CLICK,this.method_2333);
            var_644.addChild(this.var_364);
         }
         if(this.var_364)
         {
            this.var_364.visible = true;
         }
         if(this.var_357)
         {
            this.var_357.visible = true;
         }
         this.layoutConfButtons(var_279);
      }
      
      private final function layoutConfButtons(param1:Boolean) : void
      {
         if(param1 != var_2092)
         {
            if(this.var_364)
            {
               this.var_364.x = 440;
               this.var_364.y = 26;
            }
            if(this.var_357)
            {
               this.var_357.x = 440;
               this.var_357.y = 0;
            }
         }
         else
         {
            if(this.var_364)
            {
               this.var_364.x = 70;
               this.var_364.y = 26;
            }
            if(this.var_357)
            {
               this.var_357.x = 70;
               this.var_357.y = 0;
            }
         }
      }
      
      private final function hideConfButtons() : void
      {
         if(this.var_364)
         {
            this.var_364.visible = false;
         }
         if(this.var_357)
         {
            this.var_357.visible = false;
         }
      }
      
      public final function method_2919() : Vector.<class_163>
      {
         var _loc2_:class_162 = null;
         var _loc1_:Vector.<class_163> = new Vector.<class_163>();
         var _loc3_:int = 0;
         while(_loc3_ < var_108.length)
         {
            _loc2_ = var_108[_loc3_] as class_163;
            _loc3_++;
         }
         return _loc1_;
      }
      
      private final function method_1209(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:Bitmap = new class_1011("componentassets","btn_circle");
         _loc2_.addChild(_loc3_);
         var _loc4_:TextField = new TextField();
         _loc4_.wordWrap = false;
         _loc4_.htmlText = param1;
         _loc4_.width = 16;
         _loc4_.height = 20;
         _loc4_.x = 5;
         _loc4_.y = 2;
         _loc4_.selectable = false;
         _loc4_.setTextFormat(new TextFormat("Verdana",14,16777215));
         _loc4_.mouseEnabled = false;
         _loc2_.addChild(_loc4_);
         var _loc5_:Sprite = this.method_2041(16711935,_loc3_.width);
         _loc5_.x = 2;
         _loc5_.y = 2;
         _loc5_.alpha = 0;
         _loc2_.addChild(_loc5_);
         _loc2_.buttonMode = true;
         return _loc2_;
      }
   }
}
