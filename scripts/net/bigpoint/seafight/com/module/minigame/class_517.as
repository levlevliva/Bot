package net.bigpoint.seafight.com.module.minigame
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_16.class_28;
   import package_170.class_979;
   import package_26.class_1128;
   import package_34.class_107;
   import package_36.class_100;
   import package_41.class_84;
   import package_46.class_1356;
   import package_47.class_757;
   import package_5.class_1028;
   import package_54.class_160;
   import package_6.class_14;
   import package_72.class_1080;
   import package_72.class_1442;
   import package_72.class_203;
   import package_8.class_1315;
   import package_9.class_91;
   import package_92.class_944;
   import package_92.class_962;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.components.TextInput;
   import spark.components.VScrollBar;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   
   public final class class_517 implements class_14
   {
      
      public static const name_3:class_517 = new class_517();
       
      
      private var var_646:int = 0;
      
      public var var_24:class_91;
      
      public function class_517(param1:class_91 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_24 = new class_91();
         }
         else
         {
            this.var_24 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 24918;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_24 = new class_91();
         this.var_24.var_8 = param1.readShort();
         this.var_24.var_8 = 65535 & ((65535 & this.var_24.var_8) << 5 % 16 | (65535 & this.var_24.var_8) >>> 16 - 5 % 16);
         this.var_24.var_8 = this.var_24.var_8 > 32767?int(this.var_24.var_8 - 65536):int(this.var_24.var_8);
         this.var_24.var_9 = param1.readShort();
         this.var_24.var_9 = 65535 & ((65535 & this.var_24.var_9) << 13 % 16 | (65535 & this.var_24.var_9) >>> 16 - 13 % 16);
         this.var_24.var_9 = this.var_24.var_9 > 32767?int(this.var_24.var_9 - 65536):int(this.var_24.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(24918);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.var_24.var_8) >>> 5 % 16 | (65535 & this.var_24.var_8) << 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.var_24.var_9) >>> 13 % 16 | (65535 & this.var_24.var_9) << 16 - 13 % 16));
      }
   }
}
