package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import package_6.class_14;
   
   public final class class_763 implements class_14
   {
      
      public static const name_3:class_763 = new class_763();
      
      public static const const_2686:int = 0;
      
      public static const const_1370:int = 1;
      
      public static const const_963:int = 2;
      
      public static const const_2296:int = 3;
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_54:int = 0;
      
      public var var_114:int = 0;
      
      public function class_763(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.name_5 = param1;
         this.var_54 = param3;
         this.var_114 = param2;
      }
      
      public function method_16() : int
      {
         return -20798;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.var_54 = param1.readInt();
         this.var_54 = this.var_54 << 11 % 32 | this.var_54 >>> 32 - 11 % 32;
         this.var_114 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-20798);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeShort(this.name_5);
         param1.writeInt(this.var_54 >>> 11 % 32 | this.var_54 << 32 - 11 % 32);
         param1.writeShort(this.var_114);
      }
   }
}
