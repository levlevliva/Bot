package package_100
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_121.class_841;
   import package_14.class_49;
   import package_154.class_658;
   import package_16.class_28;
   import package_29.class_57;
   import package_34.class_107;
   import package_41.class_93;
   import package_47.class_881;
   import package_5.class_1012;
   import package_5.class_22;
   import package_5.class_43;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   public final class class_356 extends class_355
   {
      
      public static const name_3:class_356 = new class_356();
       
      
      private var var_646:int = 0;
      
      public var var_32:int = 0;
      
      public var var_1591:String = "";
      
      public function class_356(param1:String = "", param2:int = 0)
      {
         super();
         this.var_32 = param2;
         this.var_1591 = param1;
      }
      
      override public function method_16() : int
      {
         return -2224;
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
         return 6;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_32 = param1.readInt();
         this.var_32 = this.var_32 << 10 % 32 | this.var_32 >>> 32 - 10 % 32;
         this.var_1591 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-2224);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         super.method_14(param1);
         param1.writeInt(this.var_32 >>> 10 % 32 | this.var_32 << 32 - 10 % 32);
         param1.writeUTF(this.var_1591);
      }
   }
}
