package package_127
{
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.event.modules.EmptyModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.SaveInvalidReason;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.ScrollCostPopupController;
   import com.bigpoint.seafight.view.userInterface.MenusContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.NotEnoughResourcesPopup;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.collections.IList;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_130.class_711;
   import package_14.class_286;
   import package_20.class_33;
   import package_29.class_166;
   import package_34.class_116;
   import package_41.class_93;
   import package_45.class_110;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_168;
   import package_6.class_14;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.Label;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_528 implements class_14
   {
      
      public static const name_3:class_528 = new class_528();
       
      
      private var var_646:int = 0;
      
      public var var_241:Vector.<class_870>;
      
      public var name_50:Number = 0;
      
      public var var_822:int = 0;
      
      public var var_410:int = 0;
      
      public function class_528(param1:Vector.<class_870> = null, param2:int = 0, param3:Number = 0, param4:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_241 = new Vector.<class_870>();
         }
         else
         {
            this.var_241 = param1;
         }
         this.name_50 = param3;
         this.var_822 = param4;
         this.var_410 = param2;
      }
      
      public function method_16() : int
      {
         return -31034;
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
         var _loc4_:class_870 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_241.length > 0)
         {
            this.var_241.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_870(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_241.push(_loc4_);
            _loc2_++;
         }
         this.name_50 = param1.readDouble();
         this.var_822 = param1.readShort();
         this.var_410 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_870 = null;
         param1.writeShort(-31034);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeByte(this.var_241.length);
         for each(_loc2_ in this.var_241)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.name_50);
         param1.writeShort(this.var_822);
         param1.writeShort(this.var_410);
      }
   }
}
