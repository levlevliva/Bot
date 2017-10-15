package package_147
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import com.bigpoint.seafight.view.popups.reputation.ReputationData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_1470;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import org.apache.flex.collections.VectorCollection;
   import package_103.class_1029;
   import package_153.class_676;
   import package_153.class_931;
   import package_216.class_1575;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   
   public final class class_731 implements class_14
   {
      
      public static const name_3:class_731 = new class_731();
       
      
      private var var_646:int = 0;
      
      public var var_92:String = "";
      
      public var name_13:String = "";
      
      public var name_7:class_89;
      
      public function class_731(param1:class_89 = null, param2:String = "", param3:String = "")
      {
         super();
         this.var_92 = param3;
         this.name_13 = param2;
         if(param1 == null)
         {
            this.name_7 = new class_89();
         }
         else
         {
            this.name_7 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -30385;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_92 = param1.readUTF();
         this.name_13 = param1.readUTF();
         this.name_7 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30385);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeUTF(this.var_92);
         param1.writeUTF(this.name_13);
         this.name_7.method_14(param1);
      }
   }
}
