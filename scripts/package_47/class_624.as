package package_47
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailShipEquipmentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradient;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   
   public final class class_624 implements class_14
   {
      
      public static const name_3:class_624 = new class_624();
       
      
      private var var_646:int = 0;
      
      public var name_17:int = 0;
      
      public var name_4:class_84;
      
      public function class_624(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.name_17 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 26725;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_17 = param1.readShort();
         this.name_4 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_4.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26725);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeShort(this.name_17);
         this.name_4.method_14(param1);
      }
   }
}
