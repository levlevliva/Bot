package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import flash.display.DisplayObject;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_871 implements class_14
   {
      
      public static const name_3:class_871 = new class_871();
       
      
      private var var_646:int = 0;
      
      public function class_871()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 20123;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20123);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
      }
   }
}
