package package_101
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import package_14.class_47;
   import package_167.class_972;
   import package_41.class_93;
   import package_47.class_129;
   import package_5.class_22;
   import package_6.class_14;
   import package_88.class_967;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_388 implements class_14
   {
      
      public static const name_3:class_388 = new class_388();
       
      
      private var var_646:int = 0;
      
      public var var_49:Vector.<class_566>;
      
      public var var_1728:Number = 0;
      
      public var var_53:int = 0;
      
      public var var_1602:Number = 0;
      
      public var var_111:int = 0;
      
      public var name_11:int = 0;
      
      public var var_33:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_388(param1:int = 0, param2:int = 0, param3:Number = 0, param4:Number = 0, param5:Vector.<class_566> = null, param6:Number = 0, param7:int = 0, param8:int = 0)
      {
         super();
         if(param5 == null)
         {
            this.var_49 = new Vector.<class_566>();
         }
         else
         {
            this.var_49 = param5;
         }
         this.var_1728 = param4;
         this.var_53 = param1;
         this.var_1602 = param3;
         this.var_111 = param8;
         this.name_11 = param2;
         this.var_33 = param7;
         this.var_20 = param6;
      }
      
      public function method_16() : int
      {
         return 3217;
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
         return 44;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_566 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
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
            _loc4_ = class_566(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_49.push(_loc4_);
            _loc2_++;
         }
         this.var_1728 = param1.readDouble();
         this.var_53 = param1.readInt();
         this.var_53 = this.var_53 << 2 % 32 | this.var_53 >>> 32 - 2 % 32;
         this.var_1602 = param1.readDouble();
         this.var_111 = param1.readInt();
         this.var_111 = this.var_111 << 12 % 32 | this.var_111 >>> 32 - 12 % 32;
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 3 % 32 | this.name_11 >>> 32 - 3 % 32;
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 << 2 % 32 | this.var_33 >>> 32 - 2 % 32;
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_566 = null;
         param1.writeShort(3217);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeByte(this.var_49.length);
         for each(_loc2_ in this.var_49)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.var_1728);
         param1.writeInt(this.var_53 >>> 2 % 32 | this.var_53 << 32 - 2 % 32);
         param1.writeDouble(this.var_1602);
         param1.writeInt(this.var_111 >>> 12 % 32 | this.var_111 << 32 - 12 % 32);
         param1.writeInt(this.name_11 >>> 3 % 32 | this.name_11 << 32 - 3 % 32);
         param1.writeInt(this.var_33 >>> 2 % 32 | this.var_33 << 32 - 2 % 32);
         param1.writeDouble(this.var_20);
      }
   }
}
