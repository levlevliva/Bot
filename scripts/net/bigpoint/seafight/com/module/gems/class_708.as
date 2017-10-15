package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_102.class_359;
   import package_124.class_434;
   import package_14.class_47;
   import package_14.class_88;
   import package_174.class_1592;
   import package_18.class_392;
   import package_45.class_110;
   import package_46.class_975;
   import package_54.class_319;
   import package_6.class_14;
   import spark.filters.GlowFilter;
   import spark.layouts.HorizontalLayout;
   
   public final class class_708 implements class_14
   {
      
      public static const name_3:class_708 = new class_708();
       
      
      private var var_646:int = 0;
      
      public var var_119:int = 0;
      
      public var var_1809:Boolean = false;
      
      public var var_97:int = 0;
      
      public function class_708(param1:int = 0, param2:Boolean = false, param3:int = 0)
      {
         super();
         this.var_119 = param3;
         this.var_1809 = param2;
         this.var_97 = param1;
      }
      
      public function method_16() : int
      {
         return 5713;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_119 = param1.readByte();
         this.var_119 = 255 & ((255 & this.var_119) << 2 % 8 | (255 & this.var_119) >>> 8 - 2 % 8);
         this.var_119 = this.var_119 > 127?int(this.var_119 - 256):int(this.var_119);
         this.var_1809 = param1.readBoolean();
         this.var_97 = param1.readShort();
         this.var_97 = 65535 & ((65535 & this.var_97) >>> 9 % 16 | (65535 & this.var_97) << 16 - 9 % 16);
         this.var_97 = this.var_97 > 32767?int(this.var_97 - 65536):int(this.var_97);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5713);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeByte(255 & ((255 & this.var_119) >>> 2 % 8 | (255 & this.var_119) << 8 - 2 % 8));
         param1.writeBoolean(this.var_1809);
         param1.writeShort(65535 & ((65535 & this.var_97) << 9 % 16 | (65535 & this.var_97) >>> 16 - 9 % 16));
      }
   }
}
