package package_111
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.bit101.components.ScrollPane;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.ship.class_544;
   import package_104.class_448;
   import package_14.class_1326;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_15.class_48;
   import package_17.class_1318;
   import package_187.class_1198;
   import package_23.class_42;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_89;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_50.class_1296;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_1089;
   import package_6.class_14;
   import package_76.class_279;
   import package_9.class_347;
   import spark.components.Scroller;
   import spark.primitives.Rect;
   
   public final class class_727 extends class_726
   {
      
      public static const name_3:class_727 = new class_727();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public function class_727(param1:String = "")
      {
         super();
         this.name_13 = param1;
      }
      
      override public function method_16() : int
      {
         return -5646;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5646);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         super.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
