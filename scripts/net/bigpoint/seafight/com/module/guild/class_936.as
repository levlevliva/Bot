package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsList;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_18.class_855;
   import package_41.class_93;
   import package_6.class_14;
   import spark.primitives.Rect;
   
   public final class class_936 implements class_14
   {
      
      public static const name_3:class_936 = new class_936();
       
      
      private var var_646:int = 0;
      
      public var var_715:int = 0;
      
      public var var_664:int = 0;
      
      public function class_936(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_715 = param1;
         this.var_664 = param2;
      }
      
      public function method_16() : int
      {
         return 25497;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_715 = param1.readInt();
         this.var_715 = this.var_715 << 3 % 32 | this.var_715 >>> 32 - 3 % 32;
         this.var_664 = param1.readInt();
         this.var_664 = this.var_664 << 1 % 32 | this.var_664 >>> 32 - 1 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25497);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeInt(this.var_715 >>> 3 % 32 | this.var_715 << 32 - 3 % 32);
         param1.writeInt(this.var_664 >>> 1 % 32 | this.var_664 << 32 - 1 % 32);
      }
   }
}
