package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPieceItemRenderer;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import package_111.class_1176;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_15.class_48;
   import package_170.class_979;
   import package_184.class_1582;
   import package_20.class_33;
   import package_209.class_1363;
   import package_23.class_42;
   import package_29.class_57;
   import package_32.class_64;
   import package_42.class_948;
   import package_48.class_1534;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_939;
   import package_5.class_984;
   import package_6.class_14;
   import package_69.class_1580;
   import package_88.class_290;
   import package_89.class_1138;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.layouts.HorizontalLayout;
   
   use namespace mx_internal;
   
   public final class class_216 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("GlobalDisplayContainer");
       
      
      private var var_18:XML;
      
      private var var_102:UserInterface;
      
      private var var_375:Vector.<class_290>;
      
      private var var_85:StyleSheet;
      
      public function class_216(param1:UserInterface)
      {
         super();
         const_80.info("CONSTRUCTING");
         this.var_102 = param1;
         this.name_16();
      }
      
      private final function name_16() : void
      {
         this.var_18 = this.var_102.getUIConfig().globalDisplays[0];
         this.var_85 = this.var_102.getStyleSheet();
         this.method_2352();
      }
      
      private final function method_2352() : void
      {
         var _loc1_:XML = null;
         this.var_375 = new Vector.<class_290>();
         for each(_loc1_ in this.var_18.globalDisplay)
         {
            this.method_2033(_loc1_);
         }
      }
      
      private final function method_2033(param1:XML) : void
      {
         var _loc2_:Bitmap = getSWFFinisher(class_123.const_57).getEmbeddedBitmap(param1.@gfx);
         var _loc3_:class_290 = new class_290(_loc2_);
         var _loc4_:String = param1.@label;
         _loc3_.method_166(this.var_18.grabSkinConfig[0].@xPos,this.var_18.grabSkinConfig[0].@yPos,this.var_18.grabSkinConfig[0].@width,this.var_18.grabSkinConfig[0].@height);
         _loc3_.method_2219(param1.barDisplay[0]);
         _loc3_.method_106(_loc4_);
         switch(_loc4_)
         {
            case class_290.const_134:
               _loc3_.method_351 = class_43.const_503;
               _loc3_.method_340 = class_43.const_495;
               break;
            case class_290.const_174:
               _loc3_.method_351 = class_43.const_596;
               _loc3_.method_340 = class_43.const_579;
               break;
            case class_290.const_206:
               _loc3_.method_351 = class_43.const_610;
               _loc3_.method_340 = class_43.const_578;
               break;
            case class_290.const_250:
               _loc3_.method_351 = class_43.const_606;
               _loc3_.method_340 = class_43.const_653;
               break;
            default:
               throw new class_57(_loc4_,this);
         }
         this.var_375.push(addChild(_loc3_));
         this.var_102.setGlobalUIElement(_loc3_);
         class_64.method_21().method_84(_loc3_,class_13.method_78(param1.@tooltipKey));
         _loc3_.x = param1.@xPos;
         _loc3_.y = param1.@yPos;
         var _loc5_:Object = this.var_85.getStyle(param1.@style);
         _loc3_.scaleX = _loc5_.scale;
         _loc3_.scaleY = _loc5_.scale;
         _loc3_.alpha = _loc5_.alpha;
         _loc3_.visible = _loc5_.visible == "true";
         if(param1.@has_txt)
         {
            _loc3_.method_303(this.var_85);
            _loc3_.method_185(_loc5_);
         }
      }
      
      public final function method_115() : void
      {
         var _loc1_:int = this.var_375.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.var_375[_loc2_].method_115();
            _loc2_++;
         }
      }
      
      public final function method_107() : void
      {
         var _loc1_:int = this.var_375.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.var_375[_loc2_].method_107();
            _loc2_++;
         }
      }
      
      public final function method_110() : void
      {
         var _loc3_:class_290 = null;
         var _loc1_:int = this.var_375.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.var_375[_loc2_] as class_290;
            _loc3_.method_110();
            _loc2_++;
         }
      }
      
      public final function method_2894(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc5_:class_290 = null;
         var _loc2_:int = this.var_375.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            for each(_loc4_ in param1.globalDisplay)
            {
               _loc5_ = this.var_375[_loc3_];
               if(_loc5_.method_32() == _loc4_.@label)
               {
                  _loc5_.x = _loc4_.@xPos;
                  _loc5_.y = _loc4_.@yPos;
               }
            }
            _loc3_++;
         }
      }
      
      public final function method_132(param1:Boolean) : void
      {
         var _loc4_:class_290 = null;
         this.visible = param1;
         var _loc2_:int = this.var_375.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.var_375[_loc3_] as class_290;
            _loc4_.visible = param1;
            _loc3_++;
         }
      }
      
      public final function method_111() : Vector.<int>
      {
         var _loc1_:Vector.<int> = null;
         var _loc2_:Vector.<int> = this.method_101(class_290.const_134).method_111();
         var _loc3_:Vector.<int> = this.method_101(class_290.const_174).method_111();
         var _loc4_:Vector.<int> = this.method_101(class_290.const_206).method_111();
         var _loc5_:Vector.<int> = this.method_101(class_290.const_250).method_111();
         if(_loc2_ || _loc3_ || _loc4_ || _loc5_)
         {
            _loc1_ = new Vector.<int>();
            if(_loc2_)
            {
               _loc1_ = _loc1_.concat(_loc2_);
            }
            if(_loc3_)
            {
               _loc1_ = _loc1_.concat(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ = _loc1_.concat(_loc4_);
            }
            if(_loc5_)
            {
               _loc1_ = _loc1_.concat(_loc5_);
            }
            return _loc1_;
         }
         return null;
      }
      
      public final function method_114() : Vector.<int>
      {
         var _loc1_:Vector.<int> = null;
         var _loc2_:Vector.<int> = this.method_101(class_290.const_134).method_114();
         var _loc3_:Vector.<int> = this.method_101(class_290.const_174).method_114();
         var _loc4_:Vector.<int> = this.method_101(class_290.const_206).method_114();
         var _loc5_:Vector.<int> = this.method_101(class_290.const_250).method_114();
         if(_loc2_ || _loc3_ || _loc4_ || _loc5_)
         {
            _loc1_ = new Vector.<int>();
            if(_loc2_)
            {
               _loc1_ = _loc1_.concat(_loc2_);
            }
            if(_loc3_)
            {
               _loc1_ = _loc1_.concat(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ = _loc1_.concat(_loc4_);
            }
            if(_loc5_)
            {
               _loc1_ = _loc1_.concat(_loc5_);
            }
            return _loc1_;
         }
         return null;
      }
      
      public final function method_101(param1:String) : class_290
      {
         var _loc4_:class_290 = null;
         var _loc2_:int = this.var_375.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.var_375[_loc3_];
            if(_loc4_.method_32() == param1)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public final function method_1586(param1:Boolean = false) : void
      {
         var baseX:int = 0;
         var baseY:int = 0;
         var hp:class_290 = null;
         var ep:class_290 = null;
         var s:class_49 = null;
         var reset:Boolean = param1;
         var restoreSavedSetting:Function = function(param1:class_149, param2:int, param3:int, param4:int, param5:int):void
         {
            if(!reset && s.method_97(param2))
            {
               param1.method_194(s.method_46(param2),s.method_46(param3));
               param1.method_110();
            }
            else
            {
               param1.x = !!s.method_263(param2)?Number(s.method_103(param2)):Number(param4);
               param1.y = !!s.method_263(param3)?Number(s.method_103(param3)):Number(param5);
            }
         };
         baseX = (class_51.var_39 - class_150.const_35) * 0.5;
         baseY = class_51.var_40 - 150;
         hp = this.method_101(class_290.const_134);
         var vp:class_290 = this.method_101(class_290.const_174);
         ep = this.method_101(class_290.const_206);
         var bp:class_290 = this.method_101(class_290.const_250);
         s = class_47.method_112;
         var hpy:int = baseY - hp.height;
         var epx:int = baseX + class_150.const_35 - ep.width;
         restoreSavedSetting(hp,class_43.const_503,class_43.const_495,baseX,hpy);
         restoreSavedSetting(vp,class_43.const_596,class_43.const_579,baseX,hpy - vp.height);
         restoreSavedSetting(ep,class_43.const_610,class_43.const_578,epx,hpy);
         restoreSavedSetting(bp,class_43.const_606,class_43.const_653,epx,hpy - bp.height);
      }
      
      public final function method_88() : void
      {
         this.method_101(class_290.const_134).method_88();
         this.method_101(class_290.const_206).method_88();
         this.method_101(class_290.const_174).method_88();
         this.method_101(class_290.const_250).method_88();
         this.method_1586(true);
      }
   }
}
