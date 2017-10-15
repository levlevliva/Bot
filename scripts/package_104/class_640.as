package package_104
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowRect;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailsStatsListItemVo;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.CollectionEventKind;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_123.class_837;
   import package_130.class_711;
   import package_130.class_809;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_15.class_273;
   import package_23.class_42;
   import package_27.class_53;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_43;
   import package_54.class_163;
   import package_6.class_14;
   import package_65.class_1046;
   import package_89.class_299;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public class class_640 implements class_14
   {
      
      public static const name_3:class_640 = new class_640();
       
      
      private var var_646:int = 0;
      
      public var var_13:Number = 0;
      
      public function class_640(param1:Number = 0)
      {
         super();
         this.var_13 = param1;
      }
      
      public function method_16() : int
      {
         return 1264;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_13 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1264);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeDouble(this.var_13);
      }
   }
}
