package package_9
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.popups.event.modules.common.LazyListLoadingHandler;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRankingTabVo;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_51;
   import package_206.class_1568;
   import package_23.class_42;
   import package_34.class_1576;
   import package_5.class_12;
   import package_5.class_984;
   import package_6.class_14;
   import spark.components.List;
   import spark.components.RichEditableText;
   
   public final class class_715 implements class_14
   {
      
      public static const name_3:class_715 = new class_715();
       
      
      private var var_646:int = 0;
      
      public function class_715()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -25799;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-25799);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
      }
   }
}
