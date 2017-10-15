package com.bigpoint.seafight.view.popups.quest.npc.component
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.vo.GemConfigTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_36.class_100;
   import package_5.class_123;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_55;
   import package_72.class_203;
   import package_76.class_279;
   import package_99.class_786;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.primitives.BitmapImage;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   public final class QuestWindowHeaderBG extends Group
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function QuestWindowHeaderBG()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._QuestWindowHeaderBG_Rect1_c(),this._QuestWindowHeaderBG_BriskImageDynaLib1_c(),this._QuestWindowHeaderBG_BriskImageDynaLib2_c()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function _QuestWindowHeaderBG_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 100;
         _loc1_.right = 100;
         _loc1_.percentWidth = 100;
         _loc1_.height = 36;
         _loc1_.fill = this._QuestWindowHeaderBG_BriskBitmapFill1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _QuestWindowHeaderBG_BriskBitmapFill1_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "header_seamless";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _QuestWindowHeaderBG_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 0;
         _loc1_.height = 36;
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "header_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestWindowHeaderBG_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.right = 0;
         _loc1_.height = 36;
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "header_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
   }
}
