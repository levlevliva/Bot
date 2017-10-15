package package_43
{
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetsInventory;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenPuzzleWindow;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.SecurityErrorEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.event.EventType;
   import package_111.class_1176;
   import package_122.class_634;
   import package_127.class_870;
   import package_14.class_286;
   import package_15.class_273;
   import package_15.class_78;
   import package_168.class_1140;
   import package_171.class_981;
   import package_185.class_1136;
   import package_34.class_1343;
   import package_41.class_93;
   import package_45.class_110;
   import package_5.class_43;
   import package_52.class_168;
   import package_69.class_1615;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_238 extends class_78
   {
       
      
      private var var_1503:class_1140;
      
      public function class_238(param1:class_273, param2:int)
      {
         super();
         method_35(this.var_1503 = param1.method_2859(param2));
      }
      
      override protected function method_1182() : Object
      {
         return this.var_1503;
      }
      
      override public function method_36() : void
      {
         this.var_1503.method_36();
         method_43(this.var_1503);
      }
   }
}
