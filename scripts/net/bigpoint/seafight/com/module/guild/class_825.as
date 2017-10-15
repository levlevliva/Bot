package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.event.modules.common.LazyListLoadingHandler;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRankingTabVo;
   import flash.events.IOErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColor;
   import package_14.class_51;
   import package_206.class_1568;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.HGroup;
   
   public final class class_825 implements class_14
   {
      
      public static const name_3:class_825 = new class_825();
       
      
      private var var_646:int = 0;
      
      public var var_115:class_84;
      
      public var var_309:int = 0;
      
      public var var_10:int = 0;
      
      public function class_825(param1:class_84 = null, param2:int = 0, param3:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_115 = new class_84();
         }
         else
         {
            this.var_115 = param1;
         }
         this.var_309 = param2;
         this.var_10 = param3;
      }
      
      public function method_16() : int
      {
         return -29312;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_115 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_115.method_15(param1);
         this.var_309 = param1.readShort();
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 << 11 % 32 | this.var_10 >>> 32 - 11 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-29312);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         this.var_115.method_14(param1);
         param1.writeShort(this.var_309);
         param1.writeInt(this.var_10 >>> 11 % 32 | this.var_10 << 32 - 11 % 32);
      }
   }
}
