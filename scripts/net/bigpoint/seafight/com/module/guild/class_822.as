package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_170.class_979;
   import package_6.class_14;
   import spark.filters.GlowFilter;
   import spark.primitives.BitmapImage;
   
   public final class class_822 implements class_14
   {
      
      public static const name_3:class_822 = new class_822();
       
      
      private var var_646:int = 0;
      
      public var var_205:String = "";
      
      public var var_672:String = "";
      
      public var var_123:String = "";
      
      public var name_13:String = "";
      
      public function class_822(param1:String = "", param2:String = "", param3:String = "", param4:String = "")
      {
         super();
         this.var_205 = param3;
         this.var_672 = param4;
         this.var_123 = param2;
         this.name_13 = param1;
      }
      
      public function method_16() : int
      {
         return -27250;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_205 = param1.readUTF();
         this.var_672 = param1.readUTF();
         this.var_123 = param1.readUTF();
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27250);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeUTF(this.var_205);
         param1.writeUTF(this.var_672);
         param1.writeUTF(this.var_123);
         param1.writeUTF(this.name_13);
      }
   }
}
