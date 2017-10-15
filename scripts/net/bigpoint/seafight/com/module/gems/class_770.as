package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import package_17.class_54;
   import package_190.class_1168;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.components.List;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_770 implements class_14
   {
      
      public static const name_3:class_770 = new class_770();
       
      
      private var var_646:int = 0;
      
      public var var_114:int = 0;
      
      public function class_770(param1:int = 0)
      {
         super();
         this.var_114 = param1;
      }
      
      public function method_16() : int
      {
         return 31572;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_114 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(31572);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(this.var_114);
      }
   }
}
