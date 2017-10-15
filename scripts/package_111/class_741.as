package package_111
{
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ShipEquipmentTargetList;
   import com.bigpoint.seafight.view.popups.event.modules.common.MinigameTitleText;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingItem;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenu;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.target;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_108.class_648;
   import package_118.class_412;
   import package_14.class_102;
   import package_14.class_47;
   import package_181.class_1081;
   import package_216.class_1575;
   import package_29.class_57;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_214;
   import package_52.class_1083;
   import package_52.class_1084;
   import package_52.class_1085;
   import package_52.class_1087;
   import package_52.class_213;
   import package_52.class_303;
   import package_52.class_306;
   import package_52.class_309;
   import package_52.class_312;
   import package_52.class_313;
   import package_52.class_314;
   import package_52.class_327;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   use namespace mx_internal;
   
   public class class_741 implements class_14
   {
      
      public static const name_3:class_741 = new class_741();
       
      
      private var var_646:int = 0;
      
      public var var_32:int = 0;
      
      public var var_76:Vector.<class_745>;
      
      public function class_741(param1:int = 0, param2:Vector.<class_745> = null)
      {
         super();
         this.var_32 = param1;
         if(param2 == null)
         {
            this.var_76 = new Vector.<class_745>();
         }
         else
         {
            this.var_76 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 10645;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_745 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_32 = param1.readInt();
         this.var_32 = this.var_32 >>> 5 % 32 | this.var_32 << 32 - 5 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_76.length > 0)
         {
            this.var_76.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_745(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_76.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_745 = null;
         param1.writeShort(10645);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeInt(this.var_32 << 5 % 32 | this.var_32 >>> 32 - 5 % 32);
         param1.writeByte(this.var_76.length);
         for each(_loc2_ in this.var_76)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
