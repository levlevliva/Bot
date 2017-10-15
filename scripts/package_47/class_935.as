package package_47
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TimelineMax;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_190.class_1168;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.core.SpriteVisualElement;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_935 implements class_14
   {
      
      public static const name_3:class_935 = new class_935();
      
      public static const const_1846:int = 0;
      
      public static const const_1558:int = 1;
      
      public static const const_1310:int = 2;
      
      public static const const_1890:int = 3;
      
      public static const const_1384:int = 4;
      
      public static const const_1169:int = 5;
       
      
      private var var_646:int = 0;
      
      public var var_38:int = 0;
      
      public var name_5:int = 0;
      
      public function class_935(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_38 = param2;
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -10661;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_38 = param1.readShort();
         this.var_38 = 65535 & ((65535 & this.var_38) >>> 16 % 16 | (65535 & this.var_38) << 16 - 16 % 16);
         this.var_38 = this.var_38 > 32767?int(this.var_38 - 65536):int(this.var_38);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-10661);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.var_38) << 16 % 16 | (65535 & this.var_38) >>> 16 - 16 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
