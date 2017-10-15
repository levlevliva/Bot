package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import package_41.class_84;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_489 implements class_14
   {
      
      public static const name_3:class_489 = new class_489();
       
      
      private var var_646:int = 0;
      
      public var var_474:int = 0;
      
      public var name_6:int = 0;
      
      public function class_489(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_474 = param1;
         this.name_6 = param2;
      }
      
      public function method_16() : int
      {
         return 3267;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_474 = param1.readByte();
         this.var_474 = 255 & ((255 & this.var_474) << 13 % 8 | (255 & this.var_474) >>> 8 - 13 % 8);
         this.var_474 = this.var_474 > 127?int(this.var_474 - 256):int(this.var_474);
         this.name_6 = param1.readByte();
         this.name_6 = 255 & ((255 & this.name_6) >>> 4 % 8 | (255 & this.name_6) << 8 - 4 % 8);
         this.name_6 = this.name_6 > 127?int(this.name_6 - 256):int(this.name_6);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(3267);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeByte(255 & ((255 & this.var_474) >>> 13 % 8 | (255 & this.var_474) << 8 - 13 % 8));
         param1.writeByte(255 & ((255 & this.name_6) << 4 % 8 | (255 & this.name_6) >>> 8 - 4 % 8));
      }
   }
}
