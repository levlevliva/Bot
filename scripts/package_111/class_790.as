package package_111
{
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.modules.common.MinigameTitleText;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.HScrollBarThumbSkin;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IFlexDisplayObject;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_286;
   import package_14.class_47;
   import package_204.class_1279;
   import package_26.class_142;
   import package_32.class_64;
   import package_5.class_123;
   import package_5.class_41;
   import package_54.class_161;
   import package_54.class_163;
   import package_6.class_14;
   import package_9.class_586;
   import package_9.class_91;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   
   public final class class_790 implements class_14
   {
      
      public static const name_3:class_790 = new class_790();
       
      
      private var var_646:int = 0;
      
      public var var_32:Number = 0;
      
      public var name_15:int = 0;
      
      public var name_29:int = 0;
      
      public var name_13:String = "";
      
      public function class_790(param1:int = 0, param2:int = 0, param3:Number = 0, param4:String = "")
      {
         super();
         this.var_32 = param3;
         this.name_15 = param1;
         this.name_29 = param2;
         this.name_13 = param4;
      }
      
      public function method_16() : int
      {
         return -25587;
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
         return 14;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_32 = param1.readDouble();
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 10 % 32 | this.name_15 >>> 32 - 10 % 32;
         this.name_29 = param1.readShort();
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-25587);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeDouble(this.var_32);
         param1.writeInt(this.name_15 >>> 10 % 32 | this.name_15 << 32 - 10 % 32);
         param1.writeShort(this.name_29);
         param1.writeUTF(this.name_13);
      }
   }
}
