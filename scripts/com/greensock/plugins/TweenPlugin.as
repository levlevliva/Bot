package com.greensock.plugins
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.FactionPhaseRankingItemVO;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   import com.greensock.easing.Sine;
   import com.soenkerohde.logging.SOSLoggingTarget;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import package_107.class_693;
   import package_123.class_1032;
   import package_123.class_498;
   import package_123.class_652;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_51;
   import package_20.class_33;
   import package_205.class_1353;
   import package_208.class_1585;
   import package_30.class_1013;
   import package_30.class_62;
   import package_32.class_1245;
   import package_32.class_338;
   import package_32.class_64;
   import package_41.class_84;
   import package_45.class_110;
   import package_49.class_137;
   import package_49.class_880;
   import package_51.class_148;
   import package_55.class_1008;
   import package_88.class_290;
   import package_89.class_1011;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class TweenPlugin
   {
      
      public static const VERSION:Number = 1.4;
      
      public static const API:Number = 1.0;
       
      
      public var propName:String;
      
      public var overwriteProps:Array;
      
      public var round:Boolean;
      
      public var priority:int = 0;
      
      public var activeDisable:Boolean;
      
      public var onInitAllProps:Function;
      
      public var onComplete:Function;
      
      public var onEnable:Function;
      
      public var onDisable:Function;
      
      protected var _tweens:Array;
      
      protected var _changeFactor:Number = 0;
      
      public function TweenPlugin()
      {
         this._tweens = [];
         super();
      }
      
      private static function onTweenEvent(param1:String, param2:TweenLite) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc3_:PropTween = param2.cachedPT1;
         if(param1 == "onInitAllProps")
         {
            _loc5_ = [];
            _loc6_ = 0;
            while(_loc3_)
            {
               _loc5_[_loc6_++] = _loc3_;
               _loc3_ = _loc3_.nextNode;
            }
            _loc5_.sortOn("priority",Array.NUMERIC | Array.DESCENDING);
            while(--_loc6_ > -1)
            {
               PropTween(_loc5_[_loc6_]).nextNode = _loc5_[_loc6_ + 1];
               PropTween(_loc5_[_loc6_]).prevNode = _loc5_[_loc6_ - 1];
            }
            _loc3_ = param2.cachedPT1 = _loc5_[0];
         }
         while(_loc3_)
         {
            if(_loc3_.isPlugin && _loc3_.target[param1])
            {
               if(_loc3_.target.activeDisable)
               {
                  _loc4_ = true;
               }
               _loc3_.target[param1]();
            }
            _loc3_ = _loc3_.nextNode;
         }
         return _loc4_;
      }
      
      public static function activate(param1:Array) : Boolean
      {
         var _loc3_:Object = null;
         TweenLite.onPluginEvent = TweenPlugin.onTweenEvent;
         var _loc2_:int = param1.length;
         while(_loc2_--)
         {
            if(param1[_loc2_].hasOwnProperty("API"))
            {
               _loc3_ = new (param1[_loc2_] as Class)();
               TweenLite.plugins[_loc3_.propName] = param1[_loc2_];
            }
         }
         return true;
      }
      
      public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         this.addTween(param1,this.propName,param1[this.propName],param2,this.propName);
         return true;
      }
      
      protected final function addTween(param1:Object, param2:String, param3:Number, param4:*, param5:String = null) : void
      {
         var _loc6_:Number = NaN;
         if(param4 != null)
         {
            _loc6_ = typeof param4 == "number"?Number(Number(param4) - param3):Number(Number(param4));
            if(_loc6_ != 0)
            {
               this._tweens[this._tweens.length] = new PropTween(param1,param2,param3,_loc6_,param5 || param2,false);
            }
         }
      }
      
      protected final function updateTweens(param1:Number) : void
      {
         var _loc3_:PropTween = null;
         var _loc4_:Number = NaN;
         var _loc2_:int = this._tweens.length;
         if(this.round)
         {
            while(--_loc2_ > -1)
            {
               _loc3_ = this._tweens[_loc2_];
               _loc4_ = _loc3_.start + _loc3_.change * param1;
               if(_loc4_ > 0)
               {
                  _loc3_.target[_loc3_.property] = _loc4_ + 0.5 >> 0;
               }
               else
               {
                  _loc3_.target[_loc3_.property] = _loc4_ - 0.5 >> 0;
               }
            }
         }
         else
         {
            while(--_loc2_ > -1)
            {
               _loc3_ = this._tweens[_loc2_];
               _loc3_.target[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
            }
         }
      }
      
      public function get changeFactor() : Number
      {
         return this._changeFactor;
      }
      
      public function set changeFactor(param1:Number) : void
      {
         this.updateTweens(param1);
         this._changeFactor = param1;
      }
      
      public function killProps(param1:Object) : void
      {
         var _loc2_:int = this.overwriteProps.length;
         while(--_loc2_ > -1)
         {
            if(this.overwriteProps[_loc2_] in param1)
            {
               this.overwriteProps.splice(_loc2_,1);
            }
         }
         _loc2_ = this._tweens.length;
         while(--_loc2_ > -1)
         {
            if(PropTween(this._tweens[_loc2_]).name in param1)
            {
               this._tweens.splice(_loc2_,1);
            }
         }
      }
   }
}
