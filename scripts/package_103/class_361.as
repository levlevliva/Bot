package package_103
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import package_41.class_84;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_361 implements class_14
   {
      
      public static const name_3:class_361 = new class_361();
       
      
      private var var_646:int = 0;
      
      public var var_58:int = 0;
      
      public var name_28:Boolean = false;
      
      public var name_6:class_91;
      
      public var name_4:class_84;
      
      public var name_25:int = 0;
      
      public function class_361(param1:class_84 = null, param2:int = 0, param3:Boolean = false, param4:int = 0, param5:class_91 = null)
      {
         super();
         this.var_58 = param2;
         this.name_28 = param3;
         if(param5 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param5;
         }
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.name_25 = param4;
      }
      
      public function method_16() : int
      {
         return -20612;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_58 = param1.readShort();
         this.name_28 = param1.readBoolean();
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 8 % 16 | (65535 & this.name_6.var_8) << 16 - 8 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 12 % 16 | (65535 & this.name_6.var_9) << 16 - 12 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 1 % 16 | (65535 & this.name_4.var_6) << 16 - 1 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.name_25 = param1.readByte();
         this.name_25 = 255 & ((255 & this.name_25) >>> 6 % 8 | (255 & this.name_25) << 8 - 6 % 8);
         this.name_25 = this.name_25 > 127?int(this.name_25 - 256):int(this.name_25);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-20612);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeShort(this.var_58);
         param1.writeBoolean(this.name_28);
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 8 % 16 | (65535 & this.name_6.var_8) >>> 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 12 % 16 | (65535 & this.name_6.var_9) >>> 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 1 % 16 | (65535 & this.name_4.var_6) >>> 16 - 1 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeByte(255 & ((255 & this.name_25) << 6 % 8 | (255 & this.name_25) >>> 8 - 6 % 8));
      }
   }
}
