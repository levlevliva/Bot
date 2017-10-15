package package_147
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuIslandsTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuIslandsTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
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
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_5.class_22;
   import package_51.class_1355;
   import package_6.class_14;
   import package_97.class_409;
   import spark.components.HGroup;
   import spark.layouts.HorizontalLayout;
   
   public final class class_572 implements class_14
   {
      
      public static const name_3:class_572 = new class_572();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public var name_7:class_84;
      
      public var var_92:String = "";
      
      public function class_572(param1:String = "", param2:class_84 = null, param3:String = "")
      {
         super();
         this.name_13 = param1;
         if(param2 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param2;
         }
         this.var_92 = param3;
      }
      
      public function method_16() : int
      {
         return -17210;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_13 = param1.readUTF();
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
         this.var_92 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-17210);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeUTF(this.name_13);
         this.name_7.method_14(param1);
         param1.writeUTF(this.var_92);
      }
   }
}
