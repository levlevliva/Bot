package package_108
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.useraction.class_364;
   import package_14.class_1003;
   import package_14.class_47;
   import package_14.class_96;
   import package_15.class_48;
   import package_166.class_1589;
   import package_18.class_392;
   import package_18.class_620;
   import package_18.class_855;
   import package_182.class_1324;
   import package_184.class_1129;
   import package_216.class_1575;
   import package_28.class_56;
   import package_36.class_100;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_49.class_140;
   import package_5.class_1050;
   import package_6.class_14;
   import package_7.class_74;
   import package_74.class_256;
   import package_9.class_91;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Ellipse;
   
   public final class class_381 implements class_14
   {
      
      public static const name_3:class_381 = new class_381();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_648>;
      
      public function class_381(param1:Vector.<class_648> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_648>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -5277;
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
         var _loc4_:class_648 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_648(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_648 = null;
         param1.writeShort(-5277);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
