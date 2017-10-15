package package_9
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.describeType;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_152.class_668;
   import package_5.class_22;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.Label;
   
   public final class class_445 implements class_14
   {
      
      public static const name_3:class_445 = new class_445();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var name_58:int = 0;
      
      public function class_445(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_11 = param1;
         this.name_58 = param2;
      }
      
      public function method_16() : int
      {
         return 6701;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) >>> 7 % 16 | (65535 & this.name_11) << 16 - 7 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         this.name_58 = param1.readInt();
         this.name_58 = this.name_58 >>> 2 % 32 | this.name_58 << 32 - 2 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(6701);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) << 7 % 16 | (65535 & this.name_11) >>> 16 - 7 % 16));
         param1.writeInt(this.name_58 << 2 % 32 | this.name_58 >>> 32 - 2 % 32);
      }
   }
}
