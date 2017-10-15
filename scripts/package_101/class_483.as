package package_101
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowAnnouncementsTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowIslandsTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowMembersTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowOverviewTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowTreasuryTab;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.IVisualElement;
   import mx.logging.Log;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_94;
   import package_3.class_378;
   import package_34.class_1526;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.gridClasses.GridLayer;
   
   public final class class_483 implements class_14
   {
      
      public static const name_3:class_483 = new class_483();
       
      
      private var var_646:int = 0;
      
      public var var_111:int = 0;
      
      public var var_33:int = 0;
      
      public var var_837:Vector.<int>;
      
      public var var_49:Vector.<class_566>;
      
      public var var_170:Number = 0;
      
      public var var_20:Number = 0;
      
      public var name_11:int = 0;
      
      public function class_483(param1:int = 0, param2:Vector.<int> = null, param3:Vector.<class_566> = null, param4:Number = 0, param5:Number = 0, param6:int = 0, param7:int = 0)
      {
         super();
         this.var_111 = param7;
         this.var_33 = param6;
         if(param2 == null)
         {
            this.var_837 = new Vector.<int>();
         }
         else
         {
            this.var_837 = param2;
         }
         if(param3 == null)
         {
            this.var_49 = new Vector.<class_566>();
         }
         else
         {
            this.var_49 = param3;
         }
         this.var_170 = param4;
         this.var_20 = param5;
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return 12974;
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
         return 36;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_566 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_111 = param1.readInt();
         this.var_111 = this.var_111 >>> 5 % 32 | this.var_111 << 32 - 5 % 32;
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 >>> 10 % 32 | this.var_33 << 32 - 10 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_837.length > 0)
         {
            this.var_837.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_837.push(param1.readShort());
            _loc2_++;
         }
         while(this.var_49.length > 0)
         {
            this.var_49.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_566(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_49.push(_loc4_);
            _loc2_++;
         }
         this.var_170 = param1.readDouble();
         this.var_20 = param1.readDouble();
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 6 % 32 | this.name_11 >>> 32 - 6 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         var _loc3_:class_566 = null;
         param1.writeShort(12974);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeInt(this.var_111 << 5 % 32 | this.var_111 >>> 32 - 5 % 32);
         param1.writeInt(this.var_33 << 10 % 32 | this.var_33 >>> 32 - 10 % 32);
         param1.writeByte(this.var_837.length);
         for each(_loc2_ in this.var_837)
         {
            param1.writeShort(_loc2_);
         }
         param1.writeByte(this.var_49.length);
         for each(_loc3_ in this.var_49)
         {
            _loc3_.method_14(param1);
         }
         param1.writeDouble(this.var_170);
         param1.writeDouble(this.var_20);
         param1.writeInt(this.name_11 >>> 6 % 32 | this.name_11 << 32 - 6 % 32);
      }
   }
}
