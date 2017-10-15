package package_99
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.castle.controller.CastleDragDropController;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_591;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_110.class_903;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_87;
   import package_156.class_654;
   import package_16.class_28;
   import package_167.class_1024;
   import package_210.class_1364;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1455;
   import package_46.class_1501;
   import package_5.class_43;
   import package_7.class_1039;
   import package_74.class_236;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_410 extends class_341
   {
      
      public static const name_3:class_410 = new class_410();
       
      
      private var var_646:int = 0;
      
      public var var_153:int = 0;
      
      public var var_869:Vector.<class_810>;
      
      public var var_498:int = 0;
      
      public var var_488:int = 0;
      
      public function class_410(param1:Vector.<class_810> = null, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.var_153 = param4;
         if(param1 == null)
         {
            this.var_869 = new Vector.<class_810>();
         }
         else
         {
            this.var_869 = param1;
         }
         this.var_498 = param3;
         this.var_488 = param2;
      }
      
      override public function method_16() : int
      {
         return -13110;
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
         return 10;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_810 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_153 = param1.readShort();
         this.var_153 = 65535 & ((65535 & this.var_153) << 13 % 16 | (65535 & this.var_153) >>> 16 - 13 % 16);
         this.var_153 = this.var_153 > 32767?int(this.var_153 - 65536):int(this.var_153);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_869.length > 0)
         {
            this.var_869.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_810(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_869.push(_loc4_);
            _loc2_++;
         }
         this.var_498 = param1.readShort();
         this.var_498 = 65535 & ((65535 & this.var_498) << 3 % 16 | (65535 & this.var_498) >>> 16 - 3 % 16);
         this.var_498 = this.var_498 > 32767?int(this.var_498 - 65536):int(this.var_498);
         this.var_488 = param1.readShort();
         this.var_488 = 65535 & ((65535 & this.var_488) >>> 9 % 16 | (65535 & this.var_488) << 16 - 9 % 16);
         this.var_488 = this.var_488 > 32767?int(this.var_488 - 65536):int(this.var_488);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_810 = null;
         param1.writeShort(-13110);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_153) >>> 13 % 16 | (65535 & this.var_153) << 16 - 13 % 16));
         param1.writeByte(this.var_869.length);
         for each(_loc2_ in this.var_869)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.var_498) >>> 3 % 16 | (65535 & this.var_498) << 16 - 3 % 16));
         param1.writeShort(65535 & ((65535 & this.var_488) << 9 % 16 | (65535 & this.var_488) >>> 16 - 9 % 16));
      }
   }
}
