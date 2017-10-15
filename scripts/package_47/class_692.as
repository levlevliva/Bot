package package_47
{
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass2;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_170.class_979;
   import package_190.class_1168;
   import package_30.class_62;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_22;
   import package_5.class_984;
   import package_6.class_14;
   import package_89.class_1378;
   import package_89.class_1379;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_692 implements class_14
   {
      
      public static const name_3:class_692 = new class_692();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public function class_692(param1:class_84 = null)
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
         return -22908;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_4.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-22908);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         this.name_4.method_14(param1);
      }
   }
}
