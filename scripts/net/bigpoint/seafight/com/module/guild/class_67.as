package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.graphics.SolidColor;
   import package_14.class_102;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import spark.primitives.Rect;
   
   public class class_67 implements class_14
   {
      
      public static const name_3:class_67 = new class_67();
       
      
      private var var_646:int = 0;
      
      public var name_20:class_89;
      
      public function class_67(param1:class_89 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_20 = new class_89();
         }
         else
         {
            this.name_20 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -24775;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_20 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_20.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24775);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         this.name_20.method_14(param1);
      }
   }
}
