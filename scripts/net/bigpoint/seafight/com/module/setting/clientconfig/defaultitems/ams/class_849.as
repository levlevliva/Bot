package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.inventory.vo.amsPlayer.AmsPlayer_VO;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_14.class_47;
   import package_154.class_632;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_849 extends class_602
   {
      
      public static const name_3:class_849 = new class_849();
       
      
      private var var_646:int = 0;
      
      public var var_563:int = 0;
      
      public var var_527:int = 0;
      
      public function class_849(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_563 = param1;
         this.var_527 = param2;
      }
      
      override public function method_16() : int
      {
         return 22121;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_563 = param1.readShort();
         this.var_563 = 65535 & ((65535 & this.var_563) << 4 % 16 | (65535 & this.var_563) >>> 16 - 4 % 16);
         this.var_563 = this.var_563 > 32767?int(this.var_563 - 65536):int(this.var_563);
         this.var_527 = param1.readShort();
         this.var_527 = 65535 & ((65535 & this.var_527) << 5 % 16 | (65535 & this.var_527) >>> 16 - 5 % 16);
         this.var_527 = this.var_527 > 32767?int(this.var_527 - 65536):int(this.var_527);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(22121);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_563) >>> 4 % 16 | (65535 & this.var_563) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.var_527) >>> 5 % 16 | (65535 & this.var_527) << 16 - 5 % 16));
      }
   }
}
