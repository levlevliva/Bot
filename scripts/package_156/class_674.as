package package_156
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipNameTextArea;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import package_122.class_428;
   import package_124.class_673;
   import package_130.class_1143;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_147.class_667;
   import package_147.class_738;
   import package_16.class_28;
   import package_179.class_1064;
   import package_22.class_354;
   import package_22.class_36;
   import package_22.class_423;
   import package_22.class_463;
   import package_22.class_505;
   import package_41.class_93;
   import package_42.class_959;
   import package_5.class_22;
   import package_6.class_14;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_674 extends class_673
   {
      
      public static const name_3:class_674 = new class_674();
       
      
      private var var_646:int = 0;
      
      public var var_1531:String = "";
      
      public var var_1434:Number = 0;
      
      public var var_1117:Number = 0;
      
      public var var_793:Vector.<class_654>;
      
      public var var_1667:Number = 0;
      
      public var var_1668:int = 0;
      
      public var var_1200:Number = 0;
      
      public var var_621:int = 0;
      
      public function class_674(param1:int = 0, param2:String = "", param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:int = 0, param7:Number = 0, param8:Vector.<class_654> = null)
      {
         super();
         this.var_1531 = param2;
         this.var_1434 = param4;
         this.var_1117 = param3;
         if(param8 == null)
         {
            this.var_793 = new Vector.<class_654>();
         }
         else
         {
            this.var_793 = param8;
         }
         this.var_1667 = param7;
         this.var_1668 = param1;
         this.var_1200 = param5;
         this.var_621 = param6;
      }
      
      override public function method_16() : int
      {
         return 14142;
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
         return 42;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_654 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1531 = param1.readUTF();
         this.var_1434 = param1.readDouble();
         this.var_1117 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_793.length > 0)
         {
            this.var_793.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_654(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_793.push(_loc4_);
            _loc2_++;
         }
         this.var_1667 = param1.readDouble();
         this.var_1668 = param1.readShort();
         this.var_1200 = param1.readDouble();
         this.var_621 = param1.readInt();
         this.var_621 = this.var_621 >>> 1 % 32 | this.var_621 << 32 - 1 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_654 = null;
         param1.writeShort(14142);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_1531);
         param1.writeDouble(this.var_1434);
         param1.writeDouble(this.var_1117);
         param1.writeByte(this.var_793.length);
         for each(_loc2_ in this.var_793)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.var_1667);
         param1.writeShort(this.var_1668);
         param1.writeDouble(this.var_1200);
         param1.writeInt(this.var_621 << 1 % 32 | this.var_621 >>> 32 - 1 % 32);
      }
   }
}
