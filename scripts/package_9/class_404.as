package package_9
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.FlippingCardsGroup;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_47;
   import package_41.class_93;
   import package_46.class_1455;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_404 implements class_14
   {
      
      public static const name_3:class_404 = new class_404();
       
      
      private var var_646:int = 0;
      
      public var var_132:int = 0;
      
      public var name_6:class_91;
      
      public var var_143:class_17;
      
      public function class_404(param1:class_17 = null, param2:class_91 = null, param3:int = 0)
      {
         super();
         this.var_132 = param3;
         if(param2 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param2;
         }
         if(param1 == null)
         {
            this.var_143 = new class_17();
         }
         else
         {
            this.var_143 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -29253;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_132 = param1.readShort();
         this.var_132 = 65535 & ((65535 & this.var_132) >>> 3 % 16 | (65535 & this.var_132) << 16 - 3 % 16);
         this.var_132 = this.var_132 > 32767?int(this.var_132 - 65536):int(this.var_132);
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 15 % 16 | (65535 & this.name_6.var_8) << 16 - 15 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 15 % 16 | (65535 & this.name_6.var_9) << 16 - 15 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.var_143 = class_17(class_93.method_26().method_25(param1.readShort()));
         this.var_143.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-29253);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_132) << 3 % 16 | (65535 & this.var_132) >>> 16 - 3 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 15 % 16 | (65535 & this.name_6.var_8) >>> 16 - 15 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 15 % 16 | (65535 & this.name_6.var_9) >>> 16 - 15 % 16));
         this.var_143.method_14(param1);
      }
   }
}
