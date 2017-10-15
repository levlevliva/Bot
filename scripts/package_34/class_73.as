package package_34
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import package_101.class_357;
   import package_101.class_472;
   import package_101.class_561;
   import package_101.class_562;
   import package_101.class_563;
   import package_101.class_564;
   import package_104.class_448;
   import package_104.class_989;
   import package_138.class_704;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_152.class_664;
   import package_212.class_1458;
   import package_214.class_1559;
   import package_37.class_75;
   import package_37.class_81;
   import package_39.class_973;
   import package_40.class_285;
   import package_40.class_560;
   import package_41.class_84;
   import package_48.class_999;
   import package_5.class_123;
   import package_5.class_984;
   import package_6.class_14;
   import package_7.class_559;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_73 extends class_69
   {
      
      private static var name_55:class_73;
       
      
      public function class_73()
      {
         super();
      }
      
      public static function get name_3() : class_73
      {
         if(!name_55)
         {
            name_55 = new class_73();
         }
         return name_55;
      }
      
      public final function method_2879(param1:Boolean) : void
      {
         method_31(new class_285(param1));
      }
      
      public final function method_2357(param1:int, param2:int) : void
      {
         method_31(new class_75(new class_91(param1,param2),class_81.const_137));
      }
      
      public final function method_1460(param1:class_84) : void
      {
         method_31(new class_560(param1));
      }
      
      public final function method_831(param1:Vector.<class_84>, param2:int, param3:int) : void
      {
         method_31(new class_472(param1,param2,param3));
      }
      
      public final function method_385(param1:int, param2:Number) : void
      {
         method_31(new class_561(param1,param2));
      }
      
      public final function method_723(param1:int, param2:Number, param3:int) : void
      {
         method_31(new class_562(param1,param2,param3));
      }
      
      public final function method_450(param1:int, param2:Number) : void
      {
         method_31(new class_357(param1,param2));
      }
      
      public final function method_2237(param1:int, param2:int) : void
      {
         var _loc3_:class_564 = new class_564(param1,param2);
         method_31(_loc3_);
      }
      
      public final function method_704(param1:class_84) : void
      {
         method_31(new class_559(param1));
      }
      
      public final function method_2137(param1:int, param2:int) : void
      {
         method_31(new class_563(param1,param2));
      }
   }
}
