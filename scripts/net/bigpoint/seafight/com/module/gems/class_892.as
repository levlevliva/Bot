package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_170.class_979;
   import package_171.class_1275;
   import package_212.class_1537;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   
   public final class class_892 implements class_14
   {
      
      public static const name_3:class_892 = new class_892();
       
      
      private var var_646:int = 0;
      
      public var var_82:Vector.<class_599>;
      
      public var var_114:int = 0;
      
      public var var_54:int = 0;
      
      public var var_1010:Vector.<class_584>;
      
      public function class_892(param1:Vector.<class_599> = null, param2:int = 0, param3:int = 0, param4:Vector.<class_584> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_82 = new Vector.<class_599>();
         }
         else
         {
            this.var_82 = param1;
         }
         this.var_114 = param3;
         this.var_54 = param2;
         if(param4 == null)
         {
            this.var_1010 = new Vector.<class_584>();
         }
         else
         {
            this.var_1010 = param4;
         }
      }
      
      public function method_16() : int
      {
         return 15176;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_599 = null;
         var _loc5_:class_584 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
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
         this.var_114 = param1.readShort();
         this.var_54 = param1.readInt();
         this.var_54 = this.var_54 >>> 14 % 32 | this.var_54 << 32 - 14 % 32;
         while(this.var_1010.length > 0)
         {
            this.var_1010.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_584(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_1010.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_599 = null;
         var _loc3_:class_584 = null;
         param1.writeShort(15176);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeByte(this.var_82.length);
         for each(_loc2_ in this.var_82)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_114);
         param1.writeInt(this.var_54 << 14 % 32 | this.var_54 >>> 32 - 14 % 32);
         param1.writeByte(this.var_1010.length);
         for each(_loc3_ in this.var_1010)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
