package package_154
{
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.logging.Log;
   import package_118.class_1445;
   import package_34.class_115;
   import package_6.class_14;
   
   public class class_677 implements class_14
   {
      
      public static const name_3:class_677 = new class_677();
       
      
      private var var_646:int = 0;
      
      public function class_677()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -25416;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-25416);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
      }
   }
}
