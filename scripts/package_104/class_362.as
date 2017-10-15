package package_104
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.type.Gem_Model;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.FleetContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.QuestContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.TradingContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.events.NpcQuestContentModuleActionEvent;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.TradingItemVo;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_111.class_425;
   import package_111.class_466;
   import package_111.class_796;
   import package_14.class_47;
   import package_14.class_94;
   import package_14.class_96;
   import package_152.class_664;
   import package_16.class_28;
   import package_214.class_1604;
   import package_26.class_142;
   import package_30.class_62;
   import package_34.class_116;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_48.class_138;
   import package_5.class_22;
   import package_5.class_41;
   import package_54.class_160;
   import package_6.class_14;
   import package_89.class_299;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_362 implements class_14
   {
      
      public static const name_3:class_362 = new class_362();
      
      public static const const_1754:int = 0;
      
      public static const const_1898:int = 1;
      
      public static const const_2774:int = 2;
      
      public static const const_2484:int = 3;
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_362(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 4453;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(4453);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
