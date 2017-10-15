package com.bigpoint.seafight.view.popups.shipselection.vo
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import mx.collections.ArrayList;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   
   public final class ShipSelectionPopupVo extends ContentVo
   {
       
      
      public var gemHolderType:int;
      
      public var selectedId:int;
      
      public var favorites:Boolean = false;
      
      public var gemHolderList:Vector.<class_1170>;
      
      public function ShipSelectionPopupVo()
      {
         super();
      }
   }
}
