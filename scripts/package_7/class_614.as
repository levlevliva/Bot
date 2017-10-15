package package_7
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.xF;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_104.class_448;
   import package_104.class_989;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_88;
   import package_166.class_971;
   import package_17.class_54;
   import package_17.class_990;
   import package_171.class_1269;
   import package_26.class_52;
   import package_3.class_26;
   import package_34.class_107;
   import package_34.class_1272;
   import package_41.class_84;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_43;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_9.class_120;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_614 implements class_14
   {
      
      public static const name_3:class_614 = new class_614();
      
      public static const const_1726:int = 0;
      
      public static const const_2833:int = 1;
      
      public static const const_1905:int = 2;
       
      
      private var var_646:int = 0;
      
      public var name_17:int = 0;
      
      public var var_201:Number = 0;
      
      public function class_614(param1:int = 0, param2:Number = 0)
      {
         super();
         this.name_17 = param1;
         this.var_201 = param2;
      }
      
      public function method_16() : int
      {
         return -2000;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_17 = param1.readShort();
         this.var_201 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-2000);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeShort(this.name_17);
         param1.writeDouble(this.var_201);
      }
   }
}
