package package_97
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.SmallGreenAcceptButton;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.GroupMapPlayerListItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tooltips.TowerListItemToolTip;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_152.class_664;
   import package_171.class_1270;
   import package_190.class_1181;
   import package_20.class_33;
   import package_29.class_565;
   import package_30.class_62;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_1034;
   import package_45.class_110;
   import package_48.class_138;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_48.class_996;
   import package_5.class_22;
   import package_51.class_974;
   import package_69.class_978;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.events.TextOperationEvent;
   import spark.primitives.Rect;
   
   public final class class_344 extends class_341
   {
      
      public static const name_3:class_344 = new class_344();
       
      
      private var var_646:int = 0;
      
      public var var_95:Vector.<class_627>;
      
      public var var_232:int = 0;
      
      public var var_1002:class_914;
      
      public var var_423:int = 0;
      
      public var var_418:int = 0;
      
      public function class_344(param1:class_914 = null, param2:Vector.<class_627> = null, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         if(param2 == null)
         {
            this.var_95 = new Vector.<class_627>();
         }
         else
         {
            this.var_95 = param2;
         }
         this.var_232 = param5;
         if(param1 == null)
         {
            this.var_1002 = new class_914();
         }
         else
         {
            this.var_1002 = param1;
         }
         this.var_423 = param4;
         this.var_418 = param3;
      }
      
      override public function method_16() : int
      {
         return 3156;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_627 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_95.length > 0)
         {
            this.var_95.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_627(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_95.push(_loc4_);
            _loc2_++;
         }
         this.var_232 = param1.readShort();
         this.var_1002 = class_914(class_93.method_26().method_25(param1.readShort()));
         this.var_1002.method_15(param1);
         this.var_423 = param1.readShort();
         this.var_423 = 65535 & ((65535 & this.var_423) << 1 % 16 | (65535 & this.var_423) >>> 16 - 1 % 16);
         this.var_423 = this.var_423 > 32767?int(this.var_423 - 65536):int(this.var_423);
         this.var_418 = param1.readShort();
         this.var_418 = 65535 & ((65535 & this.var_418) >>> 6 % 16 | (65535 & this.var_418) << 16 - 6 % 16);
         this.var_418 = this.var_418 > 32767?int(this.var_418 - 65536):int(this.var_418);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_627 = null;
         param1.writeShort(3156);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_95.length);
         for each(_loc2_ in this.var_95)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_232);
         this.var_1002.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_423) >>> 1 % 16 | (65535 & this.var_423) << 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_418) << 6 % 16 | (65535 & this.var_418) >>> 16 - 6 % 16));
      }
   }
}
