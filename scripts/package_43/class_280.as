package package_43
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getDyna;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.TradingItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bit101.components.ColorChooser;
   import com.greensock.events.TweenEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_433;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_103.class_367;
   import package_104.class_628;
   import package_110.class_390;
   import package_110.class_506;
   import package_110.class_526;
   import package_111.class_1176;
   import package_111.class_585;
   import package_112.class_622;
   import package_136.class_926;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_169.class_1154;
   import package_169.class_1216;
   import package_170.class_979;
   import package_191.class_1171;
   import package_20.class_33;
   import package_202.class_1238;
   import package_22.class_645;
   import package_22.class_655;
   import package_27.class_53;
   import package_28.class_56;
   import package_29.class_57;
   import package_3.class_514;
   import package_30.class_1013;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_935;
   import package_48.class_996;
   import package_5.class_123;
   import package_54.class_159;
   import package_54.class_163;
   import package_6.class_14;
   import package_69.class_1614;
   import package_69.class_978;
   import package_7.class_104;
   import package_7.class_482;
   import package_72.class_203;
   import package_92.class_1368;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_280 extends class_78
   {
       
      
      private var var_66:class_273;
      
      private var var_1186:class_1154;
      
      private var var_1676:class_1171;
      
      private var var_1001:class_1216;
      
      private var var_1309:class_514;
      
      public function class_280(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1186 = param1.var_2109;
         method_35(this.var_1186);
         this.var_1676 = param1.var_2056;
         this.var_1676.addEventListener(Event.CHANGE,this.method_1539);
         this.var_1001 = param1.var_2288;
         method_35(this.var_1001);
      }
      
      private final function method_1539(param1:Event) : void
      {
         this.resetPresets();
      }
      
      private final function resetPresets(param1:int = 0, param2:int = 0) : void
      {
         var _loc3_:class_585 = null;
         if(param2 != class_1176.const_383)
         {
            this.var_1001.method_54();
            _loc3_ = this.var_1001.name_8;
            method_38();
         }
      }
      
      public final function method_2628() : void
      {
         this.var_1186.name_8;
      }
      
      override protected function method_1182() : Object
      {
         return this.var_1001.name_8;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1186);
         this.var_1186 = null;
         this.var_1676.removeEventListener(Event.CHANGE,this.method_1539);
         this.var_1676 = null;
         method_43(this.var_1001);
         this.var_1001 = null;
         this.var_1309.var_679.remove(this.resetPresets);
         this.var_1309 = null;
      }
      
      public final function method_358() : class_585
      {
         if(!this.var_1309)
         {
            this.var_1309 = class_33.name_12.method_126.method_164(class_514) as class_514;
            this.var_1309.var_679.add(this.resetPresets);
         }
         return method_38() as class_585;
      }
   }
}
