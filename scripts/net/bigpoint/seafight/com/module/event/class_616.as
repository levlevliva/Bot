package net.bigpoint.seafight.com.module.event
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.LinearGradient;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_745;
   import package_126.class_1341;
   import package_158.class_703;
   import package_41.class_89;
   import package_5.class_1047;
   import package_5.class_939;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.effects.Rotate3D;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_616 implements class_14
   {
      
      public static const name_3:class_616 = new class_616();
       
      
      private var var_646:int = 0;
      
      public var var_542:int = 0;
      
      public var var_10:Number = 0;
      
      public function class_616(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_542 = param1;
         this.var_10 = param2;
      }
      
      public function method_16() : int
      {
         return 25179;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_542 = param1.readInt();
         this.var_542 = this.var_542 << 16 % 32 | this.var_542 >>> 32 - 16 % 32;
         this.var_10 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25179);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeInt(this.var_542 >>> 16 % 32 | this.var_542 << 32 - 16 % 32);
         param1.writeDouble(this.var_10);
      }
   }
}
