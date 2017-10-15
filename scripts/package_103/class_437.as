package package_103
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_152.class_852;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.filters.DropShadowFilter;
   
   public final class class_437 implements class_14
   {
      
      public static const name_3:class_437 = new class_437();
       
      
      private var var_646:int = 0;
      
      public var var_58:int = 0;
      
      public var name_28:Boolean = false;
      
      public function class_437(param1:int = 0, param2:Boolean = false)
      {
         super();
         this.var_58 = param1;
         this.name_28 = param2;
      }
      
      public function method_16() : int
      {
         return 10581;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_58 = param1.readShort();
         this.name_28 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10581);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeShort(this.var_58);
         param1.writeBoolean(this.name_28);
      }
   }
}
