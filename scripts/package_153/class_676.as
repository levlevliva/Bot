package package_153
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuTreasuryTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuTreasuryTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_104.class_628;
   import package_16.class_28;
   import package_34.class_1576;
   import package_41.class_93;
   import package_51.class_1355;
   import package_6.class_14;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_676 implements class_14
   {
      
      public static const name_3:class_676 = new class_676();
       
      
      private var var_646:int = 0;
      
      public var var_834:Vector.<class_931>;
      
      public function class_676(param1:Vector.<class_931> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_834 = new Vector.<class_931>();
         }
         else
         {
            this.var_834 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -22677;
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
         var _loc4_:class_931 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
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
            _loc4_ = class_931(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_834.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_931 = null;
         param1.writeShort(-22677);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeByte(this.var_834.length);
         for each(_loc2_ in this.var_834)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
