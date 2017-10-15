package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.MovieClip;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.components.VGroup;
   
   public final class class_669 implements class_14
   {
      
      public static const name_3:class_669 = new class_669();
       
      
      private var var_646:int = 0;
      
      public var var_798:Vector.<class_897>;
      
      public function class_669(param1:Vector.<class_897> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_798 = new Vector.<class_897>();
         }
         else
         {
            this.var_798 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -1468;
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
         var _loc4_:class_897 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_798.length > 0)
         {
            this.var_798.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_897(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_798.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_897 = null;
         param1.writeShort(-1468);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeByte(this.var_798.length);
         for each(_loc2_ in this.var_798)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
