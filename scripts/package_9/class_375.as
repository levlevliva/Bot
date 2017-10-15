package package_9
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import package_14.class_88;
   import package_41.class_84;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_375 implements class_14
   {
      
      public static const name_3:class_375 = new class_375();
       
      
      private var var_646:int = 0;
      
      public function class_375()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 17033;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 9 % 16 | (65535 & this.var_646) >>> 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17033);
         param1.writeShort(65535 & ((65535 & 0) >>> 9 % 16 | (65535 & 0) << 16 - 9 % 16));
      }
   }
}
