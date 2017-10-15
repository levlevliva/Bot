package com.bigpoint.seafight.view.popups.common
{
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.greensock.TimelineMax;
   import flash.display.DisplayObject;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import spark.components.Group;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class BorderType1 extends Group
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BorderType1()
      {
         super();
         mx_internal::_document = this;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.mxmlContent = [this._BorderType1_Rect1_c(),this._BorderType1_Rect2_c(),this._BorderType1_Rect3_c(),this._BorderType1_Rect4_c()];
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
      
      private final function _BorderType1_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.top = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 3;
         _loc1_.fill = this._BorderType1_BriskBitmapFill1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BorderType1_BriskBitmapFill1_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "golden_border_seamless_top";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _BorderType1_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.bottom = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 3;
         _loc1_.fill = this._BorderType1_BriskBitmapFill2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BorderType1_BriskBitmapFill2_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "golden_border_seamless_top";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _BorderType1_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.percentHeight = 100;
         _loc1_.width = 3;
         _loc1_.fill = this._BorderType1_BriskBitmapFill3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BorderType1_BriskBitmapFill3_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "golden_border_seamless_left";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _BorderType1_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.right = 0;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.percentHeight = 100;
         _loc1_.width = 3;
         _loc1_.fill = this._BorderType1_BriskBitmapFill4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BorderType1_BriskBitmapFill4_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "golden_border_seamless_left";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
   }
}
