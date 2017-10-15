package package_110
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.loadScreen;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_10.class_18;
   import package_10.class_38;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_155.class_623;
   import package_17.class_147;
   import package_17.class_304;
   import package_17.class_307;
   import package_17.class_37;
   import package_170.class_979;
   import package_190.class_1181;
   import package_20.class_33;
   import package_22.class_655;
   import package_23.class_42;
   import package_26.class_52;
   import package_28.class_56;
   import package_36.class_100;
   import package_39.class_973;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_48.class_996;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_1614;
   import package_69.class_978;
   import package_9.class_404;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.Label;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.IndexChangeEvent;
   
   public final class class_506 implements class_14
   {
      
      public static const name_3:class_506 = new class_506();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public var var_691:String = "";
      
      public var name_13:String = "";
      
      public var var_647:Number = 0;
      
      public var name_10:int = 0;
      
      public var var_89:int = 0;
      
      public function class_506(param1:class_84 = null, param2:String = "", param3:int = 0, param4:String = "", param5:int = 0, param6:Number = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
         this.var_691 = param4;
         this.name_13 = param2;
         this.var_647 = param6;
         this.name_10 = param5;
         this.var_89 = param3;
      }
      
      public function method_16() : int
      {
         return 7365;
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
         return 14;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
         this.var_691 = param1.readUTF();
         this.name_13 = param1.readUTF();
         this.var_647 = param1.readDouble();
         this.name_10 = param1.readShort();
         this.name_10 = 65535 & ((65535 & this.name_10) << 6 % 16 | (65535 & this.name_10) >>> 16 - 6 % 16);
         this.name_10 = this.name_10 > 32767?int(this.name_10 - 65536):int(this.name_10);
         this.var_89 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7365);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         this.var_87.method_14(param1);
         param1.writeUTF(this.var_691);
         param1.writeUTF(this.name_13);
         param1.writeDouble(this.var_647);
         param1.writeShort(65535 & ((65535 & this.name_10) >>> 6 % 16 | (65535 & this.name_10) << 16 - 6 % 16));
         param1.writeShort(this.var_89);
      }
   }
}
