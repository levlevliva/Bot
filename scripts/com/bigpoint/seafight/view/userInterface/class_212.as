package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_94;
   import package_152.class_664;
   import package_212.class_1537;
   import package_30.class_62;
   import package_32.class_64;
   import package_34.class_107;
   import package_41.class_93;
   import package_48.class_138;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_148;
   import package_55.class_1009;
   import package_9.class_761;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   
   public final class class_212 extends class_149
   {
       
      
      protected var var_112:class_87;
      
      protected var var_48:SWFFinisher;
      
      protected var var_18:XML;
      
      protected var var_135:class_1009;
      
      protected var var_2357:Function;
      
      protected var var_634:Sprite;
      
      protected var var_85:StyleSheet;
      
      protected var var_1170:int;
      
      protected var var_1986:int;
      
      protected var var_619:Timer;
      
      protected var var_102:UserInterface;
      
      protected var var_2193:int;
      
      public function class_212(param1:UserInterface, param2:XML, param3:Function, param4:StyleSheet)
      {
         var _loc6_:XML = null;
         super();
         _loc6_ = param2.mapConfig[0]["zoomMenu"][0];
         this.var_102 = param1;
         this.var_112 = class_47.method_22 as class_87;
         this.var_18 = _loc6_.slider[0];
         this.var_1170 = this.var_18.@interval;
         this.var_1986 = this.var_18.@slideMin;
         this.var_2357 = param3;
         this.var_85 = param4;
         var_37 = class_43.const_637;
         var_46 = class_43.const_580;
         super.x = _loc6_.@xPos;
         super.y = _loc6_.@yPos;
         this.name_16();
      }
      
      protected final function name_16() : void
      {
         this.var_48 = getSWFFinisher(class_123.const_152);
         this.method_2620();
      }
      
      protected final function method_2620() : void
      {
         var _loc1_:SWFFinisher = getSWFFinisher(class_123.const_21) as SWFFinisher;
         this.var_135 = new class_1009(_loc1_.getEmbeddedBitmap(this.var_18.@gfx),_loc1_.getEmbeddedBitmap(this.var_18.@gfxBkg),this.var_85);
         this.var_135.name_16(this.var_18);
         this.var_135.method_376();
         this.var_135.method_106("");
         this.var_135.method_2681 = true;
         this.var_135.name_95 = this.var_1170;
         this.var_135.method_2218 = "%";
         this.var_135.method_174(parseInt(this.var_18.@slideDefault));
         this.var_135.addEventListener(class_148.const_13,this.method_2465);
         class_64.method_21().method_84(this.var_135,this.var_112.method_28(this.var_18["tooltipKey"]),null,int(this.var_18["tooltipShowDelay"]));
         this.reset();
         addChild(this.var_135);
      }
      
      public final function method_2138(param1:Boolean = false) : void
      {
         this.var_135.method_174(this.var_135.method_217().value + (!!param1?this.var_1170:-this.var_1170));
      }
      
      protected final function method_2465(param1:class_148) : void
      {
         var event:class_148 = param1;
         var zoom:int = event.name_22.name_7;
         zoom = zoom - zoom % this.var_1170;
         if(zoom < this.var_1986)
         {
            zoom = this.var_1986;
         }
         if(zoom == this.var_2193)
         {
            return;
         }
         event.name_22.name_7 = this.var_2193 = zoom;
         this.var_2357.apply(this,[event]);
         if(this.var_619 == null)
         {
            this.var_619 = new Timer(2000,1);
            this.var_619.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:TimerEvent):void
            {
               var _loc3_:int = var_135.method_217().value;
               _loc3_ = _loc3_ - _loc3_ % var_1170;
               if(_loc3_ == 100)
               {
                  class_107.name_3.method_102(class_43.const_381);
               }
               else if(class_49.method_46(class_43.const_381) != _loc3_)
               {
                  class_107.name_3.method_95(class_43.const_381,_loc3_);
               }
               var_619.stop();
               var_619.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments.callee);
               var_619 = null;
            });
            this.var_619.start();
         }
         else
         {
            this.var_619.reset();
            this.var_619.start();
         }
      }
      
      override public function method_115() : void
      {
         super.method_115();
         this.var_634 = new Sprite();
         this.var_634.addChild(this.var_48.getEmbeddedBitmap("btnrotate"));
         this.var_634.addEventListener(MouseEvent.CLICK,this.method_1098);
         this.var_634.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1285,false,10);
         addChild(this.var_634);
         method_166(0,0,this.var_135.width,this.var_135.height);
         method_328();
      }
      
      override public function method_107() : void
      {
         super.method_107();
         this.var_634.removeEventListener(MouseEvent.CLICK,this.method_1098);
         this.var_634.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1285,false);
         removeChild(this.var_634);
         this.var_634 = null;
      }
      
      protected final function method_1098(param1:MouseEvent = null) : void
      {
         var _loc2_:* = this.var_135.rotation == 0;
         this.rotateSlider(!_loc2_);
         method_166(0,0,this.var_135.width,this.var_135.height);
         method_328();
      }
      
      private final function rotateSlider(param1:Boolean = false) : void
      {
         this.var_135.method_2687(!!param1?0:-90);
         this.var_135.y = !!param1?Number(0):Number(this.var_135.height);
         var_209 = true;
      }
      
      private final function method_1285(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private final function reset() : void
      {
         if(var_127.name_81 == class_980.const_990)
         {
            this.rotateSlider();
         }
         if(this.var_634)
         {
            method_166(0,0,this.var_135.width,this.var_135.height);
            method_328();
         }
      }
      
      public final function method_1869(param1:int) : void
      {
         var_127.name_19 = param1;
         if(param1 > 0 && this.var_135.method_217().value != param1)
         {
            this.var_135.method_174(param1);
         }
      }
      
      override public function method_111() : Vector.<int>
      {
         var _loc2_:Boolean = false;
         if(!var_209)
         {
            return null;
         }
         var _loc1_:Vector.<int> = super.method_111();
         _loc2_ = class_47.method_112.method_97(class_43.const_114);
         var _loc3_:Boolean = !!_loc2_?class_47.method_112.method_46(class_43.const_114) == 0:false;
         if(_loc3_ && (this.var_135.rotation != 0 || var_127.var_335))
         {
            if(!_loc1_)
            {
               _loc1_ = new Vector.<int>();
            }
            _loc1_.push(class_43.const_114);
         }
         return _loc1_;
      }
      
      override public function method_114() : Vector.<int>
      {
         var _loc1_:Boolean = false;
         if(!var_209)
         {
            return null;
         }
         _loc1_ = class_47.method_112.method_97(class_43.const_114);
         var _loc2_:Boolean = !!_loc1_?class_47.method_112.method_46(class_43.const_114) == 0:false;
         var _loc3_:Vector.<int> = super.method_114();
         if(this.var_135.rotation == 0 && !_loc2_)
         {
            if(!_loc3_)
            {
               _loc3_ = new Vector.<int>();
            }
            _loc3_.push(class_43.const_114);
            _loc3_.push(0);
         }
         return _loc3_;
      }
      
      override public function method_110() : void
      {
         if(var_127.var_335)
         {
            return;
         }
         this.rotateSlider(var_127.name_81 == class_980.const_1813);
         super.method_110();
      }
      
      override public function method_88() : void
      {
         var _loc1_:class_49 = null;
         super.method_88();
         this.rotateSlider(false);
         if(class_12.var_104 == class_12.const_15)
         {
            this.reset();
            this.x = 20;
            this.y = class_51.var_40 - this.height - 35;
         }
         else
         {
            this.reset();
            _loc1_ = class_47.method_112;
            method_498(_loc1_.method_103(class_43.const_114));
            method_194(_loc1_.method_103(var_37),_loc1_.method_103(var_46));
            this.method_110();
         }
      }
   }
}
