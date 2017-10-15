package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_206;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_5.class_214;
   import package_6.class_14;
   
   public final class class_858 implements class_14
   {
      
      public static const name_3:class_858 = new class_858();
       
      
      private var var_646:int = 0;
      
      public var var_131:int = 0;
      
      public var name_34:int = 0;
      
      public var var_830:Vector.<int>;
      
      public function class_858(param1:int = 0, param2:int = 0, param3:Vector.<int> = null)
      {
         super();
         this.var_131 = param2;
         this.name_34 = param1;
         if(param3 == null)
         {
            this.var_830 = new Vector.<int>();
         }
         else
         {
            this.var_830 = param3;
         }
      }
      
      public function method_16() : int
      {
         return 22729;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_131 = param1.readInt();
         this.var_131 = this.var_131 >>> 8 % 32 | this.var_131 << 32 - 8 % 32;
         this.name_34 = param1.readInt();
         this.name_34 = this.name_34 >>> 14 % 32 | this.name_34 << 32 - 14 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_830.length > 0)
         {
            this.var_830.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_830.push(param1.readShort());
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(22729);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeInt(this.var_131 << 8 % 32 | this.var_131 >>> 32 - 8 % 32);
         param1.writeInt(this.name_34 << 14 % 32 | this.name_34 >>> 32 - 14 % 32);
         param1.writeByte(this.var_830.length);
         for each(_loc2_ in this.var_830)
         {
            param1.writeShort(_loc2_);
         }
      }
   }
}
