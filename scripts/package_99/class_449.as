package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.amsPlayer.AmsPlayer_VO;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuCurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.TweenLite;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import package_11.class_130;
   import package_114.class_551;
   import package_14.class_47;
   import package_166.class_970;
   import package_41.class_84;
   import package_41.class_93;
   import package_50.class_141;
   import package_52.class_168;
   import package_7.class_1039;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   
   public final class class_449 extends class_341
   {
      
      public static const name_3:class_449 = new class_449();
       
      
      private var var_646:int = 0;
      
      public var var_259:Vector.<class_639>;
      
      public var name_24:int = 0;
      
      public function class_449(param1:Vector.<class_639> = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_259 = new Vector.<class_639>();
         }
         else
         {
            this.var_259 = param1;
         }
         this.name_24 = param2;
      }
      
      override public function method_16() : int
      {
         return -32101;
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
         var _loc4_:class_639 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_259.length > 0)
         {
            this.var_259.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_639(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_259.push(_loc4_);
            _loc2_++;
         }
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 >>> 1 % 32 | this.name_24 << 32 - 1 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_639 = null;
         param1.writeShort(-32101);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_259.length);
         for each(_loc2_ in this.var_259)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.name_24 << 1 % 32 | this.name_24 >>> 32 - 1 % 32);
      }
   }
}
