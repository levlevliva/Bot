package package_141
{
   import com.bigpoint.seafight.model.vo.class_1452;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuSearchTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_1002;
   import package_14.class_47;
   import package_14.class_96;
   import package_143.class_1040;
   import package_143.class_887;
   import package_149.class_578;
   import package_170.class_979;
   import package_171.class_1275;
   import package_183.class_1454;
   import package_20.class_33;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_1127;
   import package_36.class_100;
   import package_41.class_84;
   import package_48.class_999;
   import package_49.class_137;
   import package_5.class_133;
   import package_5.class_22;
   import package_58.class_175;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   public final class class_804 extends class_578
   {
      
      public static const name_3:class_804 = new class_804();
       
      
      private var var_646:int = 0;
      
      public var var_1469:Number = 0;
      
      public var var_58:int = 0;
      
      public var var_22:int = 0;
      
      public var name_93:Number = 0;
      
      public var var_1716:Number = 0;
      
      public function class_804(param1:Number = 0, param2:int = 0, param3:int = 0, param4:Number = 0, param5:Number = 0)
      {
         super();
         this.var_1469 = param5;
         this.var_58 = param3;
         this.var_22 = param2;
         this.name_93 = param1;
         this.var_1716 = param4;
      }
      
      override public function method_16() : int
      {
         return 8088;
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
         return 24;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1469 = param1.readDouble();
         this.var_58 = param1.readShort();
         this.var_22 = param1.readShort();
         this.name_93 = param1.readDouble();
         this.var_1716 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(8088);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_1469);
         param1.writeShort(this.var_58);
         param1.writeShort(this.var_22);
         param1.writeDouble(this.name_93);
         param1.writeDouble(this.var_1716);
      }
   }
}
