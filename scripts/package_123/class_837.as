package package_123
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_104.class_989;
   import package_121.class_424;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_88;
   import package_17.class_54;
   import package_17.class_990;
   import package_18.class_916;
   import package_185.class_1136;
   import package_26.class_52;
   import package_3.class_26;
   import package_34.class_1272;
   import package_5.class_22;
   import package_5.class_43;
   import package_54.class_319;
   import package_6.class_14;
   import package_8.class_114;
   import package_9.class_120;
   import package_9.class_76;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.core.NavigationUnit;
   import spark.effects.animation.MotionPath;
   
   public final class class_837 implements class_14
   {
      
      public static const name_3:class_837 = new class_837();
       
      
      private var var_646:int = 0;
      
      public var var_65:int = 0;
      
      public var var_291:Number = 0;
      
      public function class_837(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_65 = param1;
         this.var_291 = param2;
      }
      
      public function method_16() : int
      {
         return 3695;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_65 = param1.readShort();
         this.var_291 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(3695);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(this.var_65);
         param1.writeDouble(this.var_291);
      }
   }
}
