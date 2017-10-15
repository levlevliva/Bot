package package_61
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_60;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BoardingWindow;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.BoardingWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.boarding.controllers.BoardingWindowNaviController;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsTableColumnHeaderRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_467;
   import package_114.class_430;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_54;
   import package_178.class_1060;
   import package_20.class_33;
   import package_216.class_1575;
   import package_36.class_100;
   import package_36.class_1417;
   import package_44.class_108;
   import package_45.class_110;
   import package_46.class_1356;
   import package_51.class_974;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_724 implements class_14
   {
      
      public static const name_3:class_724 = new class_724();
       
      
      private var var_646:int = 0;
      
      public var var_895:Vector.<int>;
      
      public function class_724(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_895 = new Vector.<int>();
         }
         else
         {
            this.var_895 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 20824;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_895.length > 0)
         {
            this.var_895.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readShort());
            _loc4_ = 65535 & ((65535 & _loc4_) << 15 % 16 | (65535 & _loc4_) >>> 16 - 15 % 16);
            _loc4_ = int(_loc4_ > 32767?int(_loc4_ - 65536):int(_loc4_));
            this.var_895.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(20824);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeByte(this.var_895.length);
         for each(_loc2_ in this.var_895)
         {
            param1.writeShort(65535 & ((65535 & _loc2_) >>> 15 % 16 | (65535 & _loc2_) << 16 - 15 % 16));
         }
      }
   }
}
