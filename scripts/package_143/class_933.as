package package_143
{
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.tools.class_1483;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.event.vo.MetaCurrencyIndicatorVo;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import package_14.class_47;
   import package_17.class_54;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_32.class_338;
   import package_32.class_64;
   import package_41.class_315;
   import package_5.class_43;
   import package_51.class_148;
   import package_52.class_309;
   import package_55.class_1008;
   import package_6.class_14;
   import spark.components.Button;
   import spark.components.Group;
   
   public final class class_933 extends class_315
   {
      
      public static const name_3:class_933 = new class_933();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_1330:Number = 0;
      
      public var var_858:Number = 0;
      
      public function class_933(param1:int = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.name_5 = param1;
         this.var_1330 = param2;
         this.var_858 = param3;
      }
      
      override public function method_16() : int
      {
         return 20932;
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
         return 16;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_5 = param1.readShort();
         this.var_1330 = param1.readDouble();
         this.var_858 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20932);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_5);
         param1.writeDouble(this.var_1330);
         param1.writeDouble(this.var_858);
      }
   }
}
