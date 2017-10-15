package package_90
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_232;
   import package_14.class_286;
   import package_14.class_47;
   import package_23.class_42;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_48.class_996;
   import package_5.class_984;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.List;
   
   public final class class_464 implements class_14
   {
      
      public static const name_3:class_464 = new class_464();
       
      
      private var var_646:int = 0;
      
      public var var_503:int = 0;
      
      public var name_57:int = 0;
      
      public var var_481:int = 0;
      
      public var var_489:int = 0;
      
      public function class_464(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.var_503 = param3;
         this.name_57 = param1;
         this.var_481 = param4;
         this.var_489 = param2;
      }
      
      public function method_16() : int
      {
         return 5473;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_503 = param1.readByte();
         this.var_503 = 255 & ((255 & this.var_503) >>> 5 % 8 | (255 & this.var_503) << 8 - 5 % 8);
         this.var_503 = this.var_503 > 127?int(this.var_503 - 256):int(this.var_503);
         this.name_57 = param1.readByte();
         this.name_57 = 255 & ((255 & this.name_57) << 11 % 8 | (255 & this.name_57) >>> 8 - 11 % 8);
         this.name_57 = this.name_57 > 127?int(this.name_57 - 256):int(this.name_57);
         this.var_481 = param1.readByte();
         this.var_481 = 255 & ((255 & this.var_481) << 10 % 8 | (255 & this.var_481) >>> 8 - 10 % 8);
         this.var_481 = this.var_481 > 127?int(this.var_481 - 256):int(this.var_481);
         this.var_489 = param1.readByte();
         this.var_489 = 255 & ((255 & this.var_489) << 16 % 8 | (255 & this.var_489) >>> 8 - 16 % 8);
         this.var_489 = this.var_489 > 127?int(this.var_489 - 256):int(this.var_489);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5473);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         param1.writeByte(255 & ((255 & this.var_503) << 5 % 8 | (255 & this.var_503) >>> 8 - 5 % 8));
         param1.writeByte(255 & ((255 & this.name_57) >>> 11 % 8 | (255 & this.name_57) << 8 - 11 % 8));
         param1.writeByte(255 & ((255 & this.var_481) >>> 10 % 8 | (255 & this.var_481) << 8 - 10 % 8));
         param1.writeByte(255 & ((255 & this.var_489) >>> 16 % 8 | (255 & this.var_489) << 8 - 16 % 8));
      }
   }
}
