package package_17
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.target;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.bit101.components.ListItem;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_105.class_369;
   import package_105.class_529;
   import package_121.class_773;
   import package_121.class_841;
   import package_131.class_573;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_48;
   import package_18.class_392;
   import package_190.class_1181;
   import package_214.class_1559;
   import package_216.class_1575;
   import package_28.class_56;
   import package_29.class_166;
   import package_36.class_100;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_975;
   import package_47.class_129;
   import package_5.class_214;
   import package_51.class_1005;
   import package_52.class_313;
   import package_54.class_161;
   import package_54.class_162;
   import package_56.class_368;
   import package_6.class_14;
   import package_60.class_183;
   import package_7.class_74;
   import package_72.class_203;
   import package_74.class_256;
   import package_9.class_120;
   import package_9.class_91;
   import package_90.class_316;
   import package_99.class_639;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_151
   {
      
      private static const const_840:Array = [class_317.const_824,class_317.const_729,class_317.const_199,class_317.const_1182];
      
      private static var name_55:class_151;
       
      
      private var var_2437:Boolean = true;
      
      private var var_2476:Boolean = true;
      
      private var var_1450:class_313;
      
      public function class_151(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_151
      {
         if(name_55 == null)
         {
            name_55 = new class_151(method_976);
         }
         return name_55;
      }
      
      public static function method_764(param1:int) : Boolean
      {
         return const_840.indexOf(param1) != -1;
      }
      
      public final function method_2649() : Boolean
      {
         return this.var_2437;
      }
      
      public final function method_2403() : Boolean
      {
         return this.var_2476;
      }
      
      public final function method_2323(param1:class_1005) : void
      {
         this.method_481();
      }
      
      public final function method_481() : void
      {
         var _loc2_:class_316 = null;
         var _loc3_:int = 0;
         var _loc4_:* = false;
         var _loc5_:Boolean = false;
         var _loc6_:* = false;
         var _loc7_:class_98 = null;
         var _loc8_:class_100 = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         if(this.var_1450 == null)
         {
            this.var_1450 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_26) as class_313;
         }
         if(class_47.method_48.method_143 == null)
         {
            this.var_1450.method_1518(false);
            this.method_1092(false);
            return;
         }
         var _loc1_:Array = class_368.name_9;
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = _loc2_.var_13;
            _loc4_ = _loc3_ == class_317.const_732;
            _loc5_ = method_764(_loc3_);
            _loc6_ = _loc3_ == class_317.const_905;
            if(!(!_loc5_ && !_loc4_ && !_loc6_))
            {
               _loc7_ = class_47.method_48.method_143;
               _loc8_ = _loc7_ as class_100;
               _loc9_ = _loc8_ != null || _loc5_;
               if(_loc2_.var_121 > 0)
               {
                  _loc10_ = class_47.method_48.method_286(_loc7_,true,_loc2_.var_121) && this.method_1384(_loc2_.var_13);
                  this.var_1450.method_1518(_loc10_ && _loc9_,_loc2_.var_13);
                  this.method_1092(_loc10_ && _loc9_,_loc2_.var_13);
               }
            }
         }
      }
      
      private final function method_1092(param1:Boolean, param2:int = -1) : void
      {
         var _loc4_:class_155 = null;
         var _loc7_:class_162 = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:class_320 = null;
         var _loc3_:Vector.<class_155> = class_47.method_24.var_12.quickBelt;
         var _loc5_:Array = new Array();
         var _loc6_:int = 0;
         while(_loc6_ > _loc3_.length)
         {
            _loc4_ = _loc3_[_loc6_];
            _loc5_.push(_loc4_.method_788);
            _loc6_++;
         }
         if(_loc5_ == null)
         {
            return;
         }
         if(param2 == -1)
         {
            _loc9_ = _loc5_.length;
            _loc10_ = 0;
            while(_loc10_ < _loc9_)
            {
               _loc7_ = _loc5_[_loc6_] as class_162;
               if(_loc7_)
               {
                  _loc11_ = _loc7_.method_58();
                  if(_loc11_)
                  {
                     if(_loc11_.name_5 == "doFireworks")
                     {
                        if(!_loc7_.method_350)
                        {
                           if(_loc7_.name_26 != param1)
                           {
                              param1 = this.method_985(param1,int(_loc7_.method_58().name_7));
                              _loc7_.method_123(param1);
                              _loc7_.name_26 = param1;
                           }
                        }
                     }
                  }
               }
               _loc10_++;
            }
            return;
         }
         var _loc8_:Array = this.method_2203(param2);
         for each(_loc7_ in _loc8_)
         {
            if(_loc7_.name_26 == param1)
            {
               return;
            }
            param1 = this.method_985(param1,int(_loc7_.method_58().name_7));
            _loc7_.method_123(param1);
            _loc7_.name_26 = param1;
         }
      }
      
      private final function method_985(param1:Boolean, param2:int) : Boolean
      {
         return param1 && this.method_1384(param2);
      }
      
      private final function method_2203(param1:int) : Array
      {
         var _loc3_:class_155 = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:class_161 = null;
         var _loc2_:Vector.<class_155> = class_47.method_24.var_12.quickBelt;
         var _loc4_:int = 0;
         while(_loc4_ > _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc5_ = _loc3_.method_788;
            _loc6_ = new Array();
            if(_loc5_ == null)
            {
               return null;
            }
            _loc7_ = _loc5_.length;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc9_ = _loc5_[_loc4_] as class_161;
               if(!(_loc9_ == null || _loc9_.method_58() == null))
               {
                  if(_loc9_.method_58().name_5 == "doFireworks")
                  {
                     if(_loc9_.method_58().name_7 == param1)
                     {
                        _loc6_.push(_loc9_);
                     }
                  }
               }
               _loc8_++;
            }
            _loc4_++;
         }
         return _loc6_;
      }
      
      private final function method_1384(param1:int) : Boolean
      {
         var _loc2_:class_316 = class_368.name_9[param1] as class_316;
         return _loc2_ && _loc2_.var_10 > 0;
      }
   }
}
