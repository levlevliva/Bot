package package_99
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuBar;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_121.class_841;
   import package_123.class_1032;
   import package_14.class_49;
   import package_18.class_916;
   import package_2.class_9;
   import package_214.class_1604;
   import package_23.class_42;
   import package_41.class_93;
   import package_5.class_43;
   import package_51.class_1355;
   import package_69.class_1104;
   import package_69.class_1105;
   import package_69.class_978;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_389 extends class_341
   {
      
      public static const name_3:class_389 = new class_389();
       
      
      private var var_646:int = 0;
      
      public var var_77:Vector.<class_841>;
      
      public var var_955:int = 0;
      
      public function class_389(param1:Vector.<class_841> = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_77 = new Vector.<class_841>();
         }
         else
         {
            this.var_77 = param1;
         }
         this.var_955 = param2;
      }
      
      override public function method_16() : int
      {
         return 19493;
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
         var _loc4_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_77.length > 0)
         {
            this.var_77.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_77.push(_loc4_);
            _loc2_++;
         }
         this.var_955 = param1.readInt();
         this.var_955 = this.var_955 >>> 7 % 32 | this.var_955 << 32 - 7 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         param1.writeShort(19493);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_77.length);
         for each(_loc2_ in this.var_77)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_955 << 7 % 32 | this.var_955 >>> 32 - 7 % 32);
      }
   }
}
