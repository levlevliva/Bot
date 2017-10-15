package package_91
{
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.greensock.events.LoaderEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.effects.Parallel;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import org.osflash.signals.SlotList;
   import package_121.class_841;
   import package_131.class_573;
   import package_14.class_47;
   import package_14.class_51;
   import package_204.class_1285;
   import package_216.class_1575;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_5.class_22;
   import package_50.class_141;
   import package_6.class_14;
   import package_72.class_203;
   import package_76.class_279;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.effects.animation.Animation;
   import spark.primitives.Rect;
   
   public final class class_450 implements class_14
   {
      
      public static const name_3:class_450 = new class_450();
      
      public static const const_2721:int = 0;
      
      public static const const_1094:int = 1;
      
      public static const const_958:int = 2;
      
      public static const const_398:int = 3;
      
      public static const const_2136:int = 4;
       
      
      private var var_646:int = 0;
      
      public var var_132:int = 0;
      
      public var var_58:int = 0;
      
      public var var_52:class_84;
      
      public var var_139:class_90;
      
      public var var_251:class_84;
      
      public var var_1604:Boolean = false;
      
      public function class_450(param1:class_84 = null, param2:class_84 = null, param3:Boolean = false, param4:class_90 = null, param5:int = 0, param6:int = 0)
      {
         super();
         this.var_132 = param5;
         this.var_58 = param6;
         if(param1 == null)
         {
            this.var_52 = new class_84();
         }
         else
         {
            this.var_52 = param1;
         }
         if(param4 == null)
         {
            this.var_139 = new class_90();
         }
         else
         {
            this.var_139 = param4;
         }
         if(param2 == null)
         {
            this.var_251 = new class_84();
         }
         else
         {
            this.var_251 = param2;
         }
         this.var_1604 = param3;
      }
      
      public function method_16() : int
      {
         return -23016;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_132 = param1.readShort();
         this.var_58 = param1.readShort();
         this.var_52 = new class_84();
         this.var_52.var_6 = param1.readShort();
         this.var_52.var_6 = 65535 & ((65535 & this.var_52.var_6) << 3 % 16 | (65535 & this.var_52.var_6) >>> 16 - 3 % 16);
         this.var_52.var_6 = this.var_52.var_6 > 32767?int(this.var_52.var_6 - 65536):int(this.var_52.var_6);
         this.var_52.name_4 = param1.readDouble();
         this.var_139 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_139.method_15(param1);
         this.var_251 = new class_84();
         this.var_251.var_6 = param1.readShort();
         this.var_251.var_6 = 65535 & ((65535 & this.var_251.var_6) << 3 % 16 | (65535 & this.var_251.var_6) >>> 16 - 3 % 16);
         this.var_251.var_6 = this.var_251.var_6 > 32767?int(this.var_251.var_6 - 65536):int(this.var_251.var_6);
         this.var_251.name_4 = param1.readDouble();
         this.var_1604 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-23016);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeShort(this.var_132);
         param1.writeShort(this.var_58);
         param1.writeShort(65535 & ((65535 & this.var_52.var_6) >>> 3 % 16 | (65535 & this.var_52.var_6) << 16 - 3 % 16));
         param1.writeDouble(this.var_52.name_4);
         this.var_139.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_251.var_6) >>> 3 % 16 | (65535 & this.var_251.var_6) << 16 - 3 % 16));
         param1.writeDouble(this.var_251.name_4);
         param1.writeBoolean(this.var_1604);
      }
   }
}
