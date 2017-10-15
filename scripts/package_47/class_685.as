package package_47
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass4;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import package_121.class_841;
   import package_6.class_14;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   
   public final class class_685 implements class_14
   {
      
      public static const name_3:class_685 = new class_685();
       
      
      private var var_646:int = 0;
      
      public var var_1098:String = "";
      
      public var var_1396:String = "";
      
      public var var_1196:String = "";
      
      public function class_685(param1:String = "", param2:String = "", param3:String = "")
      {
         super();
         this.var_1098 = param1;
         this.var_1396 = param3;
         this.var_1196 = param2;
      }
      
      public function method_16() : int
      {
         return 9887;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1098 = param1.readUTF();
         this.var_1396 = param1.readUTF();
         this.var_1196 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(9887);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeUTF(this.var_1098);
         param1.writeUTF(this.var_1396);
         param1.writeUTF(this.var_1196);
      }
   }
}
