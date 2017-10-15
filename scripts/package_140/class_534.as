package package_140
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuEquipmentTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuEquipmentTabController;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.graphics.GradientEntry;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_14.class_47;
   import package_215.class_1600;
   import package_43.class_106;
   import package_46.class_1455;
   import package_47.class_930;
   import package_5.class_939;
   import package_51.class_1355;
   import package_6.class_14;
   import package_8.class_114;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.layouts.VerticalLayout;
   
   public final class class_534 implements class_14
   {
      
      public static const name_3:class_534 = new class_534();
       
      
      private var var_646:int = 0;
      
      public var var_320:int = 0;
      
      public function class_534(param1:int = 0)
      {
         super();
         this.var_320 = param1;
      }
      
      public function method_16() : int
      {
         return -1915;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_320 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1915);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(this.var_320);
      }
   }
}
