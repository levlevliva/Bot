package package_156
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.MysteryChestTooltip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.GemItemToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.guild.class_710;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_100.class_1471;
   import package_103.class_1029;
   import package_130.class_663;
   import package_148.class_606;
   import package_158.class_703;
   import package_16.class_28;
   import package_190.class_1168;
   import package_214.class_1604;
   import package_216.class_1575;
   import package_41.class_89;
   import package_49.class_140;
   import package_6.class_14;
   import package_7.class_1039;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_654 implements class_14
   {
      
      public static const name_3:class_654 = new class_654();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var var_512:int = 0;
      
      public var name_5:int = 0;
      
      public function class_654(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.name_7 = param2;
         this.var_512 = param3;
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 7872;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) << 13 % 16 | (65535 & this.name_7) >>> 16 - 13 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.var_512 = param1.readShort();
         this.var_512 = 65535 & ((65535 & this.var_512) << 10 % 16 | (65535 & this.var_512) >>> 16 - 10 % 16);
         this.var_512 = this.var_512 > 32767?int(this.var_512 - 65536):int(this.var_512);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7872);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(65535 & ((65535 & this.name_7) >>> 13 % 16 | (65535 & this.name_7) << 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.var_512) >>> 10 % 16 | (65535 & this.var_512) << 16 - 10 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
