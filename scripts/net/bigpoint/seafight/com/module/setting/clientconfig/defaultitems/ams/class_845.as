package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_745;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public final class class_845 implements class_14
   {
      
      public static const name_3:class_845 = new class_845();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_237:class_602;
      
      public function class_845(param1:int = 0, param2:class_602 = null)
      {
         super();
         this.name_5 = param1;
         if(param2 == null)
         {
            this.var_237 = new class_602();
         }
         else
         {
            this.var_237 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -6482;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.var_237 = class_602(class_93.method_26().method_25(param1.readShort()));
         this.var_237.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-6482);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeShort(this.name_5);
         this.var_237.method_14(param1);
      }
   }
}
