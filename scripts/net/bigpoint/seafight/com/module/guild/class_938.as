package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.core.UIComponentDescriptor;
   import spark.primitives.BitmapImage;
   
   public final class class_938 extends class_67
   {
      
      public static const name_3:class_938 = new class_938();
       
      
      private var var_646:int = 0;
      
      public var var_205:String = "";
      
      public var var_123:String = "";
      
      public var name_13:String = "";
      
      public var var_1710:Boolean = false;
      
      public var var_1427:Number = 0;
      
      public var var_384:int = 0;
      
      public var var_229:int = 0;
      
      public function class_938(param1:String = "", param2:String = "", param3:String = "", param4:int = 0, param5:int = 0, param6:Number = 0, param7:Boolean = false)
      {
         super();
         this.var_205 = param3;
         this.var_123 = param2;
         this.name_13 = param1;
         this.var_1710 = param7;
         this.var_1427 = param6;
         this.var_384 = param5;
         this.var_229 = param4;
      }
      
      override public function method_16() : int
      {
         return -22568;
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
         return 17;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_205 = param1.readUTF();
         this.var_123 = param1.readUTF();
         this.name_13 = param1.readUTF();
         this.var_1710 = param1.readBoolean();
         this.var_1427 = param1.readDouble();
         this.var_384 = param1.readShort();
         this.var_384 = 65535 & ((65535 & this.var_384) >>> 4 % 16 | (65535 & this.var_384) << 16 - 4 % 16);
         this.var_384 = this.var_384 > 32767?int(this.var_384 - 65536):int(this.var_384);
         this.var_229 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-22568);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_205);
         param1.writeUTF(this.var_123);
         param1.writeUTF(this.name_13);
         param1.writeBoolean(this.var_1710);
         param1.writeDouble(this.var_1427);
         param1.writeShort(65535 & ((65535 & this.var_384) << 4 % 16 | (65535 & this.var_384) >>> 16 - 4 % 16));
         param1.writeShort(this.var_229);
      }
   }
}
