package package_110
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.skins.target;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_883;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import package_132.class_494;
   import package_132.class_605;
   import package_14.class_47;
   import package_143.class_933;
   import package_210.class_1474;
   import package_27.class_53;
   import package_34.class_117;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_1106;
   import package_6.class_14;
   import package_7.class_15;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_526 implements class_14
   {
      
      public static const name_3:class_526 = new class_526();
       
      
      private var var_646:int = 0;
      
      public var var_834:Vector.<class_722>;
      
      public function class_526(param1:Vector.<class_722> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_834 = new Vector.<class_722>();
         }
         else
         {
            this.var_834 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -22933;
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
         var _loc4_:class_722 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_834.length > 0)
         {
            this.var_834.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_722(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_834.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_722 = null;
         param1.writeShort(-22933);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeByte(this.var_834.length);
         for each(_loc2_ in this.var_834)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
