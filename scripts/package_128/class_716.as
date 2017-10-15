package package_128
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_149.class_578;
   import package_152.class_776;
   import package_185.class_1136;
   import package_45.class_110;
   import package_84.class_270;
   import spark.components.VGroup;
   
   public final class class_716 extends class_578
   {
      
      public static const name_3:class_716 = new class_716();
       
      
      private var var_646:int = 0;
      
      public var var_2091:Boolean = false;
      
      public var var_1719:Boolean = false;
      
      public var var_1607:Boolean = false;
      
      public var var_1528:Number = 0;
      
      public var var_1794:Boolean = false;
      
      public var var_1981:Boolean = false;
      
      public var var_1562:Boolean = false;
      
      public var var_71:int = 0;
      
      public var var_1694:Boolean = false;
      
      public var var_22:int = 0;
      
      public var var_121:int = 0;
      
      public var var_246:String = "";
      
      public var var_1721:Number = 0;
      
      public function class_716(param1:Number = 0, param2:Number = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:String = "", param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false)
      {
         super();
         this.var_2091 = param13;
         this.var_1719 = param10;
         this.var_1607 = param8;
         this.var_1528 = param2;
         this.var_1794 = param12;
         this.var_1981 = param11;
         this.var_1562 = param7;
         this.var_71 = param3;
         this.var_1694 = param9;
         this.var_22 = param4;
         this.var_121 = param5;
         this.var_246 = param6;
         this.var_1721 = param1;
      }
      
      override public function method_16() : int
      {
         return 25403;
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
         return 35;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_2091 = param1.readBoolean();
         this.var_1719 = param1.readBoolean();
         this.var_1607 = param1.readBoolean();
         this.var_1528 = param1.readDouble();
         this.var_1794 = param1.readBoolean();
         this.var_1981 = param1.readBoolean();
         this.var_1562 = param1.readBoolean();
         this.var_71 = param1.readInt();
         this.var_71 = this.var_71 << 10 % 32 | this.var_71 >>> 32 - 10 % 32;
         this.var_1694 = param1.readBoolean();
         this.var_22 = param1.readShort();
         this.var_22 = 65535 & ((65535 & this.var_22) << 9 % 16 | (65535 & this.var_22) >>> 16 - 9 % 16);
         this.var_22 = this.var_22 > 32767?int(this.var_22 - 65536):int(this.var_22);
         this.var_121 = param1.readInt();
         this.var_121 = this.var_121 << 2 % 32 | this.var_121 >>> 32 - 2 % 32;
         this.var_246 = param1.readUTF();
         this.var_1721 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25403);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         super.method_14(param1);
         param1.writeBoolean(this.var_2091);
         param1.writeBoolean(this.var_1719);
         param1.writeBoolean(this.var_1607);
         param1.writeDouble(this.var_1528);
         param1.writeBoolean(this.var_1794);
         param1.writeBoolean(this.var_1981);
         param1.writeBoolean(this.var_1562);
         param1.writeInt(this.var_71 >>> 10 % 32 | this.var_71 << 32 - 10 % 32);
         param1.writeBoolean(this.var_1694);
         param1.writeShort(65535 & ((65535 & this.var_22) >>> 9 % 16 | (65535 & this.var_22) << 16 - 9 % 16));
         param1.writeInt(this.var_121 >>> 2 % 32 | this.var_121 << 32 - 2 % 32);
         param1.writeUTF(this.var_246);
         param1.writeDouble(this.var_1721);
      }
   }
}
