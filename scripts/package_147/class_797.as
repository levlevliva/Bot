package package_147
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatItem;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_14.class_47;
   import package_17.class_54;
   import package_18.class_1521;
   import package_190.class_1181;
   import package_26.class_1354;
   import package_41.class_89;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_797 implements class_14
   {
      
      public static const name_3:class_797 = new class_797();
       
      
      private var var_646:int = 0;
      
      public var var_962:String = "";
      
      public function class_797(param1:String = "")
      {
         super();
         this.var_962 = param1;
      }
      
      public function method_16() : int
      {
         return -14371;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_962 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14371);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeUTF(this.var_962);
      }
   }
}
