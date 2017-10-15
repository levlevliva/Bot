package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_46.class_1455;
   import package_49.class_137;
   import package_51.class_1355;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_593 implements class_14
   {
      
      public static const name_3:class_593 = new class_593();
       
      
      private var var_646:int = 0;
      
      public var name_39:Number = 0;
      
      public var name_10:int = 0;
      
      public var name_40:Number = 0;
      
      public function class_593(param1:int = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.name_39 = param3;
         this.name_10 = param1;
         this.name_40 = param2;
      }
      
      public function method_16() : int
      {
         return -5103;
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
         return 18;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_39 = param1.readDouble();
         this.name_10 = param1.readShort();
         this.name_10 = 65535 & ((65535 & this.name_10) >>> 14 % 16 | (65535 & this.name_10) << 16 - 14 % 16);
         this.name_10 = this.name_10 > 32767?int(this.name_10 - 65536):int(this.name_10);
         this.name_40 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5103);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeDouble(this.name_39);
         param1.writeShort(65535 & ((65535 & this.name_10) << 14 % 16 | (65535 & this.name_10) >>> 16 - 14 % 16));
         param1.writeDouble(this.name_40);
      }
   }
}
