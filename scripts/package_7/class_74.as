package package_7
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_49;
   import package_166.class_1589;
   import package_18.class_620;
   import package_34.class_1526;
   import package_36.class_100;
   import package_41.class_84;
   import package_5.class_43;
   import package_6.class_14;
   import package_9.class_76;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.primitives.Rect;
   
   public final class class_74 implements class_14
   {
      
      public static const name_3:class_74 = new class_74();
      
      public static const const_1853:int = 0;
      
      public static const const_1012:int = 1;
      
      public static const const_1774:int = 2;
      
      public static const const_1832:int = 3;
      
      public static const const_1474:int = 4;
      
      public static const const_986:int = 5;
      
      public static const const_1593:int = 6;
      
      public static const const_1671:int = 7;
      
      public static const const_1348:int = 8;
      
      public static const const_1295:int = 9;
      
      public static const const_1637:int = 10;
      
      public static const const_2214:int = 11;
      
      public static const const_2445:int = 12;
       
      
      private var var_646:int = 0;
      
      public var name_52:int = 0;
      
      public function class_74(param1:int = 0)
      {
         super();
         this.name_52 = param1;
      }
      
      public function method_16() : int
      {
         return -31481;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_52 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-31481);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(this.name_52);
      }
   }
}
