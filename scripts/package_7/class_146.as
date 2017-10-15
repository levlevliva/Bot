package package_7
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import package_101.class_511;
   import package_14.class_47;
   import package_214.class_1598;
   import package_52.class_167;
   import package_54.class_1006;
   import package_6.class_14;
   import package_8.class_114;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.TextOperationEvent;
   import spark.primitives.BitmapImage;
   
   public final class class_146 implements class_14
   {
      
      public static const name_3:class_146 = new class_146();
       
      
      private var var_646:int = 0;
      
      public var var_1546:Boolean = false;
      
      public var var_1693:Boolean = false;
      
      public var name_89:Boolean = false;
      
      public function class_146(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.var_1546 = param3;
         this.var_1693 = param2;
         this.name_89 = param1;
      }
      
      public function method_16() : int
      {
         return 6348;
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
         return 3;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1546 = param1.readBoolean();
         this.var_1693 = param1.readBoolean();
         this.name_89 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(6348);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeBoolean(this.var_1546);
         param1.writeBoolean(this.var_1693);
         param1.writeBoolean(this.name_89);
      }
   }
}
