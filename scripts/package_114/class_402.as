package package_114
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import com.oaxoa.fx.LightningFadeType;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_216.class_1575;
   import package_34.class_1526;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_5.class_22;
   import package_52.class_1096;
   import package_6.class_14;
   import package_69.class_978;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.easing.Elastic;
   
   public final class class_402 implements class_14
   {
      
      public static const name_3:class_402 = new class_402();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_22:int = 0;
      
      public function class_402(param1:class_84 = null, param2:int = 0)
      {
         super();
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
         return 617;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_4.method_15(param1);
         this.var_22 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(617);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         this.name_4.method_14(param1);
         param1.writeShort(this.var_22);
      }
   }
}
