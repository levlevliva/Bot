package package_122
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_14.class_47;
   import package_20.class_33;
   import package_216.class_1575;
   import package_22.class_36;
   import package_41.class_93;
   import package_5.class_43;
   import package_93.class_339;
   
   public final class class_428 extends class_339
   {
      
      public static const name_3:class_428 = new class_428();
       
      
      private var var_646:int = 0;
      
      public var var_873:Vector.<class_634>;
      
      public function class_428(param1:Vector.<class_634> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_873 = new Vector.<class_634>();
         }
         else
         {
            this.var_873 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -21931;
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
         var _loc4_:class_634 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_873.length > 0)
         {
            this.var_873.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_634(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_873.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_634 = null;
         param1.writeShort(-21931);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_873.length);
         for each(_loc2_ in this.var_873)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
