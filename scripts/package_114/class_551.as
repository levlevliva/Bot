package package_114
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.SlotsIndicator;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_107.class_1467;
   import package_14.class_47;
   import package_14.class_88;
   import package_16.class_28;
   import package_170.class_979;
   import package_212.class_1537;
   import package_28.class_56;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_135;
   import package_47.class_833;
   import package_47.class_861;
   import package_49.class_880;
   import package_5.class_123;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_336;
   import package_92.class_944;
   import package_97.class_986;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_551 implements class_14
   {
      
      public static const name_3:class_551 = new class_551();
       
      
      private var var_646:int = 0;
      
      public var var_10:int = 0;
      
      public var name_4:class_84;
      
      public var var_22:int = 0;
      
      public function class_551(param1:class_84 = null, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_10 = param3;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_22 = param2;
      }
      
      public function method_16() : int
      {
         return -16199;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 >>> 7 % 32 | this.var_10 << 32 - 7 % 32;
         this.name_4 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_4.method_15(param1);
         this.var_22 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16199);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeInt(this.var_10 << 7 % 32 | this.var_10 >>> 32 - 7 % 32);
         this.name_4.method_14(param1);
         param1.writeShort(this.var_22);
      }
   }
}
