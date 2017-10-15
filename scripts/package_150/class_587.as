package package_150
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.userInterface.NotifierContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.useraction.class_415;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_119.class_465;
   import package_14.class_47;
   import package_14.class_88;
   import package_149.class_579;
   import package_16.class_28;
   import package_190.class_1181;
   import package_41.class_84;
   import package_47.class_662;
   import package_47.class_834;
   import package_48.class_996;
   import package_6.class_14;
   import package_69.class_978;
   import package_91.class_1246;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_587 extends class_579
   {
      
      public static const name_3:class_587 = new class_587();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public function class_587(param1:String = "")
      {
         super();
         this.name_13 = param1;
      }
      
      override public function method_16() : int
      {
         return 32655;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(32655);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         super.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
