package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import package_41.class_84;
   import package_41.class_93;
   
   public final class class_921 extends class_67
   {
      
      public static const name_3:class_921 = new class_921();
       
      
      private var var_646:int = 0;
      
      public var var_253:Boolean = false;
      
      public var var_17:class_84;
      
      public function class_921(param1:class_84 = null, param2:Boolean = false)
      {
         super();
         this.var_253 = param2;
         if(param1 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 20686;
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
         return 1;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_253 = param1.readBoolean();
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20686);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         super.method_14(param1);
         param1.writeBoolean(this.var_253);
         this.var_17.method_14(param1);
      }
   }
}
