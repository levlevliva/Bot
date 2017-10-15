package package_111
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_178;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import com.greensock.TweenLite;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import package_110.class_680;
   import package_14.class_1535;
   import package_14.class_47;
   import package_14.class_94;
   import package_143.class_933;
   import package_152.class_664;
   import package_166.class_1502;
   import package_17.class_29;
   import package_17.class_37;
   import package_17.class_54;
   import package_201.class_1231;
   import package_29.class_166;
   import package_30.class_62;
   import package_41.class_84;
   import package_42.class_959;
   import package_48.class_138;
   import package_5.class_123;
   import package_50.class_141;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_17;
   import package_92.class_1278;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_466 implements class_14
   {
      
      public static const name_3:class_466 = new class_466();
       
      
      private var var_646:int = 0;
      
      public var name_29:int = 0;
      
      public var name_15:int = 0;
      
      public function class_466(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_29 = param2;
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return -7784;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_29 = param1.readShort();
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 10 % 32 | this.name_15 << 32 - 10 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7784);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(this.name_29);
         param1.writeInt(this.name_15 << 10 % 32 | this.name_15 >>> 32 - 10 % 32);
      }
   }
}
