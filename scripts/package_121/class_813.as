package package_121
{
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_1466;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyStatusItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_100.class_1186;
   import package_132.class_605;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_154.class_842;
   import package_158.class_703;
   import package_163.class_884;
   import package_17.class_326;
   import package_213.class_1522;
   import package_34.class_116;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_94.class_732;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.filters.GlowFilter;
   import spark.layouts.TileLayout;
   
   public final class class_813 implements class_14
   {
      
      public static const name_3:class_813 = new class_813();
       
      
      private var var_646:int = 0;
      
      public var var_62:class_773;
      
      public function class_813(param1:class_773 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_62 = new class_773();
         }
         else
         {
            this.var_62 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -6925;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_62 = class_773(class_93.method_26().method_25(param1.readShort()));
         this.var_62.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-6925);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         this.var_62.method_14(param1);
      }
   }
}
