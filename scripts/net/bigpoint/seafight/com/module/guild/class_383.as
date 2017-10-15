package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.display.utils.getGrayScaleBitmapData;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_5.class_984;
   import package_55.class_1007;
   
   public final class class_383 extends class_67
   {
      
      public static const name_3:class_383 = new class_383();
       
      
      private var var_646:int = 0;
      
      public var var_145:Vector.<class_900>;
      
      public function class_383(param1:Vector.<class_900> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_145 = new Vector.<class_900>();
         }
         else
         {
            this.var_145 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -31905;
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
         var _loc4_:class_900 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_145.length > 0)
         {
            this.var_145.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_900(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_145.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_900 = null;
         param1.writeShort(-31905);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_145.length);
         for each(_loc2_ in this.var_145)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
