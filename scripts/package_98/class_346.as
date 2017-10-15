package package_98
{
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_20.class_33;
   import package_41.class_93;
   import package_95.class_341;
   
   public final class class_346 extends class_341
   {
      
      public static const name_3:class_346 = new class_346();
       
      
      private var var_646:int = 0;
      
      public var var_773:Vector.<class_777>;
      
      public function class_346(param1:Vector.<class_777> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_773 = new Vector.<class_777>();
         }
         else
         {
            this.var_773 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 22687;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_777 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_773.length > 0)
         {
            this.var_773.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_777(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_773.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_777 = null;
         param1.writeShort(22687);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_773.length);
         for each(_loc2_ in this.var_773)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
