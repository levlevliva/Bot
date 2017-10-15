package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IUIComponent;
   import mx.graphics.SolidColor;
   import package_14.class_88;
   import package_52.class_1085;
   import package_6.class_14;
   
   public final class class_717 implements class_14
   {
      
      public static const name_3:class_717 = new class_717();
       
      
      private var var_646:int = 0;
      
      public var var_160:int = 0;
      
      public var var_157:int = 0;
      
      public var var_405:int = 0;
      
      public var var_470:int = 0;
      
      public var var_161:int = 0;
      
      public var var_504:int = 0;
      
      public var var_148:int = 0;
      
      public function class_717(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0)
      {
         super();
         this.var_160 = param2;
         this.var_157 = param4;
         this.var_405 = param5;
         this.var_470 = param7;
         this.var_161 = param3;
         this.var_504 = param6;
         this.var_148 = param1;
      }
      
      public function method_16() : int
      {
         return -15603;
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
         return 14;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_160 = param1.readShort();
         this.var_160 = 65535 & ((65535 & this.var_160) << 3 % 16 | (65535 & this.var_160) >>> 16 - 3 % 16);
         this.var_160 = this.var_160 > 32767?int(this.var_160 - 65536):int(this.var_160);
         this.var_157 = param1.readShort();
         this.var_157 = 65535 & ((65535 & this.var_157) >>> 15 % 16 | (65535 & this.var_157) << 16 - 15 % 16);
         this.var_157 = this.var_157 > 32767?int(this.var_157 - 65536):int(this.var_157);
         this.var_405 = param1.readShort();
         this.var_405 = 65535 & ((65535 & this.var_405) << 7 % 16 | (65535 & this.var_405) >>> 16 - 7 % 16);
         this.var_405 = this.var_405 > 32767?int(this.var_405 - 65536):int(this.var_405);
         this.var_470 = param1.readShort();
         this.var_470 = 65535 & ((65535 & this.var_470) >>> 7 % 16 | (65535 & this.var_470) << 16 - 7 % 16);
         this.var_470 = this.var_470 > 32767?int(this.var_470 - 65536):int(this.var_470);
         this.var_161 = param1.readShort();
         this.var_161 = 65535 & ((65535 & this.var_161) << 13 % 16 | (65535 & this.var_161) >>> 16 - 13 % 16);
         this.var_161 = this.var_161 > 32767?int(this.var_161 - 65536):int(this.var_161);
         this.var_504 = param1.readShort();
         this.var_504 = 65535 & ((65535 & this.var_504) >>> 12 % 16 | (65535 & this.var_504) << 16 - 12 % 16);
         this.var_504 = this.var_504 > 32767?int(this.var_504 - 65536):int(this.var_504);
         this.var_148 = param1.readShort();
         this.var_148 = 65535 & ((65535 & this.var_148) >>> 5 % 16 | (65535 & this.var_148) << 16 - 5 % 16);
         this.var_148 = this.var_148 > 32767?int(this.var_148 - 65536):int(this.var_148);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15603);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.var_160) >>> 3 % 16 | (65535 & this.var_160) << 16 - 3 % 16));
         param1.writeShort(65535 & ((65535 & this.var_157) << 15 % 16 | (65535 & this.var_157) >>> 16 - 15 % 16));
         param1.writeShort(65535 & ((65535 & this.var_405) >>> 7 % 16 | (65535 & this.var_405) << 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_470) << 7 % 16 | (65535 & this.var_470) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_161) >>> 13 % 16 | (65535 & this.var_161) << 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.var_504) << 12 % 16 | (65535 & this.var_504) >>> 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.var_148) << 5 % 16 | (65535 & this.var_148) >>> 16 - 5 % 16));
      }
   }
}
