package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_286;
   import package_14.class_47;
   import package_30.class_62;
   import package_5.class_123;
   import package_5.class_43;
   import package_52.class_1227;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_784 extends class_602
   {
      
      public static const name_3:class_784 = new class_784();
       
      
      private var var_646:int = 0;
      
      public var var_227:Number = 0;
      
      public var var_81:Number = 0;
      
      public function class_784(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.var_227 = param1;
         this.var_81 = param2;
      }
      
      override public function method_16() : int
      {
         return -19125;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 16;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_227 = param1.readDouble();
         this.var_81 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-19125);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_227);
         param1.writeDouble(this.var_81);
      }
   }
}
