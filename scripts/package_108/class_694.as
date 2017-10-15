package package_108
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeader;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.OpenGuildColorsPopupCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import com.greensock.events.TweenEvent;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.IOErrorEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IUIComponent;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_1313;
   import package_14.class_47;
   import package_143.class_887;
   import package_16.class_28;
   import package_163.class_846;
   import package_170.class_979;
   import package_175.class_1540;
   import package_178.class_1060;
   import package_20.class_33;
   import package_34.class_107;
   import package_34.class_1499;
   import package_5.class_43;
   import package_54.class_319;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_694 implements class_14
   {
      
      public static const name_3:class_694 = new class_694();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_694(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 7061;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7061);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
