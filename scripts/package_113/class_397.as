package package_113
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.bitmapclip.initCollections;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.guild.class_760;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_10.class_18;
   import package_10.class_38;
   import package_101.class_511;
   import package_101.class_608;
   import package_107.class_693;
   import package_14.class_47;
   import package_154.class_842;
   import package_170.class_979;
   import package_179.class_1064;
   import package_186.class_1137;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_43.class_272;
   import package_46.class_1493;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_6.class_14;
   import package_89.class_1138;
   import package_9.class_120;
   import spark.components.Group;
   import spark.layouts.VerticalLayout;
   
   public class class_397 implements class_14
   {
      
      public static const name_3:class_397 = new class_397();
       
      
      private var var_646:int = 0;
      
      public var var_1481:Boolean = false;
      
      public var var_1328:Boolean = false;
      
      public var var_379:int = 0;
      
      public var var_1191:class_90;
      
      public var var_500:int = 0;
      
      public var var_1680:Number = 0;
      
      public var var_1933:Number = 0;
      
      public function class_397(param1:Number = 0, param2:Number = 0, param3:int = 0, param4:class_90 = null, param5:Boolean = false, param6:Boolean = false, param7:int = 0)
      {
         super();
         this.var_1481 = param5;
         this.var_1328 = param6;
         this.var_379 = param3;
         if(param4 == null)
         {
            this.var_1191 = new class_90();
         }
         else
         {
            this.var_1191 = param4;
         }
         this.var_500 = param7;
         this.var_1680 = param2;
         this.var_1933 = param1;
      }
      
      public function method_16() : int
      {
         return -16589;
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
         return 20;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1481 = param1.readBoolean();
         this.var_1328 = param1.readBoolean();
         this.var_379 = param1.readShort();
         this.var_1191 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_1191.method_15(param1);
         this.var_500 = param1.readShort();
         this.var_500 = 65535 & ((65535 & this.var_500) >>> 3 % 16 | (65535 & this.var_500) << 16 - 3 % 16);
         this.var_500 = this.var_500 > 32767?int(this.var_500 - 65536):int(this.var_500);
         this.var_1680 = param1.readDouble();
         this.var_1933 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16589);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeBoolean(this.var_1481);
         param1.writeBoolean(this.var_1328);
         param1.writeShort(this.var_379);
         this.var_1191.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_500) << 3 % 16 | (65535 & this.var_500) >>> 16 - 3 % 16));
         param1.writeDouble(this.var_1680);
         param1.writeDouble(this.var_1933);
      }
   }
}
