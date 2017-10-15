package package_7
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.ScrollCostPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.NotEnoughResourcesPopup;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_128.class_716;
   import package_14.class_199;
   import package_14.class_234;
   import package_14.class_47;
   import package_17.class_54;
   import package_20.class_33;
   import package_29.class_166;
   import package_34.class_116;
   import package_41.class_93;
   import package_42.class_959;
   import package_45.class_110;
   import package_5.class_945;
   import package_6.class_14;
   import package_9.class_17;
   import spark.layouts.HorizontalLayout;
   
   public final class class_35 implements class_14
   {
      
      public static const name_3:class_35 = new class_35();
       
      
      private var var_646:int = 0;
      
      public var var_462:int = 0;
      
      public var var_143:class_17;
      
      public var var_445:int = 0;
      
      public var var_496:int = 0;
      
      public var var_1411:Number = 0;
      
      public var var_471:int = 0;
      
      public var var_457:int = 0;
      
      public var var_289:int = 0;
      
      public function class_35(param1:int = 0, param2:class_17 = null, param3:Number = 0, param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_462 = param1;
         if(param2 == null)
         {
            this.var_143 = new class_17();
         }
         else
         {
            this.var_143 = param2;
         }
         this.var_445 = param5;
         this.var_496 = param7;
         this.var_1411 = param3;
         this.var_471 = param4;
         this.var_457 = param6;
         this.var_289 = param8;
      }
      
      public function method_16() : int
      {
         return -21225;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_462 = param1.readShort();
         this.var_462 = 65535 & ((65535 & this.var_462) >>> 10 % 16 | (65535 & this.var_462) << 16 - 10 % 16);
         this.var_462 = this.var_462 > 32767?int(this.var_462 - 65536):int(this.var_462);
         this.var_143 = class_17(class_93.method_26().method_25(param1.readShort()));
         this.var_143.method_15(param1);
         this.var_445 = param1.readByte();
         this.var_445 = 255 & ((255 & this.var_445) >>> 7 % 8 | (255 & this.var_445) << 8 - 7 % 8);
         this.var_445 = this.var_445 > 127?int(this.var_445 - 256):int(this.var_445);
         this.var_496 = param1.readByte();
         this.var_496 = 255 & ((255 & this.var_496) << 14 % 8 | (255 & this.var_496) >>> 8 - 14 % 8);
         this.var_496 = this.var_496 > 127?int(this.var_496 - 256):int(this.var_496);
         this.var_1411 = param1.readDouble();
         this.var_471 = param1.readByte();
         this.var_471 = 255 & ((255 & this.var_471) << 7 % 8 | (255 & this.var_471) >>> 8 - 7 % 8);
         this.var_471 = this.var_471 > 127?int(this.var_471 - 256):int(this.var_471);
         this.var_457 = param1.readByte();
         this.var_457 = 255 & ((255 & this.var_457) << 8 % 8 | (255 & this.var_457) >>> 8 - 8 % 8);
         this.var_457 = this.var_457 > 127?int(this.var_457 - 256):int(this.var_457);
         this.var_289 = param1.readShort();
         this.var_289 = 65535 & ((65535 & this.var_289) >>> 14 % 16 | (65535 & this.var_289) << 16 - 14 % 16);
         this.var_289 = this.var_289 > 32767?int(this.var_289 - 65536):int(this.var_289);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-21225);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_462) << 10 % 16 | (65535 & this.var_462) >>> 16 - 10 % 16));
         this.var_143.method_14(param1);
         param1.writeByte(255 & ((255 & this.var_445) << 7 % 8 | (255 & this.var_445) >>> 8 - 7 % 8));
         param1.writeByte(255 & ((255 & this.var_496) >>> 14 % 8 | (255 & this.var_496) << 8 - 14 % 8));
         param1.writeDouble(this.var_1411);
         param1.writeByte(255 & ((255 & this.var_471) >>> 7 % 8 | (255 & this.var_471) << 8 - 7 % 8));
         param1.writeByte(255 & ((255 & this.var_457) >>> 8 % 8 | (255 & this.var_457) << 8 - 8 % 8));
         param1.writeShort(65535 & ((65535 & this.var_289) << 14 % 16 | (65535 & this.var_289) >>> 16 - 14 % 16));
      }
   }
}
