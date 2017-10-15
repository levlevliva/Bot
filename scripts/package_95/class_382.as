package package_95
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleDragItemDelta;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_14.class_47;
   import package_140.class_540;
   import package_140.class_985;
   import package_16.class_28;
   import package_17.class_151;
   import package_170.class_979;
   import package_2.*;
   import package_210.class_1527;
   import package_22.class_36;
   import package_26.class_1128;
   import package_26.class_942;
   import package_26.class_960;
   import package_26.class_969;
   import package_29.class_143;
   import package_29.class_144;
   import package_34.class_1127;
   import package_34.class_115;
   import package_34.class_1499;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_42.class_98;
   import package_5.class_1028;
   import package_5.class_214;
   import package_57.class_171;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_114;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_382 extends class_341
   {
      
      public static const name_3:class_382 = new class_382();
       
      
      private var var_646:int = 0;
      
      public var var_775:int = 0;
      
      public var var_302:int = 0;
      
      public function class_382(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_775 = param2;
         this.var_302 = param1;
      }
      
      override public function method_16() : int
      {
         return -271;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 9 % 16 | (65535 & this.var_646) >>> 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_775 = param1.readInt();
         this.var_775 = this.var_775 << 5 % 32 | this.var_775 >>> 32 - 5 % 32;
         this.var_302 = param1.readInt();
         this.var_302 = this.var_302 >>> 9 % 32 | this.var_302 << 32 - 9 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-271);
         param1.writeShort(65535 & ((65535 & 0) >>> 9 % 16 | (65535 & 0) << 16 - 9 % 16));
         super.method_14(param1);
         param1.writeInt(this.var_775 >>> 5 % 32 | this.var_775 << 32 - 5 % 32);
         param1.writeInt(this.var_302 << 9 % 32 | this.var_302 >>> 32 - 9 % 32);
      }
   }
}
