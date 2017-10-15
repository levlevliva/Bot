package package_147
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import package_167.class_1024;
   import package_190.class_1168;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_984;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_918 extends class_339
   {
      
      public static const name_3:class_918 = new class_918();
       
      
      private var var_646:int = 0;
      
      public var var_186:Vector.<class_695>;
      
      public function class_918(param1:Vector.<class_695> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_186 = new Vector.<class_695>();
         }
         else
         {
            this.var_186 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -173;
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
         var _loc4_:class_695 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_186.length > 0)
         {
            this.var_186.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_695(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_186.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_695 = null;
         param1.writeShort(-173);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_186.length);
         for each(_loc2_ in this.var_186)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
