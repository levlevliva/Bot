package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_20.class_33;
   
   public final class class_928 extends class_67
   {
      
      public static const name_3:class_928 = new class_928();
       
      
      private var var_646:int = 0;
      
      public var name_22:int = 0;
      
      public var var_1526:String = "";
      
      public function class_928(param1:String = "", param2:int = 0)
      {
         super();
         this.name_22 = param2;
         this.var_1526 = param1;
      }
      
      override public function method_16() : int
      {
         return 15766;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_22 = param1.readShort();
         this.var_1526 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15766);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_22);
         param1.writeUTF(this.var_1526);
      }
   }
}
