package package_153
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.greensock.TweenLite;
   import com.greensock.easing.Linear;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.guild.class_625;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_104.class_641;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_41;
   import package_6.class_14;
   import package_65.class_1046;
   import package_72.class_1442;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public final class class_788 implements class_14
   {
      
      public static const name_3:class_788 = new class_788();
       
      
      private var var_646:int = 0;
      
      public function class_788()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -18199;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-18199);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
      }
   }
}
