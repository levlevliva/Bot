package package_97
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.skins.windowbuttonbar.WindowButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.LockTitleWindowToggleButtonSkin;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_100.class_358;
   import package_104.class_362;
   import package_104.class_448;
   import package_11.class_130;
   import package_111.class_391;
   import package_111.class_425;
   import package_121.class_841;
   import package_14.class_47;
   import package_143.class_542;
   import package_171.class_1043;
   import package_171.class_1267;
   import package_171.class_1269;
   import package_171.class_1270;
   import package_171.class_1273;
   import package_171.class_1274;
   import package_171.class_1275;
   import package_171.class_1276;
   import package_20.class_33;
   import package_28.class_311;
   import package_34.class_107;
   import package_41.class_330;
   import package_41.class_93;
   import package_42.class_959;
   import package_46.class_1224;
   import package_47.class_128;
   import package_49.class_137;
   import package_5.class_214;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_104;
   import package_80.class_1185;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Graphic;
   
   public final class class_914 implements class_14
   {
      
      public static const name_3:class_914 = new class_914();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_56:int = 0;
      
      public function class_914(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_5 = param1;
         this.var_56 = param2;
      }
      
      public function method_16() : int
      {
         return 10907;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.var_56 = param1.readInt();
         this.var_56 = this.var_56 << 16 % 32 | this.var_56 >>> 32 - 16 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10907);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(this.name_5);
         param1.writeInt(this.var_56 >>> 16 % 32 | this.var_56 << 32 - 16 % 32);
      }
   }
}
