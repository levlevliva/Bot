package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bit101.components.LabelBar;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_799 implements class_14
   {
      
      public static const name_3:class_799 = new class_799();
       
      
      private var var_646:int = 0;
      
      public var var_253:Boolean = false;
      
      public var var_1530:String = "";
      
      public var var_17:class_84;
      
      public var name_13:String = "";
      
      public function class_799(param1:Boolean = false, param2:class_84 = null, param3:String = "", param4:String = "")
      {
         super();
         this.var_253 = param1;
         this.var_1530 = param4;
         if(param2 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param2;
         }
         this.name_13 = param3;
      }
      
      public function method_16() : int
      {
         return 19529;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_253 = param1.readBoolean();
         this.var_1530 = param1.readUTF();
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(19529);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeBoolean(this.var_253);
         param1.writeUTF(this.var_1530);
         this.var_17.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
