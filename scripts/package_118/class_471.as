package package_118
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.events.NpcQuestContentModuleActionEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradientStroke;
   import mx.logging.Log;
   import package_14.class_47;
   import package_165.class_953;
   import package_20.class_982;
   import package_26.class_960;
   import package_5.class_214;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Graphic;
   
   public final class class_471 implements class_14
   {
      
      public static const name_3:class_471 = new class_471();
       
      
      private var var_646:int = 0;
      
      public var var_86:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_471(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_86 = param2;
         this.var_20 = param1;
      }
      
      public function method_16() : int
      {
         return 32567;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_86 = param1.readShort();
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(32567);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeShort(this.var_86);
         param1.writeDouble(this.var_20);
      }
   }
}
