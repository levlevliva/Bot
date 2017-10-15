package package_125
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusMenuVanity;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import package_121.class_841;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_48;
   import package_174.class_1375;
   import package_26.class_101;
   import package_41.class_84;
   import package_42.class_98;
   import package_6.class_14;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_497 implements class_14
   {
      
      public static const name_3:class_497 = new class_497();
       
      
      private var var_646:int = 0;
      
      public var var_34:int = 0;
      
      public var var_494:int = 0;
      
      public var var_117:class_84;
      
      public var name_5:int = 0;
      
      public var var_515:int = 0;
      
      public var var_116:int = 0;
      
      public var var_165:int = 0;
      
      public var name_4:class_84;
      
      public var name_6:class_91;
      
      public function class_497(param1:class_84 = null, param2:int = 0, param3:int = 0, param4:int = 0, param5:class_91 = null, param6:int = 0, param7:int = 0, param8:int = 0, param9:class_84 = null)
      {
         super();
         this.var_34 = param4;
         this.var_494 = param3;
         if(param9 == null)
         {
            this.var_117 = new class_84();
         }
         else
         {
            this.var_117 = param9;
         }
         this.name_5 = param6;
         this.var_515 = param2;
         this.var_116 = param7;
         this.var_165 = param8;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         if(param5 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param5;
         }
      }
      
      public function method_16() : int
      {
         return -5561;
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
         return 11;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_34 = param1.readByte();
         this.var_34 = 255 & ((255 & this.var_34) >>> 9 % 8 | (255 & this.var_34) << 8 - 9 % 8);
         this.var_34 = this.var_34 > 127?int(this.var_34 - 256):int(this.var_34);
         this.var_494 = param1.readByte();
         this.var_494 = 255 & ((255 & this.var_494) >>> 6 % 8 | (255 & this.var_494) << 8 - 6 % 8);
         this.var_494 = this.var_494 > 127?int(this.var_494 - 256):int(this.var_494);
         this.var_117 = new class_84();
         this.var_117.var_6 = param1.readShort();
         this.var_117.var_6 = 65535 & ((65535 & this.var_117.var_6) << 12 % 16 | (65535 & this.var_117.var_6) >>> 16 - 12 % 16);
         this.var_117.var_6 = this.var_117.var_6 > 32767?int(this.var_117.var_6 - 65536):int(this.var_117.var_6);
         this.var_117.name_4 = param1.readDouble();
         this.name_5 = param1.readShort();
         this.var_515 = param1.readByte();
         this.var_515 = 255 & ((255 & this.var_515) << 13 % 8 | (255 & this.var_515) >>> 8 - 13 % 8);
         this.var_515 = this.var_515 > 127?int(this.var_515 - 256):int(this.var_515);
         this.var_116 = param1.readInt();
         this.var_116 = this.var_116 << 13 % 32 | this.var_116 >>> 32 - 13 % 32;
         this.var_165 = param1.readInt();
         this.var_165 = this.var_165 << 16 % 32 | this.var_165 >>> 32 - 16 % 32;
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 12 % 16 | (65535 & this.name_4.var_6) >>> 16 - 12 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 3 % 16 | (65535 & this.name_6.var_8) << 16 - 3 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) << 3 % 16 | (65535 & this.name_6.var_9) >>> 16 - 3 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5561);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeByte(255 & ((255 & this.var_34) << 9 % 8 | (255 & this.var_34) >>> 8 - 9 % 8));
         param1.writeByte(255 & ((255 & this.var_494) << 6 % 8 | (255 & this.var_494) >>> 8 - 6 % 8));
         param1.writeShort(65535 & ((65535 & this.var_117.var_6) >>> 12 % 16 | (65535 & this.var_117.var_6) << 16 - 12 % 16));
         param1.writeDouble(this.var_117.name_4);
         param1.writeShort(this.name_5);
         param1.writeByte(255 & ((255 & this.var_515) >>> 13 % 8 | (255 & this.var_515) << 8 - 13 % 8));
         param1.writeInt(this.var_116 >>> 13 % 32 | this.var_116 << 32 - 13 % 32);
         param1.writeInt(this.var_165 >>> 16 % 32 | this.var_165 << 32 - 16 % 32);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 12 % 16 | (65535 & this.name_4.var_6) << 16 - 12 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 3 % 16 | (65535 & this.name_6.var_8) >>> 16 - 3 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) >>> 3 % 16 | (65535 & this.name_6.var_9) << 16 - 3 % 16));
      }
   }
}
