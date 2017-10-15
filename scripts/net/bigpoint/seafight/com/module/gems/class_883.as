package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuFoundTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuFoundTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuFoundTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_14.class_47;
   import package_14.class_88;
   import package_41.class_641;
   import package_41.class_84;
   import package_48.class_996;
   import package_5.class_1239;
   import package_51.class_1355;
   import package_69.class_978;
   import package_8.class_1240;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_883 extends class_641
   {
      
      public static const name_3:class_883 = new class_883();
       
      
      private var var_646:int = 0;
      
      public function class_883()
      {
         super();
      }
      
      override public function method_16() : int
      {
         return 3566;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(3566);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         super.method_14(param1);
      }
   }
}
