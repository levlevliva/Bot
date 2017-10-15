package package_112
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.MenuComponentSkin;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_152.class_801;
   import package_20.class_33;
   import package_216.class_1575;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_935;
   import package_57.class_171;
   import package_7.class_1039;
   import package_72.class_1442;
   import package_72.class_203;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_395 extends class_339
   {
      
      public static const name_3:class_395 = new class_395();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_622>;
      
      public function class_395(param1:Vector.<class_622> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_622>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -17783;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_622 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_622(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_622 = null;
         param1.writeShort(-17783);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
