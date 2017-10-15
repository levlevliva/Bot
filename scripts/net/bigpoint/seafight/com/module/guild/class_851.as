package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoTrackBtnSkin;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_121.class_841;
   import package_14.class_88;
   import package_6.class_14;
   import spark.components.Button;
   import spark.components.HGroup;
   
   public final class class_851 implements class_14
   {
      
      public static const name_3:class_851 = new class_851();
       
      
      private var var_646:int = 0;
      
      public function class_851()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -26353;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26353);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
      }
   }
}
