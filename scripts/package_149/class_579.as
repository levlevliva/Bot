package package_149
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import package_105.class_369;
   import package_105.class_529;
   import package_11.class_130;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_122.class_656;
   import package_14.class_47;
   import package_14.class_88;
   import package_166.class_1589;
   import package_18.class_392;
   import package_20.class_33;
   import package_4.class_11;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_975;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_48.class_996;
   import package_49.class_137;
   import package_54.class_163;
   import package_6.class_14;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   
   public class class_579 extends class_578
   {
      
      public static const name_3:class_579 = new class_579();
       
      
      private var var_646:int = 0;
      
      public var var_535:int = 0;
      
      public var var_266:int = 0;
      
      public var var_269:int = 0;
      
      public var var_328:int = 0;
      
      public var name_10:int = 0;
      
      public function class_579(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.var_535 = param2;
         this.var_266 = param3;
         this.var_269 = param5;
         this.var_328 = param1;
         this.name_10 = param4;
      }
      
      override public function method_16() : int
      {
         return -15279;
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
         return 7;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_535 = param1.readShort();
         this.var_266 = param1.readInt();
         this.var_266 = this.var_266 >>> 8 % 32 | this.var_266 << 32 - 8 % 32;
         this.var_269 = param1.readShort();
         this.var_269 = 65535 & ((65535 & this.var_269) >>> 3 % 16 | (65535 & this.var_269) << 16 - 3 % 16);
         this.var_269 = this.var_269 > 32767?int(this.var_269 - 65536):int(this.var_269);
         this.var_328 = param1.readShort();
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 1 % 8 | (255 & this.name_10) >>> 8 - 1 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15279);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_535);
         param1.writeInt(this.var_266 << 8 % 32 | this.var_266 >>> 32 - 8 % 32);
         param1.writeShort(65535 & ((65535 & this.var_269) << 3 % 16 | (65535 & this.var_269) >>> 16 - 3 % 16));
         param1.writeShort(this.var_328);
         param1.writeByte(255 & ((255 & this.name_10) >>> 1 % 8 | (255 & this.name_10) << 8 - 1 % 8));
      }
   }
}
