package package_9
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import package_14.class_47;
   import package_14.class_88;
   import package_170.class_979;
   import package_41.class_93;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_872 implements class_14
   {
      
      public static const name_3:class_872 = new class_872();
       
      
      private var var_646:int = 0;
      
      public var var_663:Vector.<class_761>;
      
      public function class_872(param1:Vector.<class_761> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_663 = new Vector.<class_761>();
         }
         else
         {
            this.var_663 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -13609;
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
         var _loc4_:class_761 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_663.length > 0)
         {
            this.var_663.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_761(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_663.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_761 = null;
         param1.writeShort(-13609);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeByte(this.var_663.length);
         for each(_loc2_ in this.var_663)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
