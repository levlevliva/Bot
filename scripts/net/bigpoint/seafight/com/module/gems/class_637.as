package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.System;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_200;
   import package_14.class_47;
   import package_36.class_100;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_637 implements class_14
   {
      
      public static const name_3:class_637 = new class_637();
       
      
      private var var_646:int = 0;
      
      public var var_54:int = 0;
      
      public var var_82:Vector.<class_599>;
      
      public var var_126:Boolean = false;
      
      public function class_637(param1:int = 0, param2:Boolean = false, param3:Vector.<class_599> = null)
      {
         super();
         this.var_54 = param1;
         if(param3 == null)
         {
            this.var_82 = new Vector.<class_599>();
         }
         else
         {
            this.var_82 = param3;
         }
         this.var_126 = param2;
      }
      
      public function method_16() : int
      {
         return -8477;
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
         return 7;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_599 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_54 = param1.readShort();
         this.var_54 = 65535 & ((65535 & this.var_54) << 13 % 16 | (65535 & this.var_54) >>> 16 - 13 % 16);
         this.var_54 = this.var_54 > 32767?int(this.var_54 - 65536):int(this.var_54);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_82.length > 0)
         {
            this.var_82.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_599(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_82.push(_loc4_);
            _loc2_++;
         }
         this.var_126 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_599 = null;
         param1.writeShort(-8477);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_54) >>> 13 % 16 | (65535 & this.var_54) << 16 - 13 % 16));
         param1.writeByte(this.var_82.length);
         for each(_loc2_ in this.var_82)
         {
            _loc2_.method_14(param1);
         }
         param1.writeBoolean(this.var_126);
      }
   }
}
