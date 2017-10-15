package package_22
{
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.model.inventory.vo.cannon.DefaultCannon_VO;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import flash.events.Event;
   import flash.events.SecurityErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import package_109.class_385;
   import package_109.class_626;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_685;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.filters.GlowFilter;
   
   public final class class_36 implements class_14
   {
      
      public static const name_3:class_36 = new class_36();
       
      
      private var var_646:int = 0;
      
      public var var_289:Number = 0;
      
      public var var_89:int = 0;
      
      public function class_36(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_289 = param2;
         this.var_89 = param1;
      }
      
      public function method_16() : int
      {
         return 20943;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_289 = param1.readDouble();
         this.var_89 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20943);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeDouble(this.var_289);
         param1.writeShort(this.var_89);
      }
   }
}
