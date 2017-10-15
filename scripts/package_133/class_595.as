package package_133
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import package_14.class_47;
   import package_14.class_88;
   import package_190.class_1181;
   import package_20.class_33;
   import package_41.class_93;
   import package_43.class_105;
   import package_45.class_110;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_51.class_974;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   
   public final class class_595 implements class_14
   {
      
      public static const name_3:class_595 = new class_595();
       
      
      private var var_646:int = 0;
      
      public var var_482:int = 0;
      
      public var var_13:int = 0;
      
      public function class_595(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_482 = param2;
         this.var_13 = param1;
      }
      
      public function method_16() : int
      {
         return -25594;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_482 = param1.readByte();
         this.var_482 = 255 & ((255 & this.var_482) << 16 % 8 | (255 & this.var_482) >>> 8 - 16 % 8);
         this.var_482 = this.var_482 > 127?int(this.var_482 - 256):int(this.var_482);
         this.var_13 = param1.readInt();
         this.var_13 = this.var_13 >>> 5 % 32 | this.var_13 << 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-25594);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeByte(255 & ((255 & this.var_482) >>> 16 % 8 | (255 & this.var_482) << 8 - 16 % 8));
         param1.writeInt(this.var_13 << 5 % 32 | this.var_13 >>> 32 - 5 % 32);
      }
   }
}
