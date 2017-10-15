package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_118.class_1445;
   import package_14.class_47;
   import package_14.class_51;
   import package_5.class_940;
   
   public final class class_877 extends class_67
   {
      
      public static const name_3:class_877 = new class_877();
       
      
      private var var_646:int = 0;
      
      public var var_123:String = "";
      
      public var var_1691:Boolean = false;
      
      public var var_229:int = 0;
      
      public var name_13:String = "";
      
      public var var_1513:String = "";
      
      public var var_672:String = "";
      
      public function class_877(param1:String = "", param2:String = "", param3:int = 0, param4:String = "", param5:String = "", param6:Boolean = false)
      {
         super();
         this.var_123 = param2;
         this.var_1691 = param6;
         this.var_229 = param3;
         this.name_13 = param1;
         this.var_1513 = param4;
         this.var_672 = param5;
      }
      
      override public function method_16() : int
      {
         return -12683;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_123 = param1.readUTF();
         this.var_1691 = param1.readBoolean();
         this.var_229 = param1.readShort();
         this.name_13 = param1.readUTF();
         this.var_1513 = param1.readUTF();
         this.var_672 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-12683);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_123);
         param1.writeBoolean(this.var_1691);
         param1.writeShort(this.var_229);
         param1.writeUTF(this.name_13);
         param1.writeUTF(this.var_1513);
         param1.writeUTF(this.var_672);
      }
   }
}
