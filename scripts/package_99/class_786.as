package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentIslandsListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_112.class_622;
   import package_122.class_428;
   import package_122.class_634;
   import package_185.class_1136;
   import package_211.class_1369;
   import package_23.class_42;
   import package_3.class_378;
   import package_41.class_84;
   import package_46.class_1224;
   import package_6.class_14;
   import package_8.class_1240;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.supportClasses.ButtonBarHorizontalLayout;
   
   public class class_786 implements class_14
   {
      
      public static const name_3:class_786 = new class_786();
       
      
      private var var_646:int = 0;
      
      public var var_15:Number = 0;
      
      public var name_13:String = "";
      
      public function class_786(param1:String = "", param2:Number = 0)
      {
         super();
         this.var_15 = param2;
         this.name_13 = param1;
      }
      
      public function method_16() : int
      {
         return 13737;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_15 = param1.readDouble();
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13737);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeDouble(this.var_15);
         param1.writeUTF(this.name_13);
      }
   }
}
