package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import package_124.class_673;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.VGroup;
   
   public final class class_433 implements class_14
   {
      
      public static const name_3:class_433 = new class_433();
       
      
      private var var_646:int = 0;
      
      public var var_137:String = "";
      
      public var var_810:int = 0;
      
      public var var_1746:Number = 0;
      
      public var var_92:String = "";
      
      public var var_461:Number = 0;
      
      public var var_1477:Number = 0;
      
      public var var_2001:Number = 0;
      
      public var var_994:int = 0;
      
      public var var_1072:Number = 0;
      
      public var name_76:Number = 0;
      
      public var name_14:int = 0;
      
      public var var_17:class_84;
      
      public var var_795:int = 0;
      
      public var var_26:int = 0;
      
      public var var_986:Vector.<int>;
      
      public var var_774:int = 0;
      
      public var var_1798:Number = 0;
      
      public var var_60:int = 0;
      
      public function class_433(param1:class_84 = null, param2:String = "", param3:String = "", param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0, param8:Vector.<int> = null, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:int = 0, param14:Number = 0, param15:Number = 0, param16:Number = 0, param17:int = 0, param18:int = 0)
      {
         super();
         this.var_137 = param3;
         this.var_810 = param18;
         this.var_1746 = param10;
         this.var_92 = param2;
         this.var_461 = param9;
         this.var_1477 = param12;
         this.var_2001 = param15;
         this.var_994 = param13;
         this.var_1072 = param11;
         this.name_76 = param14;
         this.name_14 = param4;
         if(param1 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param1;
         }
         this.var_795 = param5;
         this.var_26 = param7;
         if(param8 == null)
         {
            this.var_986 = new Vector.<int>();
         }
         else
         {
            this.var_986 = param8;
         }
         this.var_774 = param17;
         this.var_1798 = param16;
         this.var_60 = param6;
      }
      
      public function method_16() : int
      {
         return -20578;
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
         return 82;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_137 = param1.readUTF();
         this.var_810 = param1.readInt();
         this.var_810 = this.var_810 >>> 14 % 32 | this.var_810 << 32 - 14 % 32;
         this.var_1746 = param1.readDouble();
         this.var_92 = param1.readUTF();
         this.var_461 = param1.readDouble();
         this.var_1477 = param1.readDouble();
         this.var_2001 = param1.readDouble();
         this.var_994 = param1.readInt();
         this.var_994 = this.var_994 << 11 % 32 | this.var_994 >>> 32 - 11 % 32;
         this.var_1072 = param1.readDouble();
         this.name_76 = param1.readFloat();
         this.name_14 = param1.readInt();
         this.name_14 = this.name_14 >>> 13 % 32 | this.name_14 << 32 - 13 % 32;
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
         this.var_795 = param1.readInt();
         this.var_795 = this.var_795 >>> 7 % 32 | this.var_795 << 32 - 7 % 32;
         this.var_26 = param1.readByte();
         this.var_26 = 255 & ((255 & this.var_26) << 12 % 8 | (255 & this.var_26) >>> 8 - 12 % 8);
         this.var_26 = this.var_26 > 127?int(this.var_26 - 256):int(this.var_26);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_986.length > 0)
         {
            this.var_986.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_986.push(param1.readShort());
            _loc2_++;
         }
         this.var_774 = param1.readInt();
         this.var_774 = this.var_774 << 13 % 32 | this.var_774 >>> 32 - 13 % 32;
         this.var_1798 = param1.readDouble();
         this.var_60 = param1.readByte();
         this.var_60 = 255 & ((255 & this.var_60) << 11 % 8 | (255 & this.var_60) >>> 8 - 11 % 8);
         this.var_60 = this.var_60 > 127?int(this.var_60 - 256):int(this.var_60);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(-20578);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeUTF(this.var_137);
         param1.writeInt(this.var_810 << 14 % 32 | this.var_810 >>> 32 - 14 % 32);
         param1.writeDouble(this.var_1746);
         param1.writeUTF(this.var_92);
         param1.writeDouble(this.var_461);
         param1.writeDouble(this.var_1477);
         param1.writeDouble(this.var_2001);
         param1.writeInt(this.var_994 >>> 11 % 32 | this.var_994 << 32 - 11 % 32);
         param1.writeDouble(this.var_1072);
         param1.writeFloat(this.name_76);
         param1.writeInt(this.name_14 << 13 % 32 | this.name_14 >>> 32 - 13 % 32);
         this.var_17.method_14(param1);
         param1.writeInt(this.var_795 << 7 % 32 | this.var_795 >>> 32 - 7 % 32);
         param1.writeByte(255 & ((255 & this.var_26) >>> 12 % 8 | (255 & this.var_26) << 8 - 12 % 8));
         param1.writeByte(this.var_986.length);
         for each(_loc2_ in this.var_986)
         {
            param1.writeShort(_loc2_);
         }
         param1.writeInt(this.var_774 >>> 13 % 32 | this.var_774 << 32 - 13 % 32);
         param1.writeDouble(this.var_1798);
         param1.writeByte(255 & ((255 & this.var_60) >>> 11 % 8 | (255 & this.var_60) << 8 - 11 % 8));
      }
   }
}
