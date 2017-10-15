package package_22
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemKeyValueVO;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.EligibleUpgradeTooltip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_121.class_841;
   import package_122.class_634;
   import package_14.class_47;
   import package_14.class_88;
   import package_34.class_117;
   import package_41.class_84;
   import package_6.class_14;
   import package_7.class_15;
   import package_95.class_341;
   import package_99.class_386;
   import spark.components.VGroup;
   
   public final class class_353 implements class_14
   {
      
      public static const name_3:class_353 = new class_353();
       
      
      private var var_646:int = 0;
      
      public var name_52:int = 0;
      
      public function class_353(param1:int = 0)
      {
         super();
         this.name_52 = param1;
      }
      
      public function method_16() : int
      {
         return 15841;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_52 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15841);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeShort(this.name_52);
      }
   }
}
