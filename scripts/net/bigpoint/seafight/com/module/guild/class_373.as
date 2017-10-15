package net.bigpoint.seafight.com.module.guild
{
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_152.class_668;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_22;
   import package_72.class_203;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_373 extends class_67
   {
      
      public static const name_3:class_373 = new class_373();
       
      
      private var var_646:int = 0;
      
      public var var_202:Vector.<int>;
      
      public var var_115:class_84;
      
      public function class_373(param1:class_84 = null, param2:Vector.<int> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_202 = new Vector.<int>();
         }
         else
         {
            this.var_202 = param2;
         }
         if(param1 == null)
         {
            this.var_115 = new class_84();
         }
         else
         {
            this.var_115 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 22181;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_202.length > 0)
         {
            this.var_202.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_202.push(param1.readShort());
            _loc2_++;
         }
         this.var_115 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_115.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(22181);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_202.length);
         for each(_loc2_ in this.var_202)
         {
            param1.writeShort(_loc2_);
         }
         this.var_115.method_14(param1);
      }
   }
}
