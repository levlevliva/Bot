package com.bit101.components
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.display.DisplayObjectContainer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.graphics.LinearGradient;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_51;
   import package_171.class_1273;
   import package_34.class_1499;
   import package_41.class_84;
   import package_5.class_123;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   public final class SeafightTextPanel extends Panel
   {
       
      
      private var _swfFin:SWFFinisher;
      
      private var _upperText:Label;
      
      private var _lowerText:Label;
      
      public function SeafightTextPanel(param1:String, param2:Object, param3:Object, param4:DisplayObjectContainer = null, param5:Number = 0, param6:Number = 0)
      {
         super(param4,param5,param6);
         this._swfFin = getSWFFinisher(class_123.const_21);
         this.addChild(this._swfFin.getEmbeddedBitmap(param1));
         this._upperText = new Label(this,48,5,"",param2);
         this._lowerText = new Label(this,48,18,"",param3);
      }
      
      public function set upperText(param1:String) : void
      {
         this._upperText.text = param1;
      }
      
      public function set lowerText(param1:String) : void
      {
         this._lowerText.text = param1;
      }
   }
}
