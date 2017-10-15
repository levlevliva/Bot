package package_7
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.target;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_17.class_37;
   import package_26.class_218;
   import package_42.class_99;
   import package_5.class_214;
   import package_6.class_14;
   import package_9.class_76;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public final class class_104 implements class_14
   {
      
      public static const name_3:class_104 = new class_104();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_104(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -10899;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-10899);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
