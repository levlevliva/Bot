package package_99
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.texteditor.MiniTextEditor;
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildTreasuryLogListItem;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailShipEquipmentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.logging.Log;
   import package_14.class_47;
   import package_14.class_51;
   import package_16.class_28;
   import package_161.class_895;
   import package_185.class_1136;
   import package_34.class_1576;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_214;
   import package_52.class_313;
   import package_53.class_1101;
   import package_54.class_163;
   import package_93.class_876;
   import package_93.class_987;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   
   public final class class_458 extends class_341
   {
      
      public static const name_3:class_458 = new class_458();
       
      
      private var var_646:int = 0;
      
      public var var_170:Number = 0;
      
      public var var_70:Vector.<class_786>;
      
      public var var_55:int = 0;
      
      public var var_98:Vector.<class_764>;
      
      public var var_1253:int = 0;
      
      public function class_458(param1:Vector.<class_786> = null, param2:Vector.<class_764> = null, param3:int = 0, param4:Number = 0, param5:int = 0)
      {
         super();
         this.var_170 = param4;
         if(param1 == null)
         {
            this.var_70 = new Vector.<class_786>();
         }
         else
         {
            this.var_70 = param1;
         }
         this.var_55 = param5;
         if(param2 == null)
         {
            this.var_98 = new Vector.<class_764>();
         }
         else
         {
            this.var_98 = param2;
         }
         this.var_1253 = param3;
      }
      
      override public function method_16() : int
      {
         return 7746;
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
         return 17;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_786 = null;
         var _loc5_:class_764 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_170 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_70.length > 0)
         {
            this.var_70.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_786(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_70.push(_loc4_);
            _loc2_++;
         }
         this.var_55 = param1.readByte();
         this.var_55 = 255 & ((255 & this.var_55) >>> 6 % 8 | (255 & this.var_55) << 8 - 6 % 8);
         this.var_55 = this.var_55 > 127?int(this.var_55 - 256):int(this.var_55);
         while(this.var_98.length > 0)
         {
            this.var_98.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_764(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_98.push(_loc5_);
            _loc2_++;
         }
         this.var_1253 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_786 = null;
         var _loc3_:class_764 = null;
         param1.writeShort(7746);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_170);
         param1.writeByte(this.var_70.length);
         for each(_loc2_ in this.var_70)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(255 & ((255 & this.var_55) << 6 % 8 | (255 & this.var_55) >>> 8 - 6 % 8));
         param1.writeByte(this.var_98.length);
         for each(_loc3_ in this.var_98)
         {
            _loc3_.method_14(param1);
         }
         param1.writeShort(this.var_1253);
      }
   }
}
