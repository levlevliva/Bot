package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColorStroke;
   import package_104.class_628;
   import package_14.class_47;
   import package_14.class_88;
   import package_16.class_28;
   import package_190.class_1168;
   import package_49.class_140;
   import package_5.class_984;
   import package_69.class_978;
   import package_72.class_1442;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_98.class_777;
   import spark.components.Group;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_665 extends class_602
   {
      
      public static const name_3:class_665 = new class_665();
       
      
      private var var_646:int = 0;
      
      public var var_689:Vector.<int>;
      
      public function class_665(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_689 = new Vector.<int>();
         }
         else
         {
            this.var_689 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 21718;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_689.length > 0)
         {
            this.var_689.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_689.push(param1.readShort());
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(21718);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_689.length);
         for each(_loc2_ in this.var_689)
         {
            param1.writeShort(_loc2_);
         }
      }
   }
}
