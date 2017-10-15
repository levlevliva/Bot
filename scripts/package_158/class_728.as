package package_158
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingLogListItemVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.greensock.core.PropTween;
   import com.greensock.events.TweenEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.bitmapclip.AnimationManager;
   import net.bigpoint.seafight.com.module.guild.class_638;
   import package_107.class_693;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_745;
   import package_120.class_919;
   import package_13.class_23;
   import package_14.class_47;
   import package_14.class_51;
   import package_156.class_674;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_959;
   import package_5.class_12;
   import package_5.class_123;
   import package_53.class_1100;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.effects.animation.SimpleMotionPath;
   import spark.filters.DropShadowFilter;
   
   public final class class_728 extends class_339
   {
      
      public static const name_3:class_728 = new class_728();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_703>;
      
      public function class_728(param1:Vector.<class_703> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_703>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -5269;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_703 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_703(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_703 = null;
         param1.writeShort(-5269);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
