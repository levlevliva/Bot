package package_97
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeader;
   import com.bigpoint.seafight.view.popups.gempopup.AbstractGemConfigPopupTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowUserModel;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.timer.TimerComponent;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import org.apache.flex.collections.VectorCollection;
   import package_10.class_18;
   import package_110.class_526;
   import package_110.class_722;
   import package_14.class_102;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_14.class_97;
   import package_170.class_979;
   import package_22.class_423;
   import package_22.class_655;
   import package_26.class_101;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_627 implements class_14
   {
      
      public static const name_3:class_627 = new class_627();
       
      
      private var var_646:int = 0;
      
      public var var_755:Boolean = false;
      
      public var var_564:Number = 0;
      
      public var var_56:class_914;
      
      public function class_627(param1:Number = 0, param2:class_914 = null, param3:Boolean = false)
      {
         super();
         this.var_755 = param3;
         this.var_564 = param1;
         if(param2 == null)
         {
            this.var_56 = new class_914();
         }
         else
         {
            this.var_56 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 21320;
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
         return 9;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_755 = param1.readBoolean();
         this.var_564 = param1.readDouble();
         this.var_56 = class_914(class_93.method_26().method_25(param1.readShort()));
         this.var_56.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(21320);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeBoolean(this.var_755);
         param1.writeDouble(this.var_564);
         this.var_56.method_14(param1);
      }
   }
}
