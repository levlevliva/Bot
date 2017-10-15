package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.TransferAmountPopup;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import package_216.class_1575;
   import package_41.class_84;
   import package_41.class_93;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   
   public final class class_780 implements class_14
   {
      
      public static const name_3:class_780 = new class_780();
       
      
      private var var_646:int = 0;
      
      public var var_1154:class_775;
      
      public var var_157:int = 0;
      
      public var var_161:int = 0;
      
      public var var_160:int = 0;
      
      public var var_148:int = 0;
      
      public function class_780(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:class_775 = null)
      {
         super();
         if(param5 == null)
         {
            this.var_1154 = new class_775();
         }
         else
         {
            this.var_1154 = param5;
         }
         this.var_157 = param4;
         this.var_161 = param3;
         this.var_160 = param2;
         this.var_148 = param1;
      }
      
      public function method_16() : int
      {
         return -14687;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1154 = class_775(class_93.method_26().method_25(param1.readShort()));
         this.var_1154.method_15(param1);
         this.var_157 = param1.readShort();
         this.var_157 = 65535 & ((65535 & this.var_157) << 14 % 16 | (65535 & this.var_157) >>> 16 - 14 % 16);
         this.var_157 = this.var_157 > 32767?int(this.var_157 - 65536):int(this.var_157);
         this.var_161 = param1.readShort();
         this.var_161 = 65535 & ((65535 & this.var_161) << 4 % 16 | (65535 & this.var_161) >>> 16 - 4 % 16);
         this.var_161 = this.var_161 > 32767?int(this.var_161 - 65536):int(this.var_161);
         this.var_160 = param1.readShort();
         this.var_160 = 65535 & ((65535 & this.var_160) >>> 11 % 16 | (65535 & this.var_160) << 16 - 11 % 16);
         this.var_160 = this.var_160 > 32767?int(this.var_160 - 65536):int(this.var_160);
         this.var_148 = param1.readShort();
         this.var_148 = 65535 & ((65535 & this.var_148) >>> 9 % 16 | (65535 & this.var_148) << 16 - 9 % 16);
         this.var_148 = this.var_148 > 32767?int(this.var_148 - 65536):int(this.var_148);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14687);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         this.var_1154.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_157) >>> 14 % 16 | (65535 & this.var_157) << 16 - 14 % 16));
         param1.writeShort(65535 & ((65535 & this.var_161) >>> 4 % 16 | (65535 & this.var_161) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.var_160) << 11 % 16 | (65535 & this.var_160) >>> 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.var_148) << 9 % 16 | (65535 & this.var_148) >>> 16 - 9 % 16));
      }
   }
}
