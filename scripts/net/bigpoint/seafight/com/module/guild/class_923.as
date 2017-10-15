package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatItem;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_923 implements class_14
   {
      
      public static const name_3:class_923 = new class_923();
       
      
      private var var_646:int = 0;
      
      public var var_1376:int = 0;
      
      public var var_1566:Number = 0;
      
      public var var_145:Vector.<class_900>;
      
      public function class_923(param1:Vector.<class_900> = null, param2:int = 0, param3:Number = 0)
      {
         super();
         this.var_1376 = param2;
         this.var_1566 = param3;
         if(param1 == null)
         {
            this.var_145 = new Vector.<class_900>();
         }
         else
         {
            this.var_145 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -917;
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
         var _loc4_:class_900 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1376 = param1.readShort();
         this.var_1566 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_145.length > 0)
         {
            this.var_145.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_900(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_145.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_900 = null;
         param1.writeShort(-917);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(this.var_1376);
         param1.writeDouble(this.var_1566);
         param1.writeByte(this.var_145.length);
         for each(_loc2_ in this.var_145)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
