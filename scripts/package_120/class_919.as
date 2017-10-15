package package_120
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.modules.achievement.target;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.shipselection.vo.ShipSelectionPopupVo;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenShipSelectionWindow;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.gems.class_709;
   import package_100.class_356;
   import package_11.class_130;
   import package_122.class_656;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_149.class_578;
   import package_15.class_48;
   import package_16.class_28;
   import package_20.class_33;
   import package_22.class_671;
   import package_41.class_93;
   import package_47.class_935;
   import package_49.class_137;
   import package_5.class_22;
   import package_53.class_1100;
   import package_54.class_319;
   import package_6.class_14;
   import package_7.class_15;
   import package_74.class_253;
   import package_84.class_270;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.RectangularDropShadow;
   
   use namespace mx_internal;
   
   public final class class_919 extends class_578
   {
      
      public static const name_3:class_919 = new class_919();
       
      
      private var var_646:int = 0;
      
      public var var_604:int = 0;
      
      public var var_1736:Boolean = false;
      
      public var var_1558:Boolean = false;
      
      public var var_1600:Boolean = false;
      
      public var var_497:int = 0;
      
      public var var_741:int = 0;
      
      public var var_1731:Boolean = false;
      
      public var var_276:int = 0;
      
      public function class_919(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         super();
         this.var_604 = param2;
         this.var_1736 = param6;
         this.var_1558 = param7;
         this.var_1600 = param5;
         this.var_497 = param4;
         this.var_741 = param3;
         this.var_1731 = param8;
         this.var_276 = param1;
      }
      
      override public function method_16() : int
      {
         return 30043;
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
         return 14;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_604 = param1.readShort();
         this.var_1736 = param1.readBoolean();
         this.var_1558 = param1.readBoolean();
         this.var_1600 = param1.readBoolean();
         this.var_497 = param1.readShort();
         this.var_497 = 65535 & ((65535 & this.var_497) << 4 % 16 | (65535 & this.var_497) >>> 16 - 4 % 16);
         this.var_497 = this.var_497 > 32767?int(this.var_497 - 65536):int(this.var_497);
         this.var_741 = param1.readInt();
         this.var_741 = this.var_741 << 7 % 32 | this.var_741 >>> 32 - 7 % 32;
         this.var_1731 = param1.readBoolean();
         this.var_276 = param1.readInt();
         this.var_276 = this.var_276 << 16 % 32 | this.var_276 >>> 32 - 16 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(30043);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_604);
         param1.writeBoolean(this.var_1736);
         param1.writeBoolean(this.var_1558);
         param1.writeBoolean(this.var_1600);
         param1.writeShort(65535 & ((65535 & this.var_497) >>> 4 % 16 | (65535 & this.var_497) << 16 - 4 % 16));
         param1.writeInt(this.var_741 >>> 7 % 32 | this.var_741 << 32 - 7 % 32);
         param1.writeBoolean(this.var_1731);
         param1.writeInt(this.var_276 >>> 16 % 32 | this.var_276 << 32 - 16 % 32);
      }
   }
}
