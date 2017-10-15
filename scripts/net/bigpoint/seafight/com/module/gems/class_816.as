package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass3;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import package_14.class_96;
   import package_170.class_979;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_816 implements class_14
   {
      
      public static const name_3:class_816 = new class_816();
       
      
      private var var_646:int = 0;
      
      public var var_114:int = 0;
      
      public var var_82:Vector.<class_883>;
      
      public function class_816(param1:int = 0, param2:Vector.<class_883> = null)
      {
         super();
         this.var_114 = param1;
         if(param2 == null)
         {
            this.var_82 = new Vector.<class_883>();
         }
         else
         {
            this.var_82 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -7539;
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
         var _loc4_:class_883 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_114 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_82.length > 0)
         {
            this.var_82.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_883(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_82.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_883 = null;
         param1.writeShort(-7539);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(this.var_114);
         param1.writeShort(this.var_82.length);
         for each(_loc2_ in this.var_82)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
