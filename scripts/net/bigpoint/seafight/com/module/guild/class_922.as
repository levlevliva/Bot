package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_14.class_88;
   import package_52.class_1087;
   import package_54.class_319;
   import package_6.class_14;
   
   public final class class_922 implements class_14
   {
      
      public static const name_3:class_922 = new class_922();
       
      
      private var var_646:int = 0;
      
      public function class_922()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 3146;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(3146);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
      }
   }
}
