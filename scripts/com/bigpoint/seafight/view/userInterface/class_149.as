package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetsInventoryGroup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.island.CmdSL_OpenGuildIslandWindowEquipmentTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.island.CmdSL_OpenGuildIslandWindowOverviewTab;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_590;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_124.class_673;
   import package_14.class_1535;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_32.class_64;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_996;
   import package_5.class_123;
   import package_72.class_1442;
   import package_9.class_761;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_149 extends class_111
   {
       
      
      protected var var_142:Sprite;
      
      protected var var_209:Boolean;
      
      private var var_1064:Rectangle;
      
      private var var_102:UserInterface;
      
      private var var_1739:Boolean = true;
      
      private var var_576:TextField;
      
      public var var_1967:String = null;
      
      public var var_2370:Boolean = false;
      
      public var var_2028:Boolean = false;
      
      public var var_746:Boolean = false;
      
      public function class_149(param1:String = null, param2:Boolean = false)
      {
         super();
         this.var_1967 = param1;
         this.var_2370 = param2;
         this.mouseEnabled = false;
         this.cacheAsBitmap = true;
      }
      
      public final function method_166(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.var_1064 = new Rectangle(param1,param2,param3,param4);
      }
      
      protected final function method_2792() : Sprite
      {
         return this.var_142;
      }
      
      protected final function method_2889() : void
      {
         this.removeChild(this.var_142);
      }
      
      public function method_115() : void
      {
         this.var_746 = true;
         this.var_209 = false;
         this.method_1618();
         if(this.var_2370 || this.var_1064 == null)
         {
            this.method_166(0,0,this.width,this.height);
         }
         if(this.var_1739)
         {
            this.var_102 = class_47.method_24.var_12;
            this.method_328();
            this.useHandCursor = true;
            this.addEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
         }
      }
      
      protected final function method_328() : void
      {
         if(!this.var_142)
         {
            this.var_142 = new Sprite();
         }
         this.var_142.mouseEnabled = true;
         this.var_142.mouseChildren = false;
         this.var_142.graphics.clear();
         this.var_142.graphics.beginFill(0,0.2);
         this.var_142.graphics.drawRect(this.var_1064.x,this.var_1064.y,this.var_1064.width,this.var_1064.height);
         this.var_142.graphics.endFill();
         this.addChildAt(this.var_142,0);
         class_64.method_21().method_84(this.var_142,class_13.method_78(this.var_102.getUIConfig().globalUITooltips[0].@grabskinKey));
      }
      
      public function method_107() : void
      {
         this.var_746 = false;
         this.method_1296();
         if(this.var_1739)
         {
            class_64.method_21().method_287(this.var_142);
            this.removeChild(this.var_142);
            this.method_2012();
            this.useHandCursor = false;
         }
      }
      
      protected function method_402(param1:MouseEvent) : void
      {
         var _loc2_:uint = 0;
         if(this.var_102 == parent)
         {
            _loc2_ = this.var_102.numChildren - 1;
            this.var_102.setChildIndex(this,_loc2_);
         }
         this.var_209 = true;
         this.startDrag(false,this.method_2334());
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
         this.stage.addEventListener(MouseEvent.MOUSE_UP,this.method_673);
      }
      
      private final function method_2334() : Rectangle
      {
         var _loc1_:Rectangle = this.var_102.validStageArea.clone();
         if(this.var_2028)
         {
            _loc1_.right = _loc1_.right - this.var_142.width;
            _loc1_.bottom = _loc1_.bottom - this.var_142.height;
         }
         return _loc1_;
      }
      
      protected function method_673(param1:MouseEvent) : void
      {
         var_127.var_335 = false;
         this.stopDrag();
         this.method_1764();
         this.stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_673);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
      }
      
      private final function method_2012() : void
      {
         this.stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_673);
         this.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_402);
      }
      
      protected final function method_3025() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:class_1001 = new class_1001();
         var _loc5_:int = 0;
         while(_loc5_ < this.var_102.uiElementsArr.length)
         {
            if(this != this.var_102.uiElementsArr[_loc5_] && this.parent != this.var_102.uiElementsArr[_loc5_])
            {
               _loc2_ = _loc3_.method_2601(this,this.var_102.uiElementsArr[_loc5_],3);
               if(_loc2_)
               {
                  _loc1_ = true;
               }
            }
            _loc5_++;
         }
         return _loc1_;
      }
      
      private final function method_1764() : void
      {
         var _loc1_:int = Math.floor(this.x / this.var_102.GRID_SIZE);
         var _loc2_:int = Math.floor(this.y / this.var_102.GRID_SIZE);
         this.x = _loc1_ * this.var_102.GRID_SIZE;
         this.y = _loc2_ * this.var_102.GRID_SIZE;
      }
      
      public function get method_384() : Boolean
      {
         return this.var_1739;
      }
      
      public function set method_384(param1:Boolean) : void
      {
         this.var_1739 = param1;
      }
      
      private final function method_1296() : void
      {
         if(this.var_576 != null)
         {
            if(this.var_576.parent != null)
            {
               this.var_576.parent.removeChild(this.var_576);
            }
         }
      }
      
      private final function method_1618() : void
      {
         this.method_1296();
         if(this.var_1967 == null)
         {
            return;
         }
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16777215;
         _loc1_.bold = "bolder";
         _loc1_.size = 25;
         _loc1_.font = "Arial";
         _loc1_.align = TextFormatAlign.CENTER;
         this.var_576 = new TextField();
         this.var_576.defaultTextFormat = _loc1_;
         this.var_576.selectable = false;
         this.var_576.text = this.var_1967;
         this.var_576.autoSize = TextFieldAutoSize.LEFT;
         addChild(this.var_576);
      }
      
      override public function method_111() : Vector.<int>
      {
         return !!this.var_209?super.method_111():null;
      }
      
      override public function method_114() : Vector.<int>
      {
         return !!this.var_209?super.method_114():null;
      }
      
      override public function method_88() : void
      {
         super.method_88();
         if(this.var_746)
         {
            this.var_209 = true;
         }
         var _loc1_:class_49 = class_47.method_112;
         if(_loc1_.method_263(var_37))
         {
            method_194(_loc1_.method_103(var_37),_loc1_.method_103(var_46));
            method_110();
            var_127.var_335 = true;
         }
      }
   }
}
