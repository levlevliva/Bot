package package_117
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.event.EventType;
   import package_118.class_539;
   import package_152.class_934;
   import package_5.class_984;
   import package_6.class_14;
   
   public final class class_477 implements class_14
   {
      
      public static const name_3:class_477 = new class_477();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_477(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return -3911;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 8 % 32 | this.name_15 << 32 - 8 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3911);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeInt(this.name_15 << 8 % 32 | this.name_15 >>> 32 - 8 % 32);
      }
   }
}
