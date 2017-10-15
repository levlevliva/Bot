package package_99
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_153.class_931;
   import package_16.class_28;
   import package_163.class_884;
   import package_190.class_1168;
   import package_214.class_1604;
   import package_220.class_1601;
   import package_34.class_1053;
   import package_39.class_1366;
   import package_40.class_334;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_49.class_137;
   import package_54.class_163;
   import package_6.class_14;
   import package_89.class_1378;
   import package_90.class_1542;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_860 implements class_14
   {
      
      public static const name_3:class_860 = new class_860();
       
      
      private var var_646:int = 0;
      
      public var var_201:Number = 0;
      
      public var var_15:class_786;
      
      public function class_860(param1:class_786 = null, param2:Number = 0)
      {
         super();
         this.var_201 = param2;
         if(param1 == null)
         {
            this.var_15 = new class_786();
         }
         else
         {
            this.var_15 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -15686;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_201 = param1.readDouble();
         this.var_15 = class_786(class_93.method_26().method_25(param1.readShort()));
         this.var_15.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15686);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeDouble(this.var_201);
         this.var_15.method_14(param1);
      }
   }
}
