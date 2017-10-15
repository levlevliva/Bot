package package_113
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.common.SimpleGreenButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.event.EventPopupController;
   import com.bigpoint.seafight.view.popups.event.component.EventPopup;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.MenuComponentSkin;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.guild.class_825;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_101.class_511;
   import package_14.class_47;
   import package_14.class_51;
   import package_214.class_1604;
   import package_26.class_218;
   import package_34.class_73;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_975;
   import package_51.class_974;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.SkinnableDataContainer;
   
   public final class class_398 extends class_397
   {
      
      public static const name_3:class_398 = new class_398();
       
      
      private var var_646:int = 0;
      
      public var var_81:class_90;
      
      public var name_14:int = 0;
      
      public var var_118:class_90;
      
      public function class_398(param1:int = 0, param2:class_90 = null, param3:class_90 = null)
      {
         super();
         if(param3 == null)
         {
            this.var_81 = new class_90();
         }
         else
         {
            this.var_81 = param3;
         }
         this.name_14 = param1;
         if(param2 == null)
         {
            this.var_118 = new class_90();
         }
         else
         {
            this.var_118 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 15507;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_81 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_81.method_15(param1);
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) << 9 % 16 | (65535 & this.name_14) >>> 16 - 9 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
         this.var_118 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_118.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15507);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         this.var_81.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.name_14) >>> 9 % 16 | (65535 & this.name_14) << 16 - 9 % 16));
         this.var_118.method_14(param1);
      }
   }
}
