package package_123
{
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.RadioButton;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_131.class_573;
   import package_14.class_47;
   import package_14.class_94;
   import package_152.class_664;
   import package_17.class_326;
   import package_20.class_33;
   import package_25.class_50;
   import package_30.class_62;
   import package_41.class_93;
   import package_42.class_98;
   import package_48.class_138;
   import package_5.class_123;
   import package_69.class_978;
   import package_9.class_91;
   import package_95.class_341;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_498 extends class_341
   {
      
      public static const name_3:class_498 = new class_498();
       
      
      private var var_646:int = 0;
      
      public var var_894:Vector.<class_652>;
      
      public var var_739:Vector.<class_837>;
      
      public function class_498(param1:Vector.<class_837> = null, param2:Vector.<class_652> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_894 = new Vector.<class_652>();
         }
         else
         {
            this.var_894 = param2;
         }
         if(param1 == null)
         {
            this.var_739 = new Vector.<class_837>();
         }
         else
         {
            this.var_739 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 19821;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_652 = null;
         var _loc5_:class_837 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_894.length > 0)
         {
            this.var_894.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_652(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_894.push(_loc4_);
            _loc2_++;
         }
         while(this.var_739.length > 0)
         {
            this.var_739.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_837(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_739.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_652 = null;
         var _loc3_:class_837 = null;
         param1.writeShort(19821);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_894.length);
         for each(_loc2_ in this.var_894)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_739.length);
         for each(_loc3_ in this.var_739)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
