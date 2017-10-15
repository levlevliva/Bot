package package_40
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemOverviewVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import package_100.class_729;
   import package_110.class_649;
   import package_111.class_585;
   import package_111.class_839;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_16.class_28;
   import package_171.class_1276;
   import package_20.class_33;
   import package_211.class_1369;
   import package_23.class_42;
   import package_29.class_57;
   import package_41.class_84;
   import package_46.class_1356;
   import package_46.class_1493;
   import package_5.class_984;
   import package_53.class_1100;
   import package_54.class_319;
   import package_6.class_14;
   import package_84.class_270;
   import package_99.class_786;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   
   public final class class_824 implements class_14
   {
      
      public static const name_3:class_824 = new class_824();
       
      
      private var var_646:int = 0;
      
      public var var_1958:String = "";
      
      public function class_824(param1:String = "")
      {
         super();
         this.var_1958 = param1;
      }
      
      public function method_16() : int
      {
         return -31861;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1958 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-31861);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeUTF(this.var_1958);
      }
   }
}
