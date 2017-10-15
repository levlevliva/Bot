package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_5.class_12;
   import package_5.class_123;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.DataGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_678 implements class_14
   {
      
      public static const name_3:class_678 = new class_678();
       
      
      private var var_646:int = 0;
      
      public var name_6:int = 0;
      
      public var var_155:class_91;
      
      public var var_654:Boolean = false;
      
      public var name_10:int = 0;
      
      public function class_678(param1:int = 0, param2:class_91 = null, param3:int = 0, param4:Boolean = false)
      {
         super();
         this.name_6 = param1;
         if(param2 == null)
         {
            this.var_155 = new class_91();
         }
         else
         {
            this.var_155 = param2;
         }
         this.var_654 = param4;
         this.name_10 = param3;
      }
      
      public function method_16() : int
      {
         return -27040;
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
         return 3;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_6 = param1.readByte();
         this.name_6 = 255 & ((255 & this.name_6) << 13 % 8 | (255 & this.name_6) >>> 8 - 13 % 8);
         this.name_6 = this.name_6 > 127?int(this.name_6 - 256):int(this.name_6);
         this.var_155 = new class_91();
         this.var_155.var_8 = param1.readShort();
         this.var_155.var_8 = 65535 & ((65535 & this.var_155.var_8) << 10 % 16 | (65535 & this.var_155.var_8) >>> 16 - 10 % 16);
         this.var_155.var_8 = this.var_155.var_8 > 32767?int(this.var_155.var_8 - 65536):int(this.var_155.var_8);
         this.var_155.var_9 = param1.readShort();
         this.var_155.var_9 = 65535 & ((65535 & this.var_155.var_9) >>> 4 % 16 | (65535 & this.var_155.var_9) << 16 - 4 % 16);
         this.var_155.var_9 = this.var_155.var_9 > 32767?int(this.var_155.var_9 - 65536):int(this.var_155.var_9);
         this.var_654 = param1.readBoolean();
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) >>> 15 % 8 | (255 & this.name_10) << 8 - 15 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27040);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         param1.writeByte(255 & ((255 & this.name_6) >>> 13 % 8 | (255 & this.name_6) << 8 - 13 % 8));
         param1.writeShort(65535 & ((65535 & this.var_155.var_8) >>> 10 % 16 | (65535 & this.var_155.var_8) << 16 - 10 % 16));
         param1.writeShort(65535 & ((65535 & this.var_155.var_9) << 4 % 16 | (65535 & this.var_155.var_9) >>> 16 - 4 % 16));
         param1.writeBoolean(this.var_654);
         param1.writeByte(255 & ((255 & this.name_10) << 15 % 8 | (255 & this.name_10) >>> 8 - 15 % 8));
      }
   }
}
