package net.bigpoint.seafight.com.module.guild
{
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_175.class_1593;
   import package_41.class_93;
   import package_5.class_123;
   import package_6.class_14;
   import spark.primitives.BitmapImage;
   
   public final class class_913 implements class_14
   {
      
      public static const name_3:class_913 = new class_913();
       
      
      private var var_646:int = 0;
      
      public var var_106:class_826;
      
      public var var_341:String = "";
      
      public var var_202:Vector.<int>;
      
      public var var_22:int = 0;
      
      public function class_913(param1:class_826 = null, param2:String = "", param3:int = 0, param4:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_106 = new class_826();
         }
         else
         {
            this.var_106 = param1;
         }
         this.var_341 = param2;
         if(param4 == null)
         {
            this.var_202 = new Vector.<int>();
         }
         else
         {
            this.var_202 = param4;
         }
         this.var_22 = param3;
      }
      
      public function method_16() : int
      {
         return -8932;
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
         return 7;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_106 = class_826(class_93.method_26().method_25(param1.readShort()));
         this.var_106.method_15(param1);
         this.var_341 = param1.readUTF();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_202.length > 0)
         {
            this.var_202.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_202.push(param1.readShort());
            _loc2_++;
         }
         this.var_22 = param1.readByte();
         this.var_22 = 255 & ((255 & this.var_22) >>> 11 % 8 | (255 & this.var_22) << 8 - 11 % 8);
         this.var_22 = this.var_22 > 127?int(this.var_22 - 256):int(this.var_22);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(-8932);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         this.var_106.method_14(param1);
         param1.writeUTF(this.var_341);
         param1.writeByte(this.var_202.length);
         for each(_loc2_ in this.var_202)
         {
            param1.writeShort(_loc2_);
         }
         param1.writeByte(255 & ((255 & this.var_22) << 11 % 8 | (255 & this.var_22) >>> 8 - 11 % 8));
      }
   }
}
