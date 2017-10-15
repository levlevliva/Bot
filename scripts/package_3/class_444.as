package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.ISimplePopupHandler;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenMax;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_698;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_10.class_18;
   import package_10.class_38;
   import package_104.class_628;
   import package_123.class_652;
   import package_123.class_837;
   import package_14.class_1313;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_16.class_28;
   import package_17.class_147;
   import package_17.class_304;
   import package_17.class_307;
   import package_17.class_37;
   import package_17.class_990;
   import package_170.class_979;
   import package_20.class_33;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_216.class_1575;
   import package_22.class_655;
   import package_26.class_1086;
   import package_26.class_1102;
   import package_26.class_142;
   import package_26.class_52;
   import package_28.class_56;
   import package_29.class_565;
   import package_34.class_1000;
   import package_34.class_115;
   import package_36.class_100;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_43.class_266;
   import package_48.class_996;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_50.class_141;
   import package_51.class_974;
   import package_54.class_1089;
   import package_54.class_160;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_1614;
   import package_69.class_978;
   import package_7.class_74;
   import package_74.class_256;
   import package_89.class_299;
   import package_9.class_1314;
   import package_9.class_350;
   import package_9.class_375;
   import package_9.class_401;
   import package_9.class_404;
   import package_9.class_445;
   import package_9.class_76;
   import package_9.class_899;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_444 extends class_10 implements ISimplePopupHandler
   {
       
      
      private var var_1957:Boolean = false;
      
      public function class_444()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_401.name_3,this.method_2667);
         method_23(class_375.name_3,this.method_2441);
         method_23(class_404.name_3,this.method_1685);
         method_23(class_445.name_3,this.method_2092);
         method_23(class_350.name_3,this.method_2144);
      }
      
      private final function method_2441(param1:class_14) : void
      {
         class_304.method_21().method_1067();
         this.removeMapJumpButton();
         class_147.method_21().method_514 = false;
      }
      
      private final function removeMapJumpButton() : void
      {
         class_47.method_24.var_12.globalActionBtnContainer.method_109("commonMapChange").visible = false;
         class_47.method_72.var_1974 = -1;
      }
      
      private final function method_1685(param1:class_14) : void
      {
         var _loc7_:class_232 = null;
         var _loc2_:class_404 = param1 as class_404;
         class_47.method_51.method_1064();
         class_47.method_24.var_12.globalActionBtnContainer.method_109("commonMapChange").visible = false;
         class_33.name_12.method_41.method_813();
         class_307.method_21().method_119();
         class_147.method_21().method_514 = false;
         var _loc3_:Boolean = class_47.method_51.method_141(class_76.const_191);
         if(this.var_1957 || _loc3_)
         {
            if(_loc3_)
            {
               class_47.method_24.var_12.globalActionBtnContainer.method_109("voodooBackChange").visible = false;
               class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COMMON_PLACEING);
            }
            class_304.method_21().method_2464();
            this.var_1957 = false;
         }
         var _loc4_:class_100 = class_47.method_29.method_75;
         var _loc5_:class_171 = class_47.method_29.method_314(class_51.var_21);
         var _loc6_:Point = getMapPoint(_loc2_.name_6.var_9,_loc2_.name_6.var_8);
         class_47.method_51.method_1525(_loc2_.var_143);
         class_47.method_51.addEventListener(class_52.const_94,this.method_1206);
         class_47.method_51.method_729();
         class_47.method_24.var_12.miniMap.method_871.method_497();
         _loc4_.stopRoute(false,_loc2_.name_6.var_9,_loc2_.name_6.var_8,0,true);
         _loc4_.method_755(_loc2_.name_6.var_9,_loc2_.name_6.var_8);
         _loc4_.method_2461();
         if(_loc5_)
         {
            _loc5_.method_1275();
            _loc5_.method_755(_loc2_.name_6.var_9,_loc2_.name_6.var_8);
            _loc5_.method_144(_loc6_.x,_loc6_.y,0,false);
         }
         class_37.method_21().method_665();
         class_47.method_72.method_600();
         class_47.method_72.method_614();
         class_47.method_72.method_1382();
         if(_loc2_.var_143.var_1273)
         {
            _loc7_ = class_47.method_51;
            _loc7_.method_486();
         }
         class_33.name_12.method_465.method_1188();
      }
      
      private final function method_1206(param1:class_52) : void
      {
         class_47.method_24.method_39.method_1125();
         class_47.method_51.removeEventListener(class_52.const_94,this.method_1206);
         class_47.method_24.var_12.miniMap.method_1533(class_47.method_51.method_175());
         class_47.method_24.method_39.method_1016();
         class_37.method_1461(class_141.var_99);
         class_209.method_726(class_141.var_99);
         this.method_1023();
      }
      
      private final function method_2667(param1:class_14) : void
      {
         var _loc3_:class_332 = null;
         var _loc2_:class_401 = param1 as class_401;
         if(_loc2_.name_5 == class_1314.const_1442)
         {
            this.method_2126(_loc2_.name_11);
         }
         else if(_loc2_.name_5 == class_1314.const_1215)
         {
            _loc3_ = class_332.method_2787("map_jump_invisible_prompt");
            CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_,this));
         }
      }
      
      private final function method_2126(param1:int) : void
      {
         if(class_47.method_29.method_56.var_712)
         {
            return;
         }
         class_147.method_21().method_514 = true;
         var _loc2_:class_1089 = class_47.method_24.var_12.globalActionBtnContainer.method_109("commonMapChange");
         _loc2_.visible = true;
         _loc2_.var_316.method_167(class_160.const_831);
         _loc2_.var_316.method_191();
         _loc2_.var_316.method_251();
         class_47.method_72.var_1974 = param1;
      }
      
      private final function method_2092(param1:class_14) : void
      {
         var _loc2_:class_445 = param1 as class_445;
         this.var_1957 = true;
         if(_loc2_.name_11 >= 100)
         {
            class_304.method_21().method_2258(_loc2_.name_58);
         }
         else
         {
            class_304.method_21().method_1687(_loc2_.name_58);
         }
      }
      
      private final function method_2144(param1:class_14) : void
      {
         class_1313.name_12().var_1778 = param1 as class_350;
         this.method_1023();
      }
      
      private final function method_1023() : void
      {
         var _loc4_:class_899 = null;
         var _loc5_:Boolean = false;
         var _loc1_:class_350 = class_1313.name_12().var_1778;
         if(null == _loc1_)
         {
            return;
         }
         var _loc2_:class_990 = class_47.method_51.method_852(_loc1_.name_11);
         if(null == _loc2_)
         {
            return;
         }
         var _loc3_:Vector.<class_899> = _loc1_.var_883;
         for each(_loc4_ in _loc3_)
         {
            _loc2_.method_2139(_loc4_.name_35,_loc4_.var_449);
         }
         _loc5_ = class_47.method_24.method_39.method_182();
         if(_loc5_)
         {
            class_1313.name_12().var_1778 = null;
         }
      }
      
      public function onPopupResponse(param1:class_1102) : void
      {
         if(param1.name_60 == PopupResponseType.YES)
         {
            class_1000.name_3.method_1910();
         }
      }
   }
}
