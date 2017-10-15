package package_130
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuAnnouncementsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_101.class_357;
   import package_111.class_696;
   import package_121.class_773;
   import package_14.class_47;
   import package_14.class_88;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_32.class_64;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_1106;
   import package_46.class_1224;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_214;
   import package_6.class_14;
   import package_69.class_1104;
   import package_69.class_1105;
   import package_69.class_978;
   import package_7.class_1039;
   import package_88.class_1093;
   import package_9.class_91;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_809 implements class_14
   {
      
      public static const name_3:class_809 = new class_809();
       
      
      private var var_646:int = 0;
      
      public var var_386:class_773;
      
      public var var_881:Vector.<class_711>;
      
      public function class_809(param1:class_773 = null, param2:Vector.<class_711> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_386 = new class_773();
         }
         else
         {
            this.var_386 = param1;
         }
         if(param2 == null)
         {
            this.var_881 = new Vector.<class_711>();
         }
         else
         {
            this.var_881 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -18483;
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
         var _loc4_:class_711 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_386 = class_773(class_93.method_26().method_25(param1.readShort()));
         this.var_386.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_881.length > 0)
         {
            this.var_881.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_711(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_881.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_711 = null;
         param1.writeShort(-18483);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         this.var_386.method_14(param1);
         param1.writeByte(this.var_881.length);
         for each(_loc2_ in this.var_881)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
