package package_9
{
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import package_41.class_84;
   import package_6.class_14;
   import spark.primitives.BitmapImage;
   
   public final class class_836 implements class_14
   {
      
      public static const name_3:class_836 = new class_836();
       
      
      private var var_646:int = 0;
      
      public var name_6:class_91;
      
      public var name_5:int = 0;
      
      public function class_836(param1:class_91 = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param1;
         }
         this.name_5 = param2;
      }
      
      public function method_16() : int
      {
         return -3027;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 6 % 16 | (65535 & this.name_6.var_8) << 16 - 6 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) << 1 % 16 | (65535 & this.name_6.var_9) >>> 16 - 1 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3027);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 6 % 16 | (65535 & this.name_6.var_8) >>> 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) >>> 1 % 16 | (65535 & this.name_6.var_9) << 16 - 1 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
