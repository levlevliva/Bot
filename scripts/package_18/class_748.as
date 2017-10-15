package package_18
{
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRankingTabButtonListItemVo;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.List;
   
   public final class class_748 implements class_14
   {
      
      public static const name_3:class_748 = new class_748();
       
      
      private var var_646:int = 0;
      
      public var var_131:int = 0;
      
      public var name_34:int = 0;
      
      public var name_16:class_916;
      
      public function class_748(param1:class_916 = null, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_131 = param3;
         this.name_34 = param2;
         if(param1 == null)
         {
            this.name_16 = new class_916();
         }
         else
         {
            this.name_16 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 10992;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_131 = param1.readShort();
         this.var_131 = 65535 & ((65535 & this.var_131) << 13 % 16 | (65535 & this.var_131) >>> 16 - 13 % 16);
         this.var_131 = this.var_131 > 32767?int(this.var_131 - 65536):int(this.var_131);
         this.name_34 = param1.readInt();
         this.name_34 = this.name_34 << 7 % 32 | this.name_34 >>> 32 - 7 % 32;
         this.name_16 = class_916(class_93.method_26().method_25(param1.readShort()));
         this.name_16.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10992);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.var_131) >>> 13 % 16 | (65535 & this.var_131) << 16 - 13 % 16));
         param1.writeInt(this.name_34 >>> 7 % 32 | this.name_34 << 32 - 7 % 32);
         this.name_16.method_14(param1);
      }
   }
}
