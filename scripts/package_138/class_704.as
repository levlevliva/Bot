package package_138
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.GuildIslandWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandWindowNaviController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_14.class_49;
   import package_20.class_33;
   import package_42.class_99;
   import package_45.class_110;
   import package_5.class_43;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_1080;
   import spark.components.DataGroup;
   import spark.components.RichText;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   
   public final class class_704 implements class_14
   {
      
      public static const name_3:class_704 = new class_704();
       
      
      private var var_646:int = 0;
      
      public var var_13:int = 0;
      
      public var name_5:int = 0;
      
      public var var_1695:Number = 0;
      
      public function class_704(param1:int = 0, param2:int = 0, param3:Number = 0)
      {
         super();
         this.var_13 = param2;
         this.name_5 = param1;
         this.var_1695 = param3;
      }
      
      public function method_16() : int
      {
         return 16920;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_13 = param1.readInt();
         this.var_13 = this.var_13 >>> 14 % 32 | this.var_13 << 32 - 14 % 32;
         this.name_5 = param1.readShort();
         this.var_1695 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(16920);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeInt(this.var_13 << 14 % 32 | this.var_13 >>> 32 - 14 % 32);
         param1.writeShort(this.name_5);
         param1.writeDouble(this.var_1695);
      }
   }
}
