package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_14.class_47;
   import package_26.class_1086;
   import package_41.class_93;
   import package_53.class_1100;
   
   public final class class_421 extends class_67
   {
      
      public static const name_3:class_421 = new class_421();
       
      
      private var var_646:int = 0;
      
      public var var_761:Vector.<class_607>;
      
      public function class_421(param1:Vector.<class_607> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_761 = new Vector.<class_607>();
         }
         else
         {
            this.var_761 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -26787;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_607 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_761.length > 0)
         {
            this.var_761.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_607(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_761.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_607 = null;
         param1.writeShort(-26787);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_761.length);
         for each(_loc2_ in this.var_761)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
