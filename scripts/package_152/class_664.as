package package_152
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_102;
   import package_14.class_88;
   import package_34.class_107;
   import package_34.class_1499;
   import package_41.class_84;
   import package_5.class_123;
   import package_5.class_43;
   import package_54.class_319;
   import package_56.class_368;
   import package_9.class_91;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_664 extends class_611
   {
      
      public static const name_3:class_664 = new class_664();
       
      
      private var var_646:int = 0;
      
      public var var_1139:int = 0;
      
      public var var_1379:int = 0;
      
      public function class_664(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_1139 = param1;
         this.var_1379 = param2;
      }
      
      override public function method_16() : int
      {
         return -30996;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1139 = param1.readShort();
         this.var_1379 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30996);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_1139);
         param1.writeShort(this.var_1379);
      }
   }
}
