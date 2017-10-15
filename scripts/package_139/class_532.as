package package_139
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoUpBtnSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_107.class_693;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_143.class_542;
   import package_143.class_933;
   import package_16.class_28;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_26.class_101;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_1039;
   import package_88.class_1014;
   import spark.components.Button;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_532 implements class_14
   {
      
      public static const name_3:class_532 = new class_532();
       
      
      private var var_646:int = 0;
      
      public var var_26:int = 0;
      
      public var name_14:int = 0;
      
      public var var_60:int = 0;
      
      public function class_532(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_26 = param3;
         this.name_14 = param1;
         this.var_60 = param2;
      }
      
      public function method_16() : int
      {
         return 22684;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_26 = param1.readByte();
         this.var_26 = 255 & ((255 & this.var_26) << 6 % 8 | (255 & this.var_26) >>> 8 - 6 % 8);
         this.var_26 = this.var_26 > 127?int(this.var_26 - 256):int(this.var_26);
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) << 10 % 16 | (65535 & this.name_14) >>> 16 - 10 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
         this.var_60 = param1.readByte();
         this.var_60 = 255 & ((255 & this.var_60) << 11 % 8 | (255 & this.var_60) >>> 8 - 11 % 8);
         this.var_60 = this.var_60 > 127?int(this.var_60 - 256):int(this.var_60);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(22684);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeByte(255 & ((255 & this.var_26) >>> 6 % 8 | (255 & this.var_26) << 8 - 6 % 8));
         param1.writeShort(65535 & ((65535 & this.name_14) >>> 10 % 16 | (65535 & this.name_14) << 16 - 10 % 16));
         param1.writeByte(255 & ((255 & this.var_60) >>> 11 % 8 | (255 & this.var_60) << 8 - 11 % 8));
      }
   }
}
