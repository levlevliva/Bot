package package_119
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_101.class_561;
   import package_110.class_762;
   import package_111.class_425;
   import package_111.class_446;
   import package_111.class_796;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_51;
   import package_143.class_542;
   import package_143.class_933;
   import package_16.class_28;
   import package_34.class_107;
   import package_34.class_73;
   import package_41.class_84;
   import package_41.class_89;
   import package_5.class_123;
   import package_6.class_14;
   import package_99.class_853;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.primitives.Ellipse;
   
   public final class class_479 implements class_14
   {
      
      public static const name_3:class_479 = new class_479();
       
      
      private var var_646:int = 0;
      
      public var var_71:int = 0;
      
      public var name_23:Number = 0;
      
      public var var_711:int = 0;
      
      public function class_479(param1:Number = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_71 = param2;
         this.name_23 = param1;
         this.var_711 = param3;
      }
      
      public function method_16() : int
      {
         return -6489;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_71 = param1.readInt();
         this.var_71 = this.var_71 >>> 5 % 32 | this.var_71 << 32 - 5 % 32;
         this.name_23 = param1.readDouble();
         this.var_711 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-6489);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeInt(this.var_71 << 5 % 32 | this.var_71 >>> 32 - 5 % 32);
         param1.writeDouble(this.name_23);
         param1.writeShort(this.var_711);
      }
   }
}
