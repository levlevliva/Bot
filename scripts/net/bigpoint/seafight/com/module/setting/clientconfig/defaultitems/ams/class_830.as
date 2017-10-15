package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_41.class_84;
   import package_41.class_93;
   import package_52.class_1227;
   import package_6.class_14;
   import package_9.class_76;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_830 implements class_14
   {
      
      public static const name_3:class_830 = new class_830();
       
      
      private var var_646:int = 0;
      
      public var name_18:Vector.<class_661>;
      
      public var var_553:class_845;
      
      public function class_830(param1:Vector.<class_661> = null, param2:class_845 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_18 = new Vector.<class_661>();
         }
         else
         {
            this.name_18 = param1;
         }
         if(param2 == null)
         {
            this.var_553 = new class_845();
         }
         else
         {
            this.var_553 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -11615;
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
         var _loc4_:class_661 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_18.length > 0)
         {
            this.name_18.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_661(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_18.push(_loc4_);
            _loc2_++;
         }
         this.var_553 = class_845(class_93.method_26().method_25(param1.readShort()));
         this.var_553.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_661 = null;
         param1.writeShort(-11615);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeByte(this.name_18.length);
         for each(_loc2_ in this.name_18)
         {
            _loc2_.method_14(param1);
         }
         this.var_553.method_14(param1);
      }
   }
}
