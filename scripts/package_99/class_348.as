package package_99
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupwindow.Blinker;
   import com.bigpoint.seafight.view.popups.groupwindow.HealthPointsDisplay;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.submenus.charactermenu.DesignBonusPopUp;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.EffectEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_822;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_11.class_130;
   import package_11.class_20;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_118.class_1445;
   import package_118.class_539;
   import package_122.class_656;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_30.class_62;
   import package_41.class_93;
   import package_47.class_124;
   import package_47.class_128;
   import package_47.class_129;
   import package_47.class_136;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_1050;
   import package_5.class_133;
   import package_6.class_14;
   import package_67.class_1051;
   import package_72.class_203;
   import package_9.class_91;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_348 extends class_341
   {
      
      public static const name_3:class_348 = new class_348();
       
      
      private var var_646:int = 0;
      
      public var var_98:Vector.<class_889>;
      
      public var var_70:Vector.<class_853>;
      
      public var var_55:int = 0;
      
      public var var_170:Number = 0;
      
      public function class_348(param1:Vector.<class_853> = null, param2:Vector.<class_889> = null, param3:Number = 0, param4:int = 0)
      {
         super();
         if(param2 == null)
         {
            this.var_98 = new Vector.<class_889>();
         }
         else
         {
            this.var_98 = param2;
         }
         if(param1 == null)
         {
            this.var_70 = new Vector.<class_853>();
         }
         else
         {
            this.var_70 = param1;
         }
         this.var_55 = param4;
         this.var_170 = param3;
      }
      
      override public function method_16() : int
      {
         return -7943;
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
         return 17;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_889 = null;
         var _loc5_:class_853 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_98.length > 0)
         {
            this.var_98.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_889(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_98.push(_loc4_);
            _loc2_++;
         }
         while(this.var_70.length > 0)
         {
            this.var_70.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_853(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_70.push(_loc5_);
            _loc2_++;
         }
         this.var_55 = param1.readByte();
         this.var_55 = 255 & ((255 & this.var_55) << 1 % 8 | (255 & this.var_55) >>> 8 - 1 % 8);
         this.var_55 = this.var_55 > 127?int(this.var_55 - 256):int(this.var_55);
         this.var_170 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_889 = null;
         var _loc3_:class_853 = null;
         param1.writeShort(-7943);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_98.length);
         for each(_loc2_ in this.var_98)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_70.length);
         for each(_loc3_ in this.var_70)
         {
            _loc3_.method_14(param1);
         }
         param1.writeByte(255 & ((255 & this.var_55) >>> 1 % 8 | (255 & this.var_55) << 8 - 1 % 8));
         param1.writeDouble(this.var_170);
      }
   }
}
