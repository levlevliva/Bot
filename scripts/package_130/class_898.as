package package_130
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.StartProgressButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_101.class_566;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_121.class_841;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_51;
   import package_16.class_28;
   import package_17.class_54;
   import package_216.class_1575;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_5.class_214;
   import package_52.class_1083;
   import package_54.class_319;
   import package_6.class_14;
   import package_7.class_1039;
   import package_90.class_316;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_898 implements class_14
   {
      
      public static const name_3:class_898 = new class_898();
       
      
      private var var_646:int = 0;
      
      public function class_898()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 13343;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13343);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
      }
   }
}
