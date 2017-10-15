package package_127
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.cauldron.component.skins.CauldronLootListSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.describeType;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_745;
   import package_14.class_47;
   import package_143.class_542;
   import package_143.class_933;
   import package_20.class_33;
   import package_205.class_1353;
   import package_216.class_1575;
   import package_41.class_93;
   import package_51.class_1355;
   import package_6.class_14;
   import package_99.class_786;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.GlowFilter;
   
   public final class class_870 implements class_14
   {
      
      public static const name_3:class_870 = new class_870();
       
      
      private var var_646:int = 0;
      
      public var var_282:Number = 0;
      
      public var var_841:Vector.<class_786>;
      
      public var var_610:int = 0;
      
      public function class_870(param1:int = 0, param2:Number = 0, param3:Vector.<class_786> = null)
      {
         super();
         this.var_282 = param2;
         if(param3 == null)
         {
            this.var_841 = new Vector.<class_786>();
         }
         else
         {
            this.var_841 = param3;
         }
         this.var_610 = param1;
      }
      
      public function method_16() : int
      {
         return -2252;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_786 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_282 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_841.length > 0)
         {
            this.var_841.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_786(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_841.push(_loc4_);
            _loc2_++;
         }
         this.var_610 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_786 = null;
         param1.writeShort(-2252);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeDouble(this.var_282);
         param1.writeByte(this.var_841.length);
         for each(_loc2_ in this.var_841)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_610);
      }
   }
}
