package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.BoardingMenuAssistantsTab;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.AssistantsItemRenderer;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_121.class_841;
   import package_14.class_47;
   import package_17.class_37;
   import package_170.class_979;
   import package_41.class_93;
   import package_51.class_148;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Label;
   import spark.components.VScrollBar;
   
   public final class class_879 implements class_14
   {
      
      public static const name_3:class_879 = new class_879();
       
      
      private var var_646:int = 0;
      
      public var var_580:Vector.<class_841>;
      
      public function class_879(param1:Vector.<class_841> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_580 = new Vector.<class_841>();
         }
         else
         {
            this.var_580 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -17619;
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
         var _loc4_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_580.length > 0)
         {
            this.var_580.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_580.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         param1.writeShort(-17619);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeByte(this.var_580.length);
         for each(_loc2_ in this.var_580)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
