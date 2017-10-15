package package_9
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_96;
   import package_5.class_123;
   import package_52.class_1227;
   import package_6.class_14;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_347 implements class_14
   {
      
      public static const name_3:class_347 = new class_347();
      
      public static const const_1844:int = 0;
      
      public static const const_2447:int = 1;
      
      public static const const_1168:int = 2;
       
      
      private var var_646:int = 0;
      
      public var var_588:Number = 0;
      
      public var name_5:int = 0;
      
      public function class_347(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_588 = param2;
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -28972;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_588 = param1.readDouble();
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-28972);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeDouble(this.var_588);
         param1.writeShort(this.name_5);
      }
   }
}
