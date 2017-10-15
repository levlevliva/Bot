package package_40
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1187;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRelationsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsComboBoxListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.Signal;
   import package_10.class_18;
   import package_10.class_38;
   import package_100.class_1186;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_96;
   import package_15.class_273;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_201.class_1231;
   import package_29.class_166;
   import package_34.class_116;
   import package_41.class_84;
   import package_5.class_123;
   import package_5.class_939;
   import package_53.class_1100;
   import package_6.class_14;
   import package_69.class_1052;
   import package_69.class_978;
   import package_76.class_279;
   import package_88.class_290;
   import package_92.clip;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   
   public final class class_491 implements class_14
   {
      
      public static const name_3:class_491 = new class_491();
       
      
      private var var_646:int = 0;
      
      public var name_52:int = 0;
      
      public var name_4:class_84;
      
      public function class_491(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.name_52 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -1044;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_52 = param1.readShort();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 10 % 16 | (65535 & this.name_4.var_6) << 16 - 10 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1044);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(this.name_52);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 10 % 16 | (65535 & this.name_4.var_6) >>> 16 - 10 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
