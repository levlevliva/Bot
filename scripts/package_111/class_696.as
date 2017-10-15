package package_111
{
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.MysteryChestTooltip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.GemItemToolTip;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IUIComponent;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_140.class_546;
   import package_170.class_979;
   import package_41.class_84;
   import package_46.class_1356;
   import package_49.class_137;
   import package_49.class_140;
   import package_49.class_880;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.Ellipse;
   import spark.primitives.Graphic;
   
   public final class class_696 implements class_14
   {
      
      public static const name_3:class_696 = new class_696();
       
      
      private var var_646:int = 0;
      
      public var var_13:int = 0;
      
      public var var_10:int = 0;
      
      public function class_696(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_13 = param1;
         this.var_10 = param2;
      }
      
      public function method_16() : int
      {
         return 2906;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_13 = param1.readInt();
         this.var_13 = this.var_13 >>> 6 % 32 | this.var_13 << 32 - 6 % 32;
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 << 12 % 32 | this.var_10 >>> 32 - 12 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2906);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeInt(this.var_13 << 6 % 32 | this.var_13 >>> 32 - 6 % 32);
         param1.writeInt(this.var_10 >>> 12 % 32 | this.var_10 << 32 - 12 % 32);
      }
   }
}
