package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_131.class_573;
   import package_41.class_84;
   import package_9.class_91;
   import spark.components.Label;
   import spark.layouts.VerticalLayout;
   
   public final class class_510 extends class_67
   {
      
      public static const name_3:class_510 = new class_510();
       
      
      private var var_646:int = 0;
      
      public var var_924:Vector.<int>;
      
      public var var_444:int = 0;
      
      public var var_441:int = 0;
      
      public function class_510(param1:int = 0, param2:int = 0, param3:Vector.<int> = null)
      {
         super();
         if(param3 == null)
         {
            this.var_924 = new Vector.<int>();
         }
         else
         {
            this.var_924 = param3;
         }
         this.var_444 = param2;
         this.var_441 = param1;
      }
      
      override public function method_16() : int
      {
         return 1873;
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
         return 6;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_924.length > 0)
         {
            this.var_924.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_924.push(param1.readShort());
            _loc2_++;
         }
         this.var_444 = param1.readByte();
         this.var_444 = 255 & ((255 & this.var_444) >>> 2 % 8 | (255 & this.var_444) << 8 - 2 % 8);
         this.var_444 = this.var_444 > 127?int(this.var_444 - 256):int(this.var_444);
         this.var_441 = param1.readByte();
         this.var_441 = 255 & ((255 & this.var_441) >>> 13 % 8 | (255 & this.var_441) << 8 - 13 % 8);
         this.var_441 = this.var_441 > 127?int(this.var_441 - 256):int(this.var_441);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(1873);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_924.length);
         for each(_loc2_ in this.var_924)
         {
            param1.writeShort(_loc2_);
         }
         param1.writeByte(255 & ((255 & this.var_444) << 2 % 8 | (255 & this.var_444) >>> 8 - 2 % 8));
         param1.writeByte(255 & ((255 & this.var_441) << 13 % 8 | (255 & this.var_441) >>> 8 - 13 % 8));
      }
   }
}
