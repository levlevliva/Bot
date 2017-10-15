package package_9
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.popups.common.SimpleBorder;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import package_5.class_214;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_688 implements class_14
   {
      
      public static const name_3:class_688 = new class_688();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_688(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 68;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(68);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
