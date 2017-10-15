package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.puzzlepopup.puzzleId;
   import com.bigpoint.seafight.view.popups.puzzlepopup.query;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenu;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_136.class_926;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_29.class_57;
   import package_32.class_64;
   import package_39.class_973;
   import package_41.class_103;
   import package_5.class_214;
   import package_5.class_22;
   import package_51.class_148;
   import package_52.class_168;
   import package_54.class_159;
   import package_81.class_262;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.primitives.Rect;
   
   public final class class_519 extends class_67
   {
      
      public static const name_3:class_519 = new class_519();
       
      
      private var var_646:int = 0;
      
      public function class_519()
      {
         super();
      }
      
      override public function method_16() : int
      {
         return 10052;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10052);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         super.method_14(param1);
      }
   }
}
