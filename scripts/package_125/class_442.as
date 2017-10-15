package package_125
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_114.class_430;
   import package_136.class_926;
   import package_14.class_1003;
   import package_14.class_47;
   import package_166.class_958;
   import package_184.class_1129;
   import package_36.class_100;
   import package_41.class_84;
   import package_50.class_141;
   import package_54.class_159;
   import package_6.class_14;
   import package_88.class_290;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public final class class_442 implements class_14
   {
      
      public static const name_3:class_442 = new class_442();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public function class_442(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 2693;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 16 % 16 | (65535 & this.name_4.var_6) >>> 16 - 16 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2693);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 16 % 16 | (65535 & this.name_4.var_6) << 16 - 16 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
