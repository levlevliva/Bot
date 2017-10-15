package package_110
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ActionButtonSkin;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_147.class_885;
   import package_167.class_1024;
   import package_29.class_565;
   import package_29.class_57;
   import package_34.class_115;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_5.class_1012;
   import package_5.class_123;
   import package_5.class_22;
   import package_50.class_141;
   import package_6.class_14;
   import package_72.class_203;
   import package_92.class_1278;
   import package_92.class_336;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public final class class_600 implements class_14
   {
      
      public static const name_3:class_600 = new class_600();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public function class_600(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -16073;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16073);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         this.var_87.method_14(param1);
      }
   }
}
