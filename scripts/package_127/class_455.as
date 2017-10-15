package package_127
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNPCWindow;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import mx.states.AddItems;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_107.class_380;
   import package_132.class_494;
   import package_132.class_605;
   import package_16.class_28;
   import package_17.class_37;
   import package_170.class_979;
   import package_29.class_166;
   import package_3.class_378;
   import package_41.class_84;
   import package_41.class_93;
   import package_44.class_1041;
   import package_6.class_14;
   import package_72.class_203;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public final class class_455 implements class_14
   {
      
      public static const name_3:class_455 = new class_455();
       
      
      private var var_646:int = 0;
      
      public var var_822:int = 0;
      
      public var var_410:int = 0;
      
      public var var_778:Vector.<class_753>;
      
      public var var_241:Vector.<class_808>;
      
      public var name_50:Number = 0;
      
      public function class_455(param1:Vector.<class_808> = null, param2:Vector.<class_753> = null, param3:int = 0, param4:Number = 0, param5:int = 0)
      {
         super();
         this.var_822 = param5;
         this.var_410 = param3;
         if(param2 == null)
         {
            this.var_778 = new Vector.<class_753>();
         }
         else
         {
            this.var_778 = param2;
         }
         if(param1 == null)
         {
            this.var_241 = new Vector.<class_808>();
         }
         else
         {
            this.var_241 = param1;
         }
         this.name_50 = param4;
      }
      
      public function method_16() : int
      {
         return 11065;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_753 = null;
         var _loc5_:class_808 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_822 = param1.readShort();
         this.var_410 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_778.length > 0)
         {
            this.var_778.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_753(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_778.push(_loc4_);
            _loc2_++;
         }
         while(this.var_241.length > 0)
         {
            this.var_241.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_808(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_241.push(_loc5_);
            _loc2_++;
         }
         this.name_50 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_753 = null;
         var _loc3_:class_808 = null;
         param1.writeShort(11065);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeShort(this.var_822);
         param1.writeShort(this.var_410);
         param1.writeByte(this.var_778.length);
         for each(_loc2_ in this.var_778)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_241.length);
         for each(_loc3_ in this.var_241)
         {
            _loc3_.method_14(param1);
         }
         param1.writeDouble(this.name_50);
      }
   }
}
