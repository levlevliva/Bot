package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_190.class_1181;
   import package_20.class_33;
   import package_26.class_1086;
   import package_45.class_110;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_51.class_974;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   import spark.primitives.Rect;
   
   public class class_111 extends Sprite
   {
      
      public static const const_3:ILogger = Log.getLogger("UserComponent");
       
      
      protected var var_1999:Object;
      
      protected var var_127:class_980;
      
      protected var var_37:int;
      
      protected var var_46:int;
      
      public function class_111()
      {
         super();
         if(!this.var_1999)
         {
            this.var_1999 = {
               "colorize":16777215,
               "amount":0.6,
               "brightness":2
            };
         }
         this.var_127 = new class_980();
      }
      
      public function method_111() : Vector.<int>
      {
         var _loc1_:Vector.<int> = null;
         if(this.var_127.var_335 || this.var_127.var_1906 == this.x && this.var_127.var_1919 == this.y)
         {
            _loc1_ = new Vector.<int>();
            _loc1_.push(this.var_37);
            _loc1_.push(this.var_46);
         }
         return _loc1_;
      }
      
      public function method_114() : Vector.<int>
      {
         var _loc1_:Vector.<int> = null;
         if(this.var_127.var_335)
         {
            return null;
         }
         if(this.var_127.var_1906 != this.x && this.var_127.var_1919 != this.y)
         {
            _loc1_ = new Vector.<int>();
            _loc1_.push(this.var_37);
            _loc1_.push(this.x);
            _loc1_.push(this.var_46);
            _loc1_.push(this.y);
         }
         return _loc1_;
      }
      
      public final function method_194(param1:int, param2:int) : void
      {
         this.var_127.var_9 = param1;
         this.var_127.var_8 = param2;
         this.var_127.var_335 = false;
         if(class_49.name_3.method_263(this.var_37))
         {
            this.var_127.var_1906 = class_49.name_3.method_103(this.var_37);
            this.var_127.var_1919 = class_49.name_3.method_103(this.var_46);
         }
      }
      
      public final function method_498(param1:int) : void
      {
         if(param1 != -1)
         {
            this.var_127.name_81 = param1;
            this.var_127.var_335 = false;
         }
      }
      
      public function method_110() : void
      {
         if(this.var_127.var_335)
         {
            return;
         }
         x = this.var_127.var_9;
         y = this.var_127.var_8;
      }
      
      public function method_88() : void
      {
         this.var_127.method_77();
      }
      
      public function set method_351(param1:int) : void
      {
         this.var_37 = param1;
      }
      
      public function set method_340(param1:int) : void
      {
         this.var_46 = param1;
      }
      
      public function get method_351() : int
      {
         return this.var_37;
      }
      
      public function get method_340() : int
      {
         return this.var_46;
      }
      
      public function get name_81() : int
      {
         return this.var_127.name_81;
      }
   }
}
