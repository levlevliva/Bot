package package_47
{
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import package_14.class_47;
   import package_29.class_57;
   import package_6.class_14;
   import package_84.class_270;
   import spark.components.HGroup;
   
   public final class class_930 implements class_14
   {
      
      public static const name_3:class_930 = new class_930();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_10:int = 0;
      
      public var var_1879:Boolean = false;
      
      public var name_7:int = 0;
      
      public var name_17:int = 0;
      
      public function class_930(param1:int = 0, param2:Boolean = false, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.name_5 = param5;
         this.name_10 = param4;
         this.var_1879 = param2;
         this.name_7 = param1;
         this.name_17 = param3;
      }
      
      public function method_16() : int
      {
         return 13083;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) >>> 10 % 8 | (255 & this.name_10) << 8 - 10 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
         this.var_1879 = param1.readBoolean();
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) << 9 % 16 | (65535 & this.name_7) >>> 16 - 9 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.name_17 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13083);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(this.name_5);
         param1.writeByte(255 & ((255 & this.name_10) << 10 % 8 | (255 & this.name_10) >>> 8 - 10 % 8));
         param1.writeBoolean(this.var_1879);
         param1.writeShort(65535 & ((65535 & this.name_7) >>> 9 % 16 | (65535 & this.name_7) << 16 - 9 % 16));
         param1.writeShort(this.name_17);
      }
   }
}
