package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.view.common.components.MateysWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.MateysWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysWindowNaviController;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.messageuserpopup.component.target;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipEquipmentSailsTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentSailsTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyActionsItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.AnimationManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_102;
   import package_14.class_1377;
   import package_14.class_47;
   import package_14.class_88;
   import package_152.class_668;
   import package_166.class_1486;
   import package_167.class_1022;
   import package_167.class_1024;
   import package_167.class_972;
   import package_17.class_54;
   import package_190.class_1181;
   import package_20.class_33;
   import package_29.class_143;
   import package_29.class_144;
   import package_32.class_64;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_1089;
   import package_72.class_1080;
   import package_72.class_203;
   import package_9.class_120;
   import package_9.class_91;
   import package_93.class_987;
   import package_99.class_911;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_181
   {
       
      
      public function class_181()
      {
         super();
      }
      
      public static function method_2906(param1:Object) : Class
      {
         return Class(getDefinitionByName(getQualifiedClassName(param1)));
      }
      
      public static function method_770(param1:DisplayObject) : void
      {
         if(param1 != null)
         {
            if(param1.parent != null)
            {
               param1.parent.removeChild(param1);
            }
         }
      }
      
      public static function method_2052(param1:Dictionary) : int
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function method_756(param1:String, param2:URLVariables = null) : URLRequest
      {
         var _loc3_:URLRequest = new URLRequest(param1);
         _loc3_.data = param2;
         _loc3_.method = URLRequestMethod.GET;
         return _loc3_;
      }
      
      public static function method_1153(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         for each(_loc2_ in param1)
         {
            if(_loc2_.filters)
            {
               _loc3_ = _loc2_.filters.length;
               _loc4_ = _loc2_.filters;
               _loc5_ = 0;
               while(_loc5_ < _loc3_)
               {
                  if(_loc4_[_loc5_] is ColorMatrixFilter)
                  {
                     _loc4_.splice(_loc5_,1);
                     _loc2_.filters = _loc4_;
                     break;
                  }
                  _loc5_++;
               }
            }
         }
      }
      
      public static function method_2166(param1:Number, param2:Number) : int
      {
         return Math.floor(Math.random() * (1 + param2 - param1) + param1);
      }
      
      public static function method_1874(param1:Bitmap, param2:uint = 4.281545523E9) : Rectangle
      {
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc3_.draw(param1.bitmapData);
         _loc3_.threshold(_loc3_,new Rectangle(0,0,param1.width,param1.height),new Point(0,0),"<",param2,0);
         var _loc4_:Rectangle = _loc3_.getColorBoundsRect(4294967295,0,false);
         if(_loc4_.width >= 23)
         {
            _loc4_.x = -_loc4_.x / 2;
         }
         else
         {
            _loc4_ = new Rectangle();
         }
         return _loc4_;
      }
      
      public static function method_2861(param1:SWFFinisher, param2:String) : Boolean
      {
         var clazz:Class = null;
         var finisher:SWFFinisher = param1;
         var name:String = param2;
         try
         {
            clazz = finisher.getClassRefeference(name);
         }
         catch(e:Error)
         {
            return false;
         }
         return clazz != null;
      }
      
      public static function method_1594(param1:Array, param2:Array) : Array
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:Array = param2;
         for each(_loc4_ in param1)
         {
            _loc5_ = false;
            _loc6_ = 0;
            while(_loc6_ < param2.length)
            {
               _loc7_ = param2[_loc6_];
               if(_loc4_ == _loc7_)
               {
                  _loc5_ = true;
                  break;
               }
               _loc6_++;
            }
            if(!_loc5_)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public static function method_2864(param1:Vector.<int>, param2:Vector.<int>) : Vector.<int>
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:Vector.<int> = param2;
         for each(_loc4_ in param1)
         {
            _loc5_ = false;
            _loc6_ = 0;
            while(_loc6_ < param2.length)
            {
               _loc7_ = param2[_loc6_];
               if(_loc4_ == _loc7_)
               {
                  _loc5_ = true;
                  break;
               }
               _loc6_++;
            }
            if(!_loc5_)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
   }
}
