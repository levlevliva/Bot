package package_121
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.popups.common.SmallRedDeclineButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.currencypopup.vo.CurrencyItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyUserIdItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.target;
   import com.bigpoint.seafight.view.userInterface.class_19;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_11.class_20;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_51;
   import package_15.class_1193;
   import package_15.class_48;
   import package_17.class_54;
   import package_178.class_1060;
   import package_194.class_1226;
   import package_211.class_1369;
   import package_216.class_1575;
   import package_219.class_1595;
   import package_26.class_1102;
   import package_44.class_108;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_72.class_203;
   import package_92.class_336;
   import package_95.class_341;
   import package_99.class_550;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_615 implements class_14
   {
      
      public static const name_3:class_615 = new class_615();
       
      
      private var var_646:int = 0;
      
      public var var_20:int = 0;
      
      public function class_615(param1:int = 0)
      {
         super();
         this.var_20 = param1;
      }
      
      public function method_16() : int
      {
         return 17360;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readInt();
         this.var_20 = this.var_20 << 9 % 32 | this.var_20 >>> 32 - 9 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17360);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeInt(this.var_20 >>> 9 % 32 | this.var_20 << 32 - 9 % 32);
      }
   }
}
