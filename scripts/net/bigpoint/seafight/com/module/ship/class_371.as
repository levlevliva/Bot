package net.bigpoint.seafight.com.module.ship
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_174.class_1592;
   import package_41.class_84;
   import package_51.class_148;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_371 implements class_14
   {
      
      public static const name_3:class_371 = new class_371();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_4:class_84;
      
      public var var_1577:String = "";
      
      public function class_371(param1:class_84 = null, param2:int = 0, param3:String = "")
      {
         super();
         this.name_5 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_1577 = param3;
      }
      
      public function method_16() : int
      {
         return -15366;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 6 % 16 | (65535 & this.name_4.var_6) << 16 - 6 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_1577 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15366);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 6 % 16 | (65535 & this.name_4.var_6) >>> 16 - 6 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeUTF(this.var_1577);
      }
   }
}
