package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuCrewTabVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_184.class_1583;
   import package_185.class_1136;
   import package_26.class_1086;
   import package_41.class_89;
   import package_41.class_93;
   import package_45.class_110;
   import package_53.class_1100;
   import package_6.class_14;
   
   public final class class_920 implements class_14
   {
      
      public static const name_3:class_920 = new class_920();
       
      
      private var var_646:int = 0;
      
      public var var_1950:int = 0;
      
      public var var_1193:class_89;
      
      public function class_920(param1:class_89 = null, param2:int = 0)
      {
         super();
         this.var_1950 = param2;
         if(param1 == null)
         {
            this.var_1193 = new class_89();
         }
         else
         {
            this.var_1193 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -1647;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1950 = param1.readShort();
         this.var_1193 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.var_1193.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1647);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeShort(this.var_1950);
         this.var_1193.method_14(param1);
      }
   }
}
