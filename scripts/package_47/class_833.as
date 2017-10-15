package package_47
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuCrewTabVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import package_14.class_47;
   import package_14.class_88;
   import package_184.class_1583;
   import package_185.class_1136;
   import package_190.*;
   import package_41.class_89;
   import package_45.class_110;
   import package_55.class_1008;
   import package_6.class_14;
   import spark.components.Group;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_833 implements class_14
   {
      
      public static const name_3:class_833 = new class_833();
       
      
      private var var_646:int = 0;
      
      public var var_2062:int = 0;
      
      public function class_833(param1:int = 0)
      {
         super();
         this.var_2062 = param1;
      }
      
      public function method_16() : int
      {
         return -13840;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_2062 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13840);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeShort(this.var_2062);
      }
   }
}
