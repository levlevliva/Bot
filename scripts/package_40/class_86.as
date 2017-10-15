package package_40
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.spymenu.SpyTableEvent;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ActionButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxListItemRenderer;
   import com.bit101.components.ListItem;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_110.class_680;
   import package_14.class_47;
   import package_14.class_96;
   import package_140.class_540;
   import package_140.class_985;
   import package_17.class_37;
   import package_2.*;
   import package_26.class_52;
   import package_29.class_143;
   import package_29.class_144;
   import package_34.class_115;
   import package_41.class_84;
   import package_46.class_1493;
   import package_5.class_123;
   import package_50.class_141;
   import package_52.class_168;
   import package_55.class_1007;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_978;
   import package_80.class_1139;
   import package_9.class_91;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Ellipse;
   
   use namespace mx_internal;
   
   public final class class_86 implements class_14
   {
      
      public static const name_3:class_86 = new class_86();
       
      
      private var var_646:int = 0;
      
      public var var_798:int = 0;
      
      public var var_859:int = 0;
      
      public var var_229:int = 0;
      
      public var var_107:int = 0;
      
      public var var_839:int = 0;
      
      public var var_1764:Boolean = false;
      
      public var name_11:int = 0;
      
      public var var_1670:int = 0;
      
      public var var_1860:Boolean = false;
      
      public var var_116:int = 0;
      
      public var name_13:String = "";
      
      public var var_162:class_84;
      
      public var var_1086:Boolean = false;
      
      public var var_59:class_84;
      
      public var var_1403:String = "";
      
      public var var_657:int = 0;
      
      public var var_1674:Boolean = false;
      
      public var var_901:int = 0;
      
      public var var_846:int = 0;
      
      public var var_53:int = 0;
      
      public var var_165:int = 0;
      
      public var var_24:class_91;
      
      public function class_86(param1:class_84 = null, param2:int = 0, param3:String = "", param4:int = 0, param5:class_91 = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:int = 0, param11:int = 0, param12:int = 0, param13:int = 0, param14:int = 0, param15:class_84 = null, param16:int = 0, param17:String = "", param18:int = 0, param19:int = 0, param20:int = 0, param21:int = 0, param22:int = 0)
      {
         super();
         this.var_798 = param19;
         this.var_859 = param21;
         this.var_229 = param4;
         this.var_107 = param12;
         this.var_839 = param22;
         this.var_1764 = param9;
         this.name_11 = param14;
         this.var_1670 = param16;
         this.var_1860 = param7;
         this.var_116 = param10;
         this.name_13 = param3;
         if(param1 == null)
         {
            this.var_162 = new class_84();
         }
         else
         {
            this.var_162 = param1;
         }
         this.var_1086 = param8;
         if(param15 == null)
         {
            this.var_59 = new class_84();
         }
         else
         {
            this.var_59 = param15;
         }
         this.var_1403 = param17;
         this.var_657 = param20;
         this.var_1674 = param6;
         this.var_901 = param13;
         this.var_846 = param18;
         this.var_53 = param2;
         this.var_165 = param11;
         if(param5 == null)
         {
            this.var_24 = new class_91();
         }
         else
         {
            this.var_24 = param5;
         }
      }
      
      public function method_16() : int
      {
         return 16803;
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
         return 48;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 9 % 16 | (65535 & this.var_646) >>> 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_798 = param1.readInt();
         this.var_798 = this.var_798 >>> 14 % 32 | this.var_798 << 32 - 14 % 32;
         this.var_859 = param1.readInt();
         this.var_859 = this.var_859 << 16 % 32 | this.var_859 >>> 32 - 16 % 32;
         this.var_229 = param1.readShort();
         this.var_107 = param1.readInt();
         this.var_107 = this.var_107 << 12 % 32 | this.var_107 >>> 32 - 12 % 32;
         this.var_839 = param1.readInt();
         this.var_839 = this.var_839 >>> 7 % 32 | this.var_839 << 32 - 7 % 32;
         this.var_1764 = param1.readBoolean();
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 6 % 16 | (65535 & this.name_11) >>> 16 - 6 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         this.var_1670 = param1.readShort();
         this.var_1860 = param1.readBoolean();
         this.var_116 = param1.readInt();
         this.var_116 = this.var_116 >>> 9 % 32 | this.var_116 << 32 - 9 % 32;
         this.name_13 = param1.readUTF();
         this.var_162 = new class_84();
         this.var_162.var_6 = param1.readShort();
         this.var_162.var_6 = 65535 & ((65535 & this.var_162.var_6) >>> 15 % 16 | (65535 & this.var_162.var_6) << 16 - 15 % 16);
         this.var_162.var_6 = this.var_162.var_6 > 32767?int(this.var_162.var_6 - 65536):int(this.var_162.var_6);
         this.var_162.name_4 = param1.readDouble();
         this.var_1086 = param1.readBoolean();
         this.var_59 = new class_84();
         this.var_59.var_6 = param1.readShort();
         this.var_59.var_6 = 65535 & ((65535 & this.var_59.var_6) >>> 15 % 16 | (65535 & this.var_59.var_6) << 16 - 15 % 16);
         this.var_59.var_6 = this.var_59.var_6 > 32767?int(this.var_59.var_6 - 65536):int(this.var_59.var_6);
         this.var_59.name_4 = param1.readDouble();
         this.var_1403 = param1.readUTF();
         this.var_657 = param1.readInt();
         this.var_657 = this.var_657 >>> 3 % 32 | this.var_657 << 32 - 3 % 32;
         this.var_1674 = param1.readBoolean();
         this.var_901 = param1.readInt();
         this.var_901 = this.var_901 << 13 % 32 | this.var_901 >>> 32 - 13 % 32;
         this.var_846 = param1.readInt();
         this.var_846 = this.var_846 >>> 1 % 32 | this.var_846 << 32 - 1 % 32;
         this.var_53 = param1.readShort();
         this.var_53 = 65535 & ((65535 & this.var_53) >>> 6 % 16 | (65535 & this.var_53) << 16 - 6 % 16);
         this.var_53 = this.var_53 > 32767?int(this.var_53 - 65536):int(this.var_53);
         this.var_165 = param1.readInt();
         this.var_165 = this.var_165 >>> 10 % 32 | this.var_165 << 32 - 10 % 32;
         this.var_24 = new class_91();
         this.var_24.var_8 = param1.readShort();
         this.var_24.var_8 = 65535 & ((65535 & this.var_24.var_8) >>> 5 % 16 | (65535 & this.var_24.var_8) << 16 - 5 % 16);
         this.var_24.var_8 = this.var_24.var_8 > 32767?int(this.var_24.var_8 - 65536):int(this.var_24.var_8);
         this.var_24.var_9 = param1.readShort();
         this.var_24.var_9 = 65535 & ((65535 & this.var_24.var_9) >>> 1 % 16 | (65535 & this.var_24.var_9) << 16 - 1 % 16);
         this.var_24.var_9 = this.var_24.var_9 > 32767?int(this.var_24.var_9 - 65536):int(this.var_24.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(16803);
         param1.writeShort(65535 & ((65535 & 0) >>> 9 % 16 | (65535 & 0) << 16 - 9 % 16));
         param1.writeInt(this.var_798 << 14 % 32 | this.var_798 >>> 32 - 14 % 32);
         param1.writeInt(this.var_859 >>> 16 % 32 | this.var_859 << 32 - 16 % 32);
         param1.writeShort(this.var_229);
         param1.writeInt(this.var_107 >>> 12 % 32 | this.var_107 << 32 - 12 % 32);
         param1.writeInt(this.var_839 << 7 % 32 | this.var_839 >>> 32 - 7 % 32);
         param1.writeBoolean(this.var_1764);
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 6 % 16 | (65535 & this.name_11) << 16 - 6 % 16));
         param1.writeShort(this.var_1670);
         param1.writeBoolean(this.var_1860);
         param1.writeInt(this.var_116 << 9 % 32 | this.var_116 >>> 32 - 9 % 32);
         param1.writeUTF(this.name_13);
         param1.writeShort(65535 & ((65535 & this.var_162.var_6) << 15 % 16 | (65535 & this.var_162.var_6) >>> 16 - 15 % 16));
         param1.writeDouble(this.var_162.name_4);
         param1.writeBoolean(this.var_1086);
         param1.writeShort(65535 & ((65535 & this.var_59.var_6) << 15 % 16 | (65535 & this.var_59.var_6) >>> 16 - 15 % 16));
         param1.writeDouble(this.var_59.name_4);
         param1.writeUTF(this.var_1403);
         param1.writeInt(this.var_657 << 3 % 32 | this.var_657 >>> 32 - 3 % 32);
         param1.writeBoolean(this.var_1674);
         param1.writeInt(this.var_901 >>> 13 % 32 | this.var_901 << 32 - 13 % 32);
         param1.writeInt(this.var_846 << 1 % 32 | this.var_846 >>> 32 - 1 % 32);
         param1.writeShort(65535 & ((65535 & this.var_53) << 6 % 16 | (65535 & this.var_53) >>> 16 - 6 % 16));
         param1.writeInt(this.var_165 << 10 % 32 | this.var_165 >>> 32 - 10 % 32);
         param1.writeShort(65535 & ((65535 & this.var_24.var_8) << 5 % 16 | (65535 & this.var_24.var_8) >>> 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.var_24.var_9) << 1 % 16 | (65535 & this.var_24.var_9) >>> 16 - 1 % 16));
      }
   }
}
