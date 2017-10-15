package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_900 implements class_14
   {
      
      public static const name_3:class_900 = new class_900();
       
      
      private var var_646:int = 0;
      
      public var name_30:int = 0;
      
      public var var_143:String = "";
      
      public var name_41:Vector.<class_821>;
      
      public var var_225:int = 0;
      
      public var var_1016:Number = 0;
      
      public function class_900(param1:int = 0, param2:String = "", param3:Number = 0, param4:Vector.<class_821> = null, param5:int = 0)
      {
         super();
         this.name_30 = param5;
         this.var_143 = param2;
         if(param4 == null)
         {
            this.name_41 = new Vector.<class_821>();
         }
         else
         {
            this.name_41 = param4;
         }
         this.var_225 = param1;
         this.var_1016 = param3;
      }
      
      public function method_16() : int
      {
         return 13973;
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
         return 18;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_821 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_30 = param1.readShort();
         this.var_143 = param1.readUTF();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_41.length > 0)
         {
            this.name_41.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_821(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_41.push(_loc4_);
            _loc2_++;
         }
         this.var_225 = param1.readInt();
         this.var_225 = this.var_225 << 15 % 32 | this.var_225 >>> 32 - 15 % 32;
         this.var_1016 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_821 = null;
         param1.writeShort(13973);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeShort(this.name_30);
         param1.writeUTF(this.var_143);
         param1.writeByte(this.name_41.length);
         for each(_loc2_ in this.name_41)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_225 >>> 15 % 32 | this.var_225 << 32 - 15 % 32);
         param1.writeDouble(this.var_1016);
      }
   }
}
