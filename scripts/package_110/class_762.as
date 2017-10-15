package package_110
{
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeader;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowRect;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import package_130.class_1143;
   import package_14.class_1535;
   import package_14.class_47;
   import package_14.class_51;
   import package_15.class_48;
   import package_166.class_1352;
   import package_17.class_54;
   import package_178.class_1060;
   import package_204.class_1280;
   import package_204.class_1286;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_44.class_108;
   import package_5.class_12;
   import package_5.class_123;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_559;
   import package_8.class_16;
   import package_9.class_76;
   import package_9.class_91;
   import package_90.class_316;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_762 implements class_14
   {
      
      public static const name_3:class_762 = new class_762();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public function class_762(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -26531;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26531);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         this.var_87.method_14(param1);
      }
   }
}
