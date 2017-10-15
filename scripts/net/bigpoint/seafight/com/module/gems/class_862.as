package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_14.class_47;
   import package_14.class_94;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_51.class_148;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.Label;
   
   public final class class_862 implements class_14
   {
      
      public static const name_3:class_862 = new class_862();
       
      
      private var var_646:int = 0;
      
      public var var_797:Vector.<class_772>;
      
      public var var_650:Vector.<class_593>;
      
      public function class_862(param1:Vector.<class_593> = null, param2:Vector.<class_772> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_797 = new Vector.<class_772>();
         }
         else
         {
            this.var_797 = param2;
         }
         if(param1 == null)
         {
            this.var_650 = new Vector.<class_593>();
         }
         else
         {
            this.var_650 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 25964;
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
         var _loc4_:class_772 = null;
         var _loc5_:class_593 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_797.length > 0)
         {
            this.var_797.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_772(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_797.push(_loc4_);
            _loc2_++;
         }
         while(this.var_650.length > 0)
         {
            this.var_650.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_593(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_650.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_772 = null;
         var _loc3_:class_593 = null;
         param1.writeShort(25964);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeByte(this.var_797.length);
         for each(_loc2_ in this.var_797)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_650.length);
         for each(_loc3_ in this.var_650)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
