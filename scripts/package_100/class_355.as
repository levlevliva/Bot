package package_100
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.common.BoardingMenuVanity;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemGeneralVO;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.class_883;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_111.class_741;
   import package_111.class_774;
   import package_138.class_704;
   import package_14.class_47;
   import package_185.class_1136;
   import package_20.class_33;
   import package_26.class_1070;
   import package_27.class_53;
   import package_34.class_1526;
   import package_41.class_84;
   import package_42.class_98;
   import package_45.class_110;
   import package_56.class_170;
   import package_56.class_368;
   import package_6.class_14;
   import package_84.class_270;
   import package_90.class_316;
   import package_97.class_752;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.animation.Animation;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class class_355 implements class_14
   {
      
      public static const name_3:class_355 = new class_355();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_355(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return 4395;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 2 % 32 | this.name_15 >>> 32 - 2 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(4395);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeInt(this.name_15 >>> 2 % 32 | this.name_15 << 32 - 2 % 32);
      }
   }
}
