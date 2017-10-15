package com.bigpoint.seafight.control.ceu
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModule;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.ToolTipEvent;
   import mx.graphics.LinearGradient;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import package_14.class_47;
   import package_14.class_94;
   import package_15.class_273;
   import package_171.class_1325;
   import package_211.class_1369;
   import package_29.class_166;
   import package_50.class_141;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   use namespace mx_internal;
   
   public final class CentralEventUnit extends EventDispatcher
   {
      
      private static var _instance:CentralEventUnit;
       
      
      public function CentralEventUnit(param1:Function)
      {
         super();
         if(param1 !== hidden)
         {
            throw new class_166();
         }
      }
      
      private static function hidden() : void
      {
      }
      
      public static function init() : void
      {
         if(_instance == null)
         {
            _instance = new CentralEventUnit(hidden);
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _instance.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _instance.removeEventListener(param1,param2,param3);
      }
      
      public static function dispatchEvent(param1:Event) : void
      {
         _instance.dispatchEvent(param1);
      }
      
      public static function hasEventListener(param1:String) : void
      {
         _instance.hasEventListener(param1);
      }
   }
}
