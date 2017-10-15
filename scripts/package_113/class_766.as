package package_113
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingLogListItemVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.queue.component.GroupMapPlayerQueueItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageVo;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.EffectEvent;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import mx.utils.LinkedListNode;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_10.class_18;
   import package_107.class_693;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_156.class_674;
   import package_163.class_884;
   import package_210.class_1474;
   import package_216.class_1575;
   import package_41.class_93;
   import package_46.class_1224;
   import package_49.class_137;
   import package_5.class_1239;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_8.class_1240;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_766 implements class_14
   {
      
      public static const name_3:class_766 = new class_766();
       
      
      private var var_646:int = 0;
      
      public function class_766()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -13078;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13078);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
      }
   }
}
