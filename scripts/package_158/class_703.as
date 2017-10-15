package package_158
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_14.class_47;
   import package_14.class_51;
   import package_149.class_578;
   import package_34.class_117;
   import package_41.class_84;
   import package_42.class_98;
   import package_47.class_657;
   import package_55.class_1007;
   import package_6.class_14;
   import package_7.class_15;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   
   public final class class_703 extends class_578
   {
      
      public static const name_3:class_703 = new class_703();
       
      
      private var var_646:int = 0;
      
      public var name_10:int = 0;
      
      public var var_1184:int = 0;
      
      public var var_53:int = 0;
      
      public var var_796:int = 0;
      
      public function class_703(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.name_10 = param3;
         this.var_1184 = param2;
         this.var_53 = param1;
         this.var_796 = param4;
      }
      
      override public function method_16() : int
      {
         return 14480;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_10 = param1.readShort();
         this.name_10 = 65535 & ((65535 & this.name_10) >>> 6 % 16 | (65535 & this.name_10) << 16 - 6 % 16);
         this.name_10 = this.name_10 > 32767?int(this.name_10 - 65536):int(this.name_10);
         this.var_1184 = param1.readShort();
         this.var_53 = param1.readShort();
         this.var_53 = 65535 & ((65535 & this.var_53) >>> 2 % 16 | (65535 & this.var_53) << 16 - 2 % 16);
         this.var_53 = this.var_53 > 32767?int(this.var_53 - 65536):int(this.var_53);
         this.var_796 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14480);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.name_10) << 6 % 16 | (65535 & this.name_10) >>> 16 - 6 % 16));
         param1.writeShort(this.var_1184);
         param1.writeShort(65535 & ((65535 & this.var_53) << 2 % 16 | (65535 & this.var_53) >>> 16 - 2 % 16));
         param1.writeShort(this.var_796);
      }
   }
}
