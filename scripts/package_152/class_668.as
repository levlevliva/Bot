package package_152
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import package_121.class_841;
   import package_41.class_93;
   import package_51.class_148;
   import package_6.class_14;
   import package_72.class_203;
   import spark.primitives.Rect;
   
   public final class class_668 extends class_611
   {
      
      public static const name_3:class_668 = new class_668();
       
      
      private var var_646:int = 0;
      
      public var var_869:Vector.<class_841>;
      
      public function class_668(param1:Vector.<class_841> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_869 = new Vector.<class_841>();
         }
         else
         {
            this.var_869 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -7996;
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
         var _loc4_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_869.length > 0)
         {
            this.var_869.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_869.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         param1.writeShort(-7996);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_869.length);
         for each(_loc2_ in this.var_869)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
