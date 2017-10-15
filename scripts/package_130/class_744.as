package package_130
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import package_14.class_47;
   import package_14.class_51;
   import package_23.class_42;
   import package_46.class_1455;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_43;
   import package_53.class_1100;
   import package_6.class_14;
   import package_9.class_994;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.core.SpriteVisualElement;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   
   public final class class_744 implements class_14
   {
      
      public static const name_3:class_744 = new class_744();
       
      
      private var var_646:int = 0;
      
      public var var_365:int = 0;
      
      public var name_10:int = 0;
      
      public var var_73:int = 0;
      
      public function class_744(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_365 = param3;
         this.name_10 = param2;
         this.var_73 = param1;
      }
      
      public function method_16() : int
      {
         return 28959;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_365 = param1.readShort();
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 10 % 8 | (255 & this.name_10) >>> 8 - 10 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
         this.var_73 = param1.readByte();
         this.var_73 = 255 & ((255 & this.var_73) >>> 9 % 8 | (255 & this.var_73) << 8 - 9 % 8);
         this.var_73 = this.var_73 > 127?int(this.var_73 - 256):int(this.var_73);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(28959);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(this.var_365);
         param1.writeByte(255 & ((255 & this.name_10) >>> 10 % 8 | (255 & this.name_10) << 8 - 10 % 8));
         param1.writeByte(255 & ((255 & this.var_73) << 9 % 8 | (255 & this.var_73) >>> 8 - 9 % 8));
      }
   }
}
