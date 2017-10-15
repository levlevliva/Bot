package package_118
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.states.State;
   import package_104.class_448;
   import package_107.class_693;
   import package_14.class_51;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_54.class_162;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_725 implements class_14
   {
      
      public static const name_3:class_725 = new class_725();
       
      
      private var var_646:int = 0;
      
      public var var_86:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_725(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_86 = param2;
         this.var_20 = param1;
      }
      
      public function method_16() : int
      {
         return -1335;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_86 = param1.readShort();
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1335);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeShort(this.var_86);
         param1.writeDouble(this.var_20);
      }
   }
}
