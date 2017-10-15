package package_3
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.ListSkinForOnePixelLines;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_101.class_511;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1547;
   import package_175.class_1593;
   import package_20.class_33;
   import package_202.class_1238;
   import package_36.class_100;
   import package_37.class_75;
   import package_37.class_81;
   import package_41.class_103;
   import package_41.class_84;
   import package_42.class_959;
   import package_42.class_98;
   import package_46.class_1493;
   import package_5.class_123;
   import package_5.class_43;
   import package_5.class_945;
   import package_6.class_14;
   import package_68.class_191;
   import package_90.class_379;
   import package_91.class_1246;
   import package_91.class_450;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   
   public final class class_363 extends class_10
   {
       
      
      private var var_1057:class_191;
      
      public function class_363()
      {
         super();
         this.name_16();
         this.var_1057 = class_33.name_12.method_1727;
      }
      
      public static function method_847(param1:class_84, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:class_98 = class_47.method_21().method_392(param1);
         if(_loc4_ == null)
         {
            return;
         }
         class_47.method_48.method_1405(_loc4_,param1);
         class_47.method_48.method_827(param1,param2,param3);
      }
      
      private final function name_16() : void
      {
         method_23(class_379.name_3,this.method_1904);
         method_23(class_450.name_3,this.method_2367);
         method_23(class_75.name_3,this.method_1983);
      }
      
      private final function method_2367(param1:class_14) : void
      {
         if(!class_47.method_29 || !class_47.method_29.method_75)
         {
            const_3.warn("Server sending {1} before entities exist",param1);
            return;
         }
         var _loc2_:class_450 = param1 as class_450;
         var _loc3_:class_1235 = new class_1235();
         _loc3_.var_1179 = _loc2_.var_1604;
         _loc3_.var_408 = _loc2_.var_251;
         _loc3_.var_389 = _loc2_.var_52;
         _loc3_.var_168 = _loc2_.var_132;
         _loc3_.var_490 = _loc2_.var_139.var_146;
         _loc3_.var_479 = _loc2_.var_139.var_107;
         _loc3_.var_233 = _loc2_.var_58;
         _loc3_.var_1804 = true;
         if(class_177.method_52(_loc3_.var_408,class_51.var_21))
         {
            class_47.method_72.method_377();
            class_47.method_72.method_412();
            class_47.method_72.method_379();
            this.var_1057.method_2239();
         }
         this.method_1951(_loc3_);
         var _loc4_:Boolean = class_49.method_42(class_43.const_253);
         var _loc5_:Boolean = _loc4_ && !class_177.method_52(_loc3_.var_389,class_51.var_21);
         if(_loc5_ && !class_177.method_52(_loc3_.var_408,class_51.var_21))
         {
            return;
         }
         if(class_177.method_52(_loc3_.var_389,class_51.var_21))
         {
            method_847(_loc3_.var_408,_loc3_.var_168 == class_1246.const_187,false);
            class_47.method_29.method_75.method_1078(class_47.method_165.method_268(_loc3_.var_408.name_4) == null);
         }
         else if(class_177.method_52(_loc3_.var_408,class_51.var_21))
         {
            class_47.method_29.method_75.var_2176 = getTimer();
            class_47.method_48.method_827(_loc3_.var_389,_loc3_.var_168 == class_1246.const_187,true);
         }
         class_1238.method_763(_loc3_,_loc5_);
      }
      
      private final function method_1983(param1:class_14) : void
      {
         var _loc2_:class_75 = param1 as class_75;
         if(_loc2_.name_5 != class_81.const_1476)
         {
            return;
         }
         var _loc3_:Point = getMapPoint(_loc2_.name_6.var_9,_loc2_.name_6.var_8);
         class_47.method_24.var_12.miniMap.method_1452(_loc3_.x,_loc3_.y,65280);
      }
      
      private final function method_1951(param1:class_1235) : void
      {
         var _loc2_:class_100 = class_47.method_29.method_44(param1.var_389);
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.method_33.name_14)
         {
            case class_945.const_301:
               param1.var_168 = class_1246.const_1127;
               param1.var_1804 = false;
            case class_945.const_950:
            case class_945.const_553:
               param1.var_1804 = false;
         }
      }
      
      private final function method_1904(param1:class_14) : void
      {
         var _loc2_:class_379 = param1 as class_379;
         var _loc3_:class_1235 = new class_1235();
         _loc3_.var_408 = _loc2_.name_4;
         _loc3_.var_389 = _loc2_.var_52;
         _loc3_.var_490 = _loc2_.var_760;
         _loc3_.var_479 = _loc2_.var_903;
         _loc3_.var_168 = -1;
         _loc3_.var_1177 = _loc2_.name_5;
         _loc3_.var_10 = _loc2_.var_10;
         var _loc4_:class_84 = class_51.var_21;
         if(!class_177.method_52(_loc3_.var_389,_loc4_))
         {
            if(class_177.method_52(_loc3_.var_408,_loc4_))
            {
               class_47.method_29.method_75.var_2176 = getTimer();
               class_47.method_48.method_827(_loc3_.var_389,false,true);
            }
         }
         var _loc5_:Boolean = class_49.method_42(class_43.const_253);
         var _loc6_:Boolean = _loc5_ && !class_177.method_52(_loc3_.var_389,_loc4_);
         if(_loc6_ && !class_177.method_52(_loc3_.var_408,_loc4_))
         {
            return;
         }
         class_1238.method_763(_loc3_,_loc6_);
      }
   }
}
