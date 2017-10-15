package package_148
{
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.groupmap.queue.component.GroupMapPlayerQueueItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.display.Bitmap;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import package_14.class_47;
   import package_14.class_88;
   import package_170.class_979;
   import package_205.class_1353;
   import package_210.class_1474;
   import package_213.class_1522;
   import package_29.class_565;
   import package_32.class_64;
   import package_36.class_100;
   import package_41.class_93;
   import package_47.class_128;
   import package_47.class_136;
   import package_5.class_43;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_69.class_978;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.RectangularDropShadow;
   
   public final class class_617 implements class_14
   {
      
      public static const name_3:class_617 = new class_617();
       
      
      private var var_646:int = 0;
      
      public var var_683:Vector.<class_577>;
      
      public function class_617(param1:Vector.<class_577> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_683 = new Vector.<class_577>();
         }
         else
         {
            this.var_683 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 28531;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_577 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_683.length > 0)
         {
            this.var_683.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_577(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_683.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_577 = null;
         param1.writeShort(28531);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         param1.writeByte(this.var_683.length);
         for each(_loc2_ in this.var_683)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
