package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.getMapPoint;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColorStroke;
   import package_17.class_151;
   import package_51.class_1005;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.List;
   
   public final class class_601 implements class_14
   {
      
      public static const name_3:class_601 = new class_601();
       
      
      private var var_646:int = 0;
      
      public var var_229:int = 0;
      
      public var var_893:int = 0;
      
      public var name_27:Vector.<int>;
      
      public var var_1583:String = "";
      
      public var var_898:String = "";
      
      public function class_601(param1:int = 0, param2:String = "", param3:String = "", param4:Vector.<int> = null, param5:int = 0)
      {
         super();
         this.var_229 = param5;
         this.var_893 = param1;
         if(param4 == null)
         {
            this.name_27 = new Vector.<int>();
         }
         else
         {
            this.name_27 = param4;
         }
         this.var_1583 = param3;
         this.var_898 = param2;
      }
      
      public function method_16() : int
      {
         return -9636;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_229 = param1.readShort();
         this.var_893 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_27.length > 0)
         {
            this.name_27.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.name_27.push(param1.readShort());
            _loc2_++;
         }
         this.var_1583 = param1.readUTF();
         this.var_898 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(-9636);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(this.var_229);
         param1.writeShort(this.var_893);
         param1.writeByte(this.name_27.length);
         for each(_loc2_ in this.name_27)
         {
            param1.writeShort(_loc2_);
         }
         param1.writeUTF(this.var_1583);
         param1.writeUTF(this.var_898);
      }
   }
}
