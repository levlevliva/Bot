package package_123
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import package_121.class_841;
   import package_152.class_852;
   import package_18.class_916;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_43;
   import package_50.class_1506;
   import package_6.class_14;
   import spark.components.Grid;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   
   public final class class_652 implements class_14
   {
      
      public static const name_3:class_652 = new class_652();
       
      
      private var var_646:int = 0;
      
      public var var_187:int = 0;
      
      public var var_842:Vector.<class_837>;
      
      public function class_652(param1:int = 0, param2:Vector.<class_837> = null)
      {
         super();
         this.var_187 = param1;
         if(param2 == null)
         {
            this.var_842 = new Vector.<class_837>();
         }
         else
         {
            this.var_842 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -21203;
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
         var _loc4_:class_837 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_187 = param1.readInt();
         this.var_187 = this.var_187 << 3 % 32 | this.var_187 >>> 32 - 3 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_842.length > 0)
         {
            this.var_842.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_837(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_842.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_837 = null;
         param1.writeShort(-21203);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeInt(this.var_187 >>> 3 % 32 | this.var_187 << 32 - 3 % 32);
         param1.writeByte(this.var_842.length);
         for each(_loc2_ in this.var_842)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
