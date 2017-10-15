package package_116
{
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.bitmapclip.AnimationManager;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import package_14.class_47;
   import package_16.class_28;
   import package_166.class_971;
   import package_41.class_93;
   import package_47.class_135;
   import package_47.class_833;
   import package_47.class_861;
   import package_9.class_76;
   import package_95.class_341;
   import package_97.class_752;
   import spark.components.Group;
   import spark.layouts.VerticalLayout;
   
   public final class class_798 extends class_341
   {
      
      public static const name_3:class_798 = new class_798();
       
      
      private var var_646:int = 0;
      
      public var var_853:Number = 0;
      
      public var var_293:Vector.<class_752>;
      
      public var var_95:Vector.<class_752>;
      
      public function class_798(param1:Vector.<class_752> = null, param2:Vector.<class_752> = null, param3:Number = 0)
      {
         super();
         this.var_853 = param3;
         if(param2 == null)
         {
            this.var_293 = new Vector.<class_752>();
         }
         else
         {
            this.var_293 = param2;
         }
         if(param1 == null)
         {
            this.var_95 = new Vector.<class_752>();
         }
         else
         {
            this.var_95 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -16971;
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
         return 16;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_752 = null;
         var _loc5_:class_752 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_853 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_293.length > 0)
         {
            this.var_293.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_752(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_293.push(_loc4_);
            _loc2_++;
         }
         while(this.var_95.length > 0)
         {
            this.var_95.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_752(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_95.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_752 = null;
         var _loc3_:class_752 = null;
         param1.writeShort(-16971);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_853);
         param1.writeByte(this.var_293.length);
         for each(_loc2_ in this.var_293)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_95.length);
         for each(_loc3_ in this.var_95)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
