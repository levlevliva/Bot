package package_7
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import package_111.class_696;
   import package_122.class_428;
   import package_131.class_573;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_96;
   import package_179.class_1064;
   import package_184.class_1135;
   import package_22.class_354;
   import package_22.class_36;
   import package_22.class_423;
   import package_22.class_463;
   import package_22.class_505;
   import package_4.class_11;
   import package_5.class_214;
   import package_51.class_148;
   import package_52.class_1087;
   import package_54.class_162;
   import package_6.class_14;
   import package_72.class_1442;
   import package_89.class_1378;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_890 implements class_14
   {
      
      public static const name_3:class_890 = new class_890();
       
      
      private var var_646:int = 0;
      
      public function class_890()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 27301;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(27301);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
      }
   }
}
