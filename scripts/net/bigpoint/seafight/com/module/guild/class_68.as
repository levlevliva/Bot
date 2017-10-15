package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_152.class_852;
   import package_220.class_1601;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_68 extends class_67
   {
      
      public static const name_3:class_68 = new class_68();
       
      
      private var var_646:int = 0;
      
      public var var_517:Boolean = false;
      
      public var var_73:int = 0;
      
      public var var_225:int = 0;
      
      public function class_68(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         super();
         this.var_517 = param3;
         this.var_73 = param2;
         this.var_225 = param1;
      }
      
      override public function method_16() : int
      {
         return -29903;
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
         return 9;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_517 = param1.readBoolean();
         this.var_73 = param1.readInt();
         this.var_73 = this.var_73 << 7 % 32 | this.var_73 >>> 32 - 7 % 32;
         this.var_225 = param1.readInt();
         this.var_225 = this.var_225 >>> 14 % 32 | this.var_225 << 32 - 14 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-29903);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         super.method_14(param1);
         param1.writeBoolean(this.var_517);
         param1.writeInt(this.var_73 >>> 7 % 32 | this.var_73 << 32 - 7 % 32);
         param1.writeInt(this.var_225 << 14 % 32 | this.var_225 >>> 32 - 14 % 32);
      }
   }
}
