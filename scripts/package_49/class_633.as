package package_49
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_100.class_1186;
   import package_111.class_1176;
   import package_34.class_116;
   import package_6.class_14;
   import package_92.class_336;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_633 implements class_14
   {
      
      public static const name_3:class_633 = new class_633();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var name_5:int = 0;
      
      public function class_633(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_7 = param1;
         this.name_5 = param2;
      }
      
      public function method_16() : int
      {
         return -9063;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) >>> 13 % 16 | (65535 & this.name_7) << 16 - 13 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9063);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.name_7) << 13 % 16 | (65535 & this.name_7) >>> 16 - 13 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
