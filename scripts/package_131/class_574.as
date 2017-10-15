package package_131
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.CommonHListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EventStatisticItem;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.controller.GemPopupCraftingTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.bit101.components.ColorChooser;
   import com.greensock.TweenMax;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_94;
   import package_152.class_664;
   import package_18.class_392;
   import package_30.class_62;
   import package_34.class_1499;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_975;
   import package_48.class_138;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_574 extends class_573
   {
      
      public static const name_3:class_574 = new class_574();
       
      
      private var var_646:int = 0;
      
      public var var_1690:Boolean = false;
      
      public function class_574(param1:Boolean = false)
      {
         super();
         this.var_1690 = param1;
      }
      
      override public function method_16() : int
      {
         return -14035;
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
         return 1;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1690 = param1.readBoolean();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14035);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         super.method_14(param1);
         param1.writeBoolean(this.var_1690);
      }
   }
}
