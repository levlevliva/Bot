package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_14.class_47;
   import package_41.class_93;
   import package_5.class_22;
   import package_51.class_148;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.primitives.Line;
   
   public final class class_864 implements class_14
   {
      
      public static const name_3:class_864 = new class_864();
       
      
      private var var_646:int = 0;
      
      public var var_899:Vector.<class_759>;
      
      public function class_864(param1:Vector.<class_759> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_899 = new Vector.<class_759>();
         }
         else
         {
            this.var_899 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 27785;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_759 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_899.length > 0)
         {
            this.var_899.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_759(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_899.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_759 = null;
         param1.writeShort(27785);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(this.var_899.length);
         for each(_loc2_ in this.var_899)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
