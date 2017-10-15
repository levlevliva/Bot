package package_23
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.events.TweenEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_28.class_56;
   import package_34.class_116;
   import package_41.class_89;
   import package_54.class_163;
   import package_72.class_203;
   
   public final class class_39
   {
      
      private static var name_12:class_39;
       
      
      private var var_5:Dictionary;
      
      public function class_39()
      {
         /*
          * Visszafordítási hiba
          * Időtúllépés (1 perc)
          * Utasítások száma: 80305
          */
         throw new flash.errors.IllegalOperationError("Időtúllépés miatt nem lett visszafordítva");
      }
      
      public static function method_922(param1:String) : String
      {
         return name_3.var_5[param1] as String;
      }
      
      public static function get name_3() : class_39
      {
         if(name_12 == null)
         {
            name_12 = new class_39();
         }
         return name_12;
      }
   }
}
