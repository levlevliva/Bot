package package_41
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicatorList;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.System;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_14.class_47;
   import package_15.class_48;
   import package_170.class_979;
   import package_47.class_685;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_84 implements class_14
   {
      
      public static const name_3:class_84 = new class_84();
       
      
      private var var_646:int = 0;
      
      public var var_6:int = 0;
      
      public var name_4:Number = 0;
      
      public function class_84(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_6 = param2;
         this.name_4 = param1;
      }
      
      public function method_16() : int
      {
         return 13044;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_6 = param1.readShort();
         this.var_6 = 65535 & ((65535 & this.var_6) >>> 15 % 16 | (65535 & this.var_6) << 16 - 15 % 16);
         this.var_6 = this.var_6 > 32767?int(this.var_6 - 65536):int(this.var_6);
         this.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13044);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         param1.writeShort(65535 & ((65535 & this.var_6) << 15 % 16 | (65535 & this.var_6) >>> 16 - 15 % 16));
         param1.writeDouble(this.name_4);
      }
   }
}
