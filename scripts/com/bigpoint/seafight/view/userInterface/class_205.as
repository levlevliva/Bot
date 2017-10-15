package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoUpBtnSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.system.System;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.core.UIComponentDescriptor;
   import mx.events.CloseEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_17.class_54;
   import package_18.class_392;
   import package_204.thiz;
   import package_26.class_142;
   import package_32.class_64;
   import package_39.class_973;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_975;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_41;
   import package_51.class_1355;
   import package_51.class_148;
   import package_54.class_1089;
   import package_54.class_162;
   import package_6.class_14;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_205 extends class_111
   {
      
      public static const const_3:ILogger = Log.getLogger("GlobalActionBtnContainer");
      
      public static const const_166:String = "toMyShip";
       
      
      private var var_112:class_87;
      
      private var var_48:SWFFinisher;
      
      private var var_18:XML;
      
      private var var_102:UserInterface;
      
      private var var_348:Array;
      
      private var var_85:StyleSheet;
      
      public function class_205(param1:UserInterface)
      {
         this.var_112 = class_47.method_22;
         super();
         this.var_102 = param1;
         this.name_16();
         class_41.name_3.addEventListener(class_142.const_116,this.method_1387);
      }
      
      private final function method_1387(param1:class_142) : void
      {
         switch(class_41.name_3.name_17)
         {
            case class_41.const_1899:
            case class_41.const_459:
            case class_41.const_770:
            case class_41.const_449:
               this.method_1406(false);
               break;
            default:
               this.method_1406(true);
         }
      }
      
      private final function method_1406(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.var_348.length)
         {
            ((this.var_348[_loc2_] as class_1089).var_316 as class_162).name_26 = param1;
            _loc2_++;
         }
      }
      
      private final function name_16() : void
      {
         this.var_48 = getSWFFinisher(class_123.const_57);
         this.var_18 = this.var_102.getUIConfig().globalActionBtnContainer[0];
         this.var_85 = this.var_102.getStyleSheet();
         this.method_2373();
      }
      
      private final function method_2373() : void
      {
         var _loc1_:XML = null;
         var _loc2_:Object = null;
         var _loc3_:MovieClip = null;
         var _loc4_:class_1089 = null;
         var _loc5_:Bitmap = null;
         this.var_348 = new Array();
         for each(_loc1_ in this.var_18.globalActionBtn)
         {
            _loc2_ = this.var_85.getStyle(_loc1_.@style);
            _loc3_ = new MovieClip();
            _loc3_.addChild(this.var_48.getEmbeddedBitmap(_loc1_.@gfx));
            _loc4_ = new class_1089(_loc3_);
            _loc4_.method_166(this.var_18.grabSkinConfig[0].@xPos,this.var_18.grabSkinConfig[0].@yPos,this.var_18.grabSkinConfig[0].@width,this.var_18.grabSkinConfig[0].@height);
            _loc4_.var_316.method_162(_loc1_.@onAction);
            _loc4_.var_316.method_303(this.var_85);
            _loc4_.var_316.addEventListener(class_148.const_13,class_54.method_21().method_129);
            this.var_102.setGlobalUIElement(_loc4_);
            this.var_348.push(_loc4_);
            class_64.method_21().method_84(_loc4_.var_316,class_13.method_78(_loc1_.@tooltipKey));
            _loc4_.width = _loc1_.@width;
            _loc4_.height = _loc1_.@height;
            _loc4_.var_1827 = _loc1_.@xPos;
            _loc4_.var_1996 = _loc1_.@yPos;
            _loc4_.method_833();
            _loc4_.scaleX = _loc2_["scale"];
            _loc4_.scaleY = _loc2_["scale"];
            _loc4_.alpha = _loc2_["alpha"];
            _loc4_.visible = _loc2_["visible"] == "true";
            if(_loc1_.counterField[0])
            {
               _loc5_ = getSWFFinisher(class_123.const_57).getEmbeddedBitmap("iconoverflow");
               _loc4_.var_316.method_338(_loc1_.counterField[0],_loc5_);
            }
            if(_loc1_.@hasLabel == "true")
            {
               _loc4_.method_376(_loc1_.@labelStyle,this.var_85);
               _loc4_.method_106(this.var_112.method_28(_loc1_.@labelRes));
            }
            if(_loc1_.@configurable == "false")
            {
               _loc4_.method_384 = false;
            }
         }
      }
      
      public final function method_115() : void
      {
         var _loc1_:class_1089 = null;
         for each(_loc1_ in this.var_348)
         {
            if(_loc1_.method_384)
            {
               _loc1_.method_115();
            }
         }
      }
      
      public final function method_107() : void
      {
         var _loc1_:class_1089 = null;
         for each(_loc1_ in this.var_348)
         {
            if(_loc1_.method_384)
            {
               _loc1_.method_107();
            }
         }
      }
      
      public final function method_109(param1:String) : class_1089
      {
         var _loc2_:class_1089 = null;
         for each(_loc2_ in this.var_348)
         {
            if(_loc2_.var_316.method_58().name_5 == param1)
            {
               return _loc2_;
            }
         }
         const_3.error("button-by-action type not found: " + param1);
         return null;
      }
      
      public final function method_645() : void
      {
         var _loc1_:class_1089 = null;
         for each(_loc1_ in this.var_348)
         {
            _loc1_.method_645();
         }
      }
      
      public final function method_438() : void
      {
         var _loc2_:class_1089 = null;
         var _loc1_:class_1089 = this.method_109(class_205.const_166);
         for each(_loc2_ in this.var_348)
         {
            if(_loc1_ != _loc2_)
            {
               _loc2_.x = (class_51.var_39 - _loc2_.width) * 0.5;
            }
         }
      }
      
      public final function method_833() : void
      {
         var _loc1_:class_1089 = null;
         for each(_loc1_ in this.var_348)
         {
            _loc1_.method_833();
         }
      }
      
      public final function method_3005() : Array
      {
         return this.var_348;
      }
      
      override public function method_110() : void
      {
         var _loc3_:class_1089 = null;
         var _loc1_:int = this.var_348.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.var_348[_loc2_] as class_1089;
            _loc3_.method_110();
            _loc2_++;
         }
      }
      
      public final function method_2898(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:class_1089 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_348.length)
         {
            for each(_loc3_ in param1.globalActionBtn)
            {
               _loc4_ = this.var_348[_loc2_] as class_1089;
               if(_loc4_.var_316.method_58().name_5 == _loc3_.@onAction)
               {
                  _loc4_.x = _loc3_.@xPos;
                  _loc4_.y = _loc3_.@yPos;
               }
            }
            _loc2_++;
         }
      }
   }
}
