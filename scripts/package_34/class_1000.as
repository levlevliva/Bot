package package_34
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_113.class_766;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_94;
   import package_152.class_664;
   import package_163.class_884;
   import package_17.class_54;
   import package_20.class_33;
   import package_210.class_1527;
   import package_211.class_1369;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1224;
   import package_48.class_138;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_123;
   import package_54.class_159;
   import package_72.class_1080;
   import package_72.class_203;
   import package_9.class_1314;
   import package_9.class_586;
   import package_9.class_688;
   import package_9.class_715;
   import package_9.class_769;
   import package_9.class_844;
   import package_9.class_850;
   import package_90.class_316;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_1000 extends class_69
   {
      
      private static var name_55:class_1000;
       
      
      public function class_1000()
      {
         super();
      }
      
      public static function get name_3() : class_1000
      {
         if(name_55)
         {
            return name_55;
         }
         return name_55 = new class_1000();
      }
      
      public final function method_2863(param1:int) : void
      {
         method_31(new class_844(param1));
      }
      
      public final function method_1648(param1:int) : void
      {
         if(class_47.method_51.method_471())
         {
            this.method_1274();
         }
         else
         {
            method_31(new class_586(param1));
         }
      }
      
      public final function method_1274() : void
      {
         method_31(new class_715());
      }
      
      public final function method_2394() : void
      {
         method_31(new class_769());
      }
      
      public final function method_2398() : void
      {
         method_31(new class_766());
      }
      
      public final function method_1909() : void
      {
         method_31(new class_688(class_1314.const_1218));
      }
      
      public final function method_1437() : void
      {
         method_31(new class_850());
      }
   }
}
