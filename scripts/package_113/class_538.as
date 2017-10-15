package package_113
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronRitualsVo;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.CollectionEventKind;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_10.class_18;
   import package_10.class_38;
   import package_102.class_589;
   import package_14.class_200;
   import package_162.class_835;
   import package_19.class_32;
   import package_210.class_1474;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_53.class_1101;
   import package_60.class_183;
   import package_61.class_184;
   import package_84.class_270;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.primitives.Line;
   
   public final class class_538 extends class_397
   {
      
      public static const name_3:class_538 = new class_538();
       
      
      private var var_646:int = 0;
      
      public var var_81:class_90;
      
      public var name_13:String = "";
      
      public var var_118:class_90;
      
      public var var_92:String = "";
      
      public function class_538(param1:String = "", param2:String = "", param3:class_90 = null, param4:class_90 = null)
      {
         super();
         if(param4 == null)
         {
            this.var_81 = new class_90();
         }
         else
         {
            this.var_81 = param4;
         }
         this.name_13 = param1;
         if(param3 == null)
         {
            this.var_118 = new class_90();
         }
         else
         {
            this.var_118 = param3;
         }
         this.var_92 = param2;
      }
      
      override public function method_16() : int
      {
         return -9409;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_81 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_81.method_15(param1);
         this.name_13 = param1.readUTF();
         this.var_118 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_118.method_15(param1);
         this.var_92 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9409);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         this.var_81.method_14(param1);
         param1.writeUTF(this.name_13);
         this.var_118.method_14(param1);
         param1.writeUTF(this.var_92);
      }
   }
}
