package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.target;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import package_14.class_47;
   import package_20.class_33;
   import package_26.class_1088;
   import package_41.class_93;
   import spark.layouts.VerticalLayout;
   
   use namespace mx_internal;
   
   public final class class_394 extends class_67
   {
      
      public static const name_3:class_394 = new class_394();
       
      
      private var var_646:int = 0;
      
      public var var_49:Vector.<class_838>;
      
      public var var_878:Vector.<class_799>;
      
      public function class_394(param1:Vector.<class_838> = null, param2:Vector.<class_799> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_49 = new Vector.<class_838>();
         }
         else
         {
            this.var_49 = param1;
         }
         if(param2 == null)
         {
            this.var_878 = new Vector.<class_799>();
         }
         else
         {
            this.var_878 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 21145;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_838 = null;
         var _loc5_:class_799 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_49.length > 0)
         {
            this.var_49.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_838(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_49.push(_loc4_);
            _loc2_++;
         }
         while(this.var_878.length > 0)
         {
            this.var_878.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_799(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_878.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_838 = null;
         var _loc3_:class_799 = null;
         param1.writeShort(21145);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_49.length);
         for each(_loc2_ in this.var_49)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_878.length);
         for each(_loc3_ in this.var_878)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
