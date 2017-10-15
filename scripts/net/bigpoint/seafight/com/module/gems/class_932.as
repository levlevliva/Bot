package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import package_14.class_47;
   import package_32.class_338;
   import package_32.class_64;
   import package_5.class_22;
   import package_51.class_148;
   import package_55.class_1008;
   import package_6.class_14;
   import package_72.class_1442;
   import package_89.class_1378;
   import package_98.class_777;
   import spark.components.List;
   import spark.components.gridClasses.GridLayer;
   
   public final class class_932 implements class_14
   {
      
      public static const name_3:class_932 = new class_932();
       
      
      private var var_646:int = 0;
      
      public var var_1419:Boolean = false;
      
      public function class_932(param1:Boolean = false)
      {
         super();
         this.var_1419 = param1;
      }
      
      public function method_16() : int
      {
         return -1552;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1419 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1552);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeBoolean(this.var_1419);
      }
   }
}
