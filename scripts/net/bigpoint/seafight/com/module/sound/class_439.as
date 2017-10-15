package net.bigpoint.seafight.com.module.sound
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import package_14.class_47;
   import package_14.class_87;
   import package_177.class_1049;
   import package_34.class_1257;
   import package_55.class_164;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   
   public final class class_439 implements class_14
   {
      
      public static const name_3:class_439 = new class_439();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_28:Boolean = false;
      
      public function class_439(param1:int = 0, param2:Boolean = false)
      {
         super();
         this.name_5 = param1;
         this.name_28 = param2;
      }
      
      public function method_16() : int
      {
         return 12735;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_28 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(12735);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeShort(this.name_5);
         param1.writeBoolean(this.name_28);
      }
   }
}
