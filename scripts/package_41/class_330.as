package package_41
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_14.class_94;
   import package_186.class_1137;
   import package_23.class_42;
   import package_46.class_1455;
   import package_5.class_214;
   import package_5.class_43;
   import package_5.class_984;
   import package_54.class_319;
   import package_55.class_164;
   import package_6.class_14;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   
   public final class class_330 implements class_14
   {
      
      public static const name_3:class_330 = new class_330();
       
      
      private var var_646:int = 0;
      
      public var var_252:int = 0;
      
      public var name_28:Boolean = false;
      
      public function class_330(param1:int = 0, param2:Boolean = false)
      {
         super();
         this.var_252 = param1;
         this.name_28 = param2;
      }
      
      public function method_16() : int
      {
         return -21905;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_252 = param1.readInt();
         this.var_252 = this.var_252 << 4 % 32 | this.var_252 >>> 32 - 4 % 32;
         this.name_28 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-21905);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeInt(this.var_252 >>> 4 % 32 | this.var_252 << 32 - 4 % 32);
         param1.writeBoolean(this.name_28);
      }
   }
}
