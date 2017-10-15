package package_52
{
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenu;
   import com.bit101.components.ScrollPane;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_14.class_94;
   import package_29.class_57;
   import package_5.class_214;
   import package_51.class_148;
   import package_54.class_1006;
   import package_72.class_203;
   import package_88.class_290;
   import spark.components.RichText;
   
   public final class class_213 extends class_167
   {
      
      private static const const_961:int = 1;
      
      private static const const_957:int = 2;
      
      private static const const_1050:int = 3;
      
      private static const const_1010:int = 4;
      
      private static const const_1074:int = 5;
      
      private static const const_1231:int = 6;
      
      private static const const_1161:int = 7;
      
      private static const const_1100:int = 8;
      
      private static const const_969:int = 9;
      
      private static const const_619:int = 25;
       
      
      private var var_284:Sprite;
      
      private var var_163:ScrollPane;
      
      private var var_995:Vector.<int>;
      
      private var var_451:Sprite;
      
      private var var_1347:int;
      
      private var var_213:Array;
      
      private var var_781:TimelineMax;
      
      public function class_213()
      {
         this.var_781 = new TimelineMax();
         super();
         this.var_213 = [];
      }
      
      override public function init(param1:XML, param2:StyleSheet, param3:SWFFinisher, param4:UserInterface) : void
      {
         var _loc8_:XML = null;
         var _loc9_:Sprite = null;
         var _loc10_:TextField = null;
         var _loc11_:MovieClip = null;
         var _loc12_:class_1006 = null;
         var _loc13_:int = 0;
         super.init(param1,param2,param3,param4);
         this.var_451 = new Sprite();
         this.var_451.graphics.beginFill(16777215,0.2);
         this.var_451.graphics.drawRect(0,0,var_64.width - 10,const_619);
         this.var_451.graphics.endFill();
         this.var_451.visible = false;
         this.var_451.mouseEnabled = false;
         this.var_451.mouseChildren = false;
         this.var_284 = new Sprite();
         this.var_995 = new Vector.<int>();
         this.var_163 = new ScrollPane();
         this.var_1347 = -1;
         var _loc5_:Rectangle = new Rectangle(5,5,50,15);
         var _loc6_:XMLList = XML(var_18["components"]).children();
         var _loc7_:int = 0;
         for each(_loc8_ in _loc6_)
         {
            _loc9_ = new Sprite();
            _loc10_ = new TextField();
            _loc11_ = new MovieClip();
            _loc11_.addChild(var_48.getEmbeddedBitmap(_loc8_.@gfx));
            _loc12_ = new class_1006(_loc11_,_loc5_,80,20);
            _loc13_ = _loc8_.@id;
            _loc10_.multiline = false;
            _loc10_.wordWrap = false;
            _loc10_.selectable = false;
            _loc10_.autoSize = TextFieldAutoSize.LEFT;
            _loc10_.defaultTextFormat = var_85.transform(var_85.getStyle(".labeledBtn"));
            _loc10_.htmlText = var_112.method_28(_loc8_.@reskey);
            _loc10_.x = 5;
            _loc10_.y = 4;
            _loc10_.mouseEnabled = false;
            _loc12_.method_162(null,_loc13_);
            _loc12_.method_106(var_112.method_28(_loc8_.@labelRes));
            _loc12_.addEventListener(class_148.const_13,this.method_2630);
            _loc12_.x = 140;
            _loc12_.y = 3;
            _loc9_.name = _loc8_.@id;
            _loc9_.addChild(_loc10_);
            _loc9_.addChild(_loc12_);
            _loc9_.y = _loc7_;
            _loc9_.mouseEnabled = false;
            _loc7_ = _loc7_ + const_619;
            this.var_995.push(_loc13_);
            this.var_163.content.addChildAt(_loc9_,0);
            this.var_163.content.mouseEnabled = false;
         }
         this.var_163.setSize(var_64.width - 2,_loc7_ + 9);
         this.var_163.graphics.beginFill(0,0.6);
         this.var_163.graphics.lineStyle(1,9404775);
         this.var_163.graphics.moveTo(this.var_163.x - 2,this.var_163.y - 20);
         this.var_163.graphics.lineTo(this.var_163.x - 2,this.var_163.height - 10);
         this.var_163.graphics.lineTo(this.var_163.width,this.var_163.height - 10);
         this.var_163.graphics.lineTo(this.var_163.width,this.var_163.y - 20);
         this.var_163.graphics.endFill();
         this.var_163.addEventListener(MouseEvent.MOUSE_MOVE,this.method_2063);
         this.var_163.addEventListener(MouseEvent.MOUSE_OUT,this.method_1056);
         this.var_163.addChild(this.var_451);
         this.var_284.addChildAt(this.var_163,0);
         this.var_284.mouseEnabled = false;
         var_64.x = -1;
         var_64.y = -20;
         this.removeChildAt(1);
         this.addChildAt(this.var_284,0);
      }
      
      override public function method_132(param1:Boolean) : void
      {
         this.method_611();
         super.method_132(param1);
      }
      
      private final function method_1056(param1:MouseEvent) : void
      {
         this.var_1347 = -1;
         this.var_451.visible = false;
         this.method_611();
      }
      
      private final function method_2063(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:class_112 = null;
         var _loc5_:int = 0;
         _loc2_ = this.var_163.mouseY - this.var_163.mouseY % const_619;
         var _loc3_:int = this.var_995[_loc2_ / const_619];
         if(_loc2_ == this.var_1347)
         {
            return;
         }
         this.method_611();
         this.var_1347 = _loc2_;
         this.var_451.y = this.var_1347;
         this.var_451.visible = true;
         switch(_loc3_)
         {
            case const_961:
               this.var_213.push(var_102.infoIconContainer);
               break;
            case const_957:
               this.var_213.push(var_102.targetInfoContainer);
               this.var_213.push(var_102.battleInfoContainer);
               break;
            case const_1050:
               this.var_213.push(var_102.globalDisplayContainer.method_101(class_290.const_134));
               this.var_213.push(var_102.globalDisplayContainer.method_101(class_290.const_206));
               this.var_213.push(var_102.globalDisplayContainer.method_101(class_290.const_174));
               this.var_213.push(var_102.globalDisplayContainer.method_101(class_290.const_250));
               this.var_213.push(var_102.globalActionBtnContainer.method_109(class_205.const_166));
               this.var_213.push(var_102.actionsBar);
               _loc5_ = 0;
               while(_loc5_ < var_102.quickBelt.length)
               {
                  this.var_213.push(var_102.quickBelt[_loc5_]);
                  _loc5_++;
               }
               break;
            case const_1010:
               this.var_213.push(var_102.miniMap);
               break;
            case const_1074:
               _loc4_ = class_47.method_24.var_12.chatWindow;
               if(_loc4_)
               {
                  this.var_213.push(_loc4_);
                  break;
               }
               break;
            case const_1231:
               this.var_213.push(var_102.zoomMenu);
               break;
            case const_1161:
               this.var_213 = var_102.subMenuContainer.getSubmenues();
               break;
            case const_1100:
               this.var_213.push(class_47.method_24.method_122);
               break;
            case const_969:
               this.var_213.push(var_102.subMenuContainer.getMenu(class_214.const_75));
               break;
            default:
               throw new class_57(this,_loc3_);
         }
         this.method_2491(this.var_213);
      }
      
      public final function method_611() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         if(this.var_781)
         {
            this.var_781.clear();
         }
         for each(_loc1_ in this.var_213)
         {
            if(_loc1_.filters)
            {
               _loc2_ = _loc1_.filters.length;
               _loc3_ = _loc1_.filters;
               _loc4_ = 0;
               while(_loc4_ < _loc2_)
               {
                  if(_loc3_[_loc4_] is ColorMatrixFilter)
                  {
                     _loc3_.splice(_loc4_,1);
                     _loc1_.filters = _loc3_;
                     break;
                  }
                  _loc4_++;
               }
            }
         }
         this.var_213.splice(0,this.var_213.length);
      }
      
      private final function method_2630(param1:class_148) : void
      {
         var _loc2_:class_112 = null;
         var _loc3_:GameActivityMenu = null;
         switch(param1.name_22.name_7)
         {
            case const_961:
               var_102.resetInfoIconsComponent();
               break;
            case const_957:
               var_102.resetTargetsComponent();
               break;
            case const_1050:
               var_102.resetActionsComponent();
               break;
            case const_1010:
               var_102.resetMiniMapComponent();
               break;
            case const_1074:
               _loc2_ = class_47.method_24.var_12.chatWindow;
               if(_loc2_)
               {
                  _loc2_.method_77();
                  break;
               }
               break;
            case const_1231:
               var_102.resetZoomComponent();
               break;
            case const_1161:
               var_102.subMenuContainer.resetAllSubmenus();
               break;
            case const_1100:
               class_47.method_24.method_122.method_1289();
               break;
            case const_969:
               _loc3_ = var_102.subMenuContainer.getMenu(class_214.const_75) as GameActivityMenu;
               _loc3_.method_666(false);
               _loc3_.placeOnCenter();
               break;
            default:
               throw new class_57(this,param1.name_22.name_7);
         }
      }
      
      protected final function method_2491(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:Object = null;
         if(this.var_781)
         {
            this.var_781.clear();
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_)
            {
               this.var_781.insertMultiple([TweenMax.to(_loc3_,0,{"colorMatrixFilter":{"amount":0}}),TweenMax.to(_loc3_,0.5,{"colorMatrixFilter":var_1999})],0,TweenAlign.SEQUENCE,0);
            }
         }
         this.var_781.yoyo = param2;
         this.var_781.repeat = 12;
      }
      
      override protected function method_1630() : void
      {
      }
   }
}
