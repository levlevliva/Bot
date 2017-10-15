package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_89;
   import package_41.class_93;
   import package_54.class_160;
   import package_6.class_14;
   
   public final class class_897 implements class_14
   {
      
      public static const name_3:class_897 = new class_897();
       
      
      private var var_646:int = 0;
      
      public var var_414:int = 0;
      
      public var name_20:class_89;
      
      public function class_897(param1:class_89 = null, param2:int = 0)
      {
         super();
         this.var_414 = param2;
         if(param1 == null)
         {
            this.name_20 = new class_89();
         }
         else
         {
            this.name_20 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -26703;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_414 = param1.readShort();
         this.name_20 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_20.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26703);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeShort(this.var_414);
         this.name_20.method_14(param1);
      }
   }
}
