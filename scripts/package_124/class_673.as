package package_124
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_6.class_14;
   
   public class class_673 implements class_14
   {
      
      public static const name_3:class_673 = new class_673();
       
      
      private var var_646:int = 0;
      
      public var var_1946:String = "";
      
      public function class_673(param1:String = "")
      {
         super();
         this.var_1946 = param1;
      }
      
      public function method_16() : int
      {
         return -30370;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1946 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30370);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeUTF(this.var_1946);
      }
   }
}
