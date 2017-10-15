package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DeathWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.deathpopup.DeathPopupController;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopup;
   import com.bigpoint.seafight.view.popups.deathpopup.vo.DeathPopupVo;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemKeyValueVO;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.PropertyChangeEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_113.class_397;
   import package_113.class_398;
   import package_113.class_487;
   import package_113.class_538;
   import package_121.class_841;
   import package_14.class_1313;
   import package_14.class_231;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_16.class_28;
   import package_166.class_1589;
   import package_170.class_979;
   import package_171.class_1276;
   import package_171.class_981;
   import package_174.class_1374;
   import package_175.class_1593;
   import package_179.class_1064;
   import package_18.class_855;
   import package_190.class_1181;
   import package_20.class_33;
   import package_23.class_42;
   import package_29.class_565;
   import package_34.class_1362;
   import package_41.class_84;
   import package_45.class_110;
   import package_47.class_881;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_5.class_1026;
   import package_5.class_123;
   import package_5.class_139;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_974;
   import package_69.class_978;
   import package_7.class_35;
   import package_72.class_203;
   import package_9.class_899;
   import package_9.class_91;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_343;
   import package_99.class_386;
   import package_99.class_793;
   import package_99.class_860;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Graphic;
   
   public final class class_122
   {
       
      
      public function class_122()
      {
         super();
      }
      
      public static function method_1866(param1:BitmapData, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = true) : Bitmap
      {
         return new Bitmap(method_1541(param1,param2,param3,param4,param5,param6));
      }
      
      public static function method_1541(param1:BitmapData, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = true) : BitmapData
      {
         var _loc7_:BitmapData = new BitmapData(param2,param3,param6,0);
         method_1431(_loc7_,param1,param2,param3,param4,param5,param6);
         return _loc7_;
      }
      
      public static function method_1431(param1:BitmapData, param2:BitmapData, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = true) : void
      {
         var _loc13_:int = 0;
         param1.lock();
         var _loc8_:int = !!param5?int(param3 / param2.width + 1):1;
         var _loc9_:int = !!param6?int(param4 / param2.height + 1):1;
         var _loc10_:Rectangle = param2.rect;
         var _loc11_:Point = new Point();
         var _loc12_:int = 0;
         while(_loc12_ < _loc8_)
         {
            _loc13_ = 0;
            while(_loc13_ < _loc9_)
            {
               _loc11_.x = _loc12_ * param2.width;
               _loc11_.y = _loc13_ * param2.height;
               param1.copyPixels(param2,_loc10_,_loc11_,null,null,param7);
               _loc13_++;
            }
            _loc12_++;
         }
         param1.unlock();
      }
      
      public static function method_192(param1:int = 255, param2:int = 255, param3:int = 255, param4:int = 255, param5:int = 255, param6:int = 255, param7:ColorMatrixFilter = null) : ColorMatrixFilter
      {
         var _loc11_:Array = null;
         var _loc8_:Number = param4 / param1;
         var _loc9_:Number = param5 / param2;
         var _loc10_:Number = param6 / param3;
         if(param7)
         {
            _loc11_ = !!param7.matrix?param7.matrix:new Array();
            _loc11_[0] = _loc8_;
            _loc11_[6] = _loc9_;
            _loc11_[12] = _loc10_;
            param7.matrix = _loc11_;
         }
         else
         {
            _loc11_ = new Array();
            _loc11_ = _loc11_.concat([_loc8_,0,0,0,0]);
            _loc11_ = _loc11_.concat([0,_loc9_,0,0,0]);
            _loc11_ = _loc11_.concat([0,0,_loc10_,0,0]);
            _loc11_ = _loc11_.concat([0,0,0,1,0]);
            param7 = new ColorMatrixFilter(_loc11_);
         }
         return param7;
      }
      
      public static function method_989(param1:DisplayObject, param2:Boolean) : void
      {
         var _loc3_:Number = 1 / 3;
         var _loc4_:Number = 1 / 3;
         var _loc5_:Number = 1 / 3;
         var _loc6_:ColorMatrixFilter = new ColorMatrixFilter([_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0]);
         if(param2)
         {
            param1.filters = [_loc6_];
         }
         else
         {
            param1.filters = [];
         }
      }
      
      public static function method_3020(param1:Bitmap, param2:Bitmap, param3:uint = 0, param4:uint = 0) : Bitmap
      {
         var _loc5_:Sprite = new Sprite();
         _loc5_.addChild(param1);
         _loc5_.addChild(param2);
         param2.x = param3;
         param2.y = param4;
         var _loc6_:Bitmap = method_1477(_loc5_);
         return _loc6_;
      }
      
      public static function method_1477(param1:Sprite) : Bitmap
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc2_.draw(param1);
         var _loc3_:Bitmap = new Bitmap();
         _loc3_.bitmapData = _loc2_;
         _loc3_.smoothing = true;
         return _loc3_;
      }
      
      public static function method_2965(param1:MovieClip) : Bitmap
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc2_.draw(param1);
         var _loc3_:Bitmap = new Bitmap();
         _loc3_.bitmapData = _loc2_;
         _loc3_.smoothing = true;
         return _loc3_;
      }
      
      public static function method_2400(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = param1.numChildren;
         while(_loc2_--)
         {
            param1.removeChildAt(_loc2_);
         }
      }
      
      public static function method_2718(param1:BitmapData, param2:int, param3:int) : BitmapData
      {
         var _loc4_:Number = param1.width / param2;
         var _loc5_:Number = param1.height / param3;
         var _loc6_:Number = 1 / (_loc4_ > _loc5_?_loc4_:_loc5_);
         var _loc7_:BitmapData = new BitmapData(param1.width * _loc6_,param1.height * _loc6_);
         var _loc8_:Matrix = new Matrix();
         _loc8_.scale(_loc6_,_loc6_);
         _loc7_.draw(param1,_loc8_);
         return _loc7_;
      }
      
      public static function method_2995(param1:uint, param2:uint, param3:uint) : int
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function method_2899(param1:uint) : Object
      {
         var _loc2_:Object = {
            "red":(param1 & 16711680) >> 16,
            "green":(param1 & 65280) >> 8,
            "blue":param1 & 255
         };
         return _loc2_;
      }
   }
}
