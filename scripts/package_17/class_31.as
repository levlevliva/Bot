package package_17
{
   import com.adobe.serialization.json.JSONTokenType;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_178;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.QuestWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.LevelColumn;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildAnnouncementListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.tabs.MateysMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.QuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.PurchaseCostComponent;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindow;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.AnimationManager;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_901;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_107.class_693;
   import package_122.class_428;
   import package_122.class_634;
   import package_127.class_486;
   import package_136.class_533;
   import package_136.class_926;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_225;
   import package_14.class_226;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_143.class_933;
   import package_16.class_28;
   import package_170.class_979;
   import package_177.class_1049;
   import package_18.class_855;
   import package_190.*;
   import package_20.class_33;
   import package_204.thiz;
   import package_25.class_295;
   import package_26.class_1319;
   import package_26.class_142;
   import package_29.class_166;
   import package_29.class_565;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_169;
   import package_36.class_100;
   import package_39.class_1366;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_1034;
   import package_42.class_959;
   import package_42.class_98;
   import package_43.class_106;
   import package_45.class_110;
   import package_46.class_1455;
   import package_46.class_1493;
   import package_47.class_757;
   import package_48.class_996;
   import package_5.class_1026;
   import package_5.class_123;
   import package_5.class_176;
   import package_5.class_41;
   import package_5.class_43;
   import package_50.class_141;
   import package_51.class_1355;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_161;
   import package_54.class_162;
   import package_56.class_170;
   import package_57.class_171;
   import package_58.class_175;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_515;
   import package_72.class_1442;
   import package_72.class_203;
   import package_76.class_279;
   import package_8.class_1240;
   import package_9.class_76;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_343;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.RichText;
   import spark.components.TitleWindow;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.effects.animation.SimpleMotionPath;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_31
   {
      
      private static const const_1580:int = 100;
      
      private static const const_1696:int = 100;
      
      private static var name_55:class_31;
       
      
      private var var_84:class_141;
      
      private var var_2007:Point;
      
      private var var_1456:Timer;
      
      private var var_1522:Boolean = false;
      
      private var var_1202:Bitmap;
      
      private var var_2096:int;
      
      private var var_905:Timer;
      
      public function class_31(param1:Function)
      {
         this.var_2096 = getTimer();
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
         class_58.method_21().method_82("init mapmouse control");
         this.name_16();
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_31
      {
         if(name_55 == null)
         {
            name_55 = new class_31(method_976);
         }
         return name_55;
      }
      
      private final function name_16() : void
      {
         this.var_84 = class_47.method_24.method_39;
         this.var_1202 = getSWFFinisher(class_123.const_21).getEmbeddedBitmap("cursor");
         this.var_1456 = new Timer(const_1580);
         this.var_1456.addEventListener(TimerEvent.TIMER,this.method_2777);
         class_41.name_3.addEventListener(class_142.const_116,this.method_1387);
         class_47.method_49.addEventListener(MouseEvent.CLICK,this.method_1429);
         class_47.method_49.addEventListener(Event.ACTIVATE,this.method_1429,false,-1);
         this.var_905 = new Timer(200,1);
      }
      
      private final function method_1387(param1:class_142) : void
      {
         switch(class_41.name_3.name_17)
         {
            case class_41.const_103:
               this.method_2104();
               break;
            default:
               this.method_2001();
         }
      }
      
      private final function method_2104() : void
      {
         this.var_84.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1464);
         this.var_84.addEventListener(MouseEvent.MOUSE_OVER,this.method_1173);
         this.var_84.addEventListener(MouseEvent.MOUSE_OUT,this.method_1242);
         this.var_84.addEventListener(MouseEvent.MOUSE_WHEEL,this.method_1503);
         this.var_84.addEventListener(MouseEvent.MOUSE_OUT,this.method_1531);
      }
      
      private final function method_2001() : void
      {
         this.var_84.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1464);
         this.var_84.removeEventListener(MouseEvent.MOUSE_OVER,this.method_1173);
         this.var_84.removeEventListener(MouseEvent.MOUSE_OUT,this.method_1242);
         this.var_84.removeEventListener(MouseEvent.MOUSE_WHEEL,this.method_1503);
         this.var_84.removeEventListener(MouseEvent.MOUSE_OUT,this.method_1531);
      }
      
      private final function method_1531(param1:MouseEvent) : void
      {
         class_29.method_21().method_1531();
      }
      
      private final function method_1503(param1:MouseEvent) : void
      {
         if(class_47.method_51.method_141(class_76.const_136))
         {
            return;
         }
         var _loc2_:* = param1.delta < 0;
         if(class_29.method_21().method_1681)
         {
            class_47.method_24.var_12.zoomMenu.method_2138(!_loc2_);
            return;
         }
         if(getTimer() - this.var_2096 < const_1696)
         {
            return;
         }
         this.var_2096 = getTimer();
         class_47.method_48.method_1333(_loc2_,param1.altKey);
      }
      
      private final function method_1173(param1:MouseEvent) : void
      {
         this.var_1456.start();
      }
      
      private final function method_1242(param1:MouseEvent) : void
      {
         this.var_1456.stop();
         this.method_1570();
      }
      
      private final function method_2777(param1:TimerEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:class_98 = null;
         var _loc6_:Object = null;
         var _loc7_:* = null;
         var _loc2_:Object = class_47.method_29.method_282();
         var _loc3_:Boolean = false;
         for(_loc4_ in _loc2_)
         {
            _loc5_ = _loc2_[_loc4_] as class_98;
            if(_loc5_.method_283(this.var_84.method_270(),this.var_84.method_260()))
            {
               if(_loc5_ == class_47.method_29.method_75)
               {
                  continue;
               }
               if((_loc2_[_loc4_] as class_100).method_33.var_685)
               {
                  continue;
               }
               _loc3_ = true;
               break;
            }
         }
         if(!_loc3_)
         {
            _loc6_ = class_47.method_165.method_886();
            for(_loc7_ in _loc6_)
            {
               if((_loc6_[_loc7_] as class_98).method_283(this.var_84.method_270(),this.var_84.method_260()))
               {
                  _loc3_ = true;
                  break;
               }
            }
         }
         if(class_47.method_29.method_75.method_283(this.var_84.method_270(),this.var_84.method_260()))
         {
            _loc3_ = false;
         }
         if(_loc3_)
         {
            this.method_2844();
         }
         else
         {
            this.method_1570();
         }
      }
      
      private final function method_2844() : void
      {
         if(this.var_1522)
         {
            return;
         }
         Mouse.hide();
         this.var_1522 = true;
         this.var_84.stage.addChild(this.var_1202);
         this.var_84.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.method_883);
         this.method_883(null);
      }
      
      private final function method_1570() : void
      {
         if(!this.var_1522)
         {
            return;
         }
         this.var_1522 = false;
         Mouse.show();
         try
         {
            this.var_84.stage.removeChild(this.var_1202);
         }
         catch(e:Error)
         {
         }
         this.var_84.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_883);
      }
      
      private final function method_883(param1:MouseEvent) : void
      {
         this.var_1202.x = this.var_84.stage.mouseX;
         this.var_1202.y = this.var_84.stage.mouseY;
      }
      
      private final function method_1429(param1:Event) : void
      {
         var _loc2_:Object = param1.target;
         if(_loc2_ is TextField || _loc2_ is Group || _loc2_ is UIComponent)
         {
            return;
         }
         class_47.method_49.focus = null;
      }
      
      private final function method_1464(param1:MouseEvent) : void
      {
         if(!class_29.method_21().method_2298)
         {
            this.var_84.addEventListener(MouseEvent.CLICK,this.method_1347);
            return;
         }
         var _loc2_:Number = class_47.method_24.method_39.method_117;
         this.var_84.removeEventListener(MouseEvent.CLICK,this.method_1347);
         this.var_2007 = new Point(this.var_84.method_2515() / _loc2_ + this.var_84.mouseX,this.var_84.method_2816() / _loc2_ + this.var_84.mouseY);
         class_47.method_49.addEventListener(MouseEvent.MOUSE_MOVE,this.method_1279);
         class_47.method_49.addEventListener(MouseEvent.MOUSE_UP,this.method_1566);
         class_37.method_21().method_466();
      }
      
      private final function method_1279(param1:MouseEvent) : void
      {
         class_37.method_21().method_495(this.var_2007.x - this.var_84.mouseX,this.var_2007.y - this.var_84.mouseY);
      }
      
      private final function method_1566(param1:MouseEvent) : void
      {
         class_47.method_49.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_1279);
         class_47.method_49.removeEventListener(MouseEvent.MOUSE_UP,this.method_1566);
      }
      
      private final function method_1347(param1:MouseEvent) : void
      {
         var shipVO:class_174 = null;
         var event:MouseEvent = param1;
         var checkDoubleClick:Function = function():Boolean
         {
            if(var_905.running)
            {
               var_905.dispatchEvent(new TimerEvent(TimerEvent.TIMER));
               return true;
            }
            var_905.start();
            var_905.addEventListener(TimerEvent.TIMER,function(param1:Event):void
            {
               var_905.removeEventListener(TimerEvent.TIMER,arguments["callee"]);
               var_905.stop();
            });
            return false;
         };
         if(event.altKey)
         {
            this.method_2457();
            return;
         }
         shipVO = class_47.method_29.method_56;
         var isAxnAllow:Boolean = !(shipVO.var_712 && shipVO.var_1625 == class_176.const_382);
         var isDblClick:Boolean = checkDoubleClick() && class_47.method_48.var_1979;
         var selection:Boolean = false;
         if(!class_47.method_29.method_75.method_283(this.var_84.method_270(),this.var_84.method_260()))
         {
            selection = this.method_2500(isDblClick && isAxnAllow) || this.method_2829(isDblClick && isAxnAllow);
         }
         if(!isAxnAllow && (!selection || selection && isDblClick))
         {
            class_170.method_188("maat_noaction",[]);
            return;
         }
         var xx:int = class_47.method_206.x;
         var yy:int = class_47.method_206.y;
         var valid:Boolean = !class_47.method_51.method_362(xx,yy);
         if(!selection && this.var_84.method_1258(xx,yy,valid) && valid)
         {
            this.method_1425(class_47.method_206.x,class_47.method_206.y);
         }
      }
      
      public final function method_1425(param1:int, param2:int) : void
      {
         class_169.name_3.method_627(param1,param2);
         this.method_1873();
      }
      
      private final function method_2457() : void
      {
         var _loc2_:* = null;
         var _loc3_:class_100 = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc1_:Object = class_47.method_29.method_282();
         for(_loc2_ in _loc1_)
         {
            if((_loc1_[_loc2_] as class_98).method_283(this.var_84.method_270(),this.var_84.method_260()))
            {
               _loc3_ = _loc1_[_loc2_] as class_100;
               _loc4_ = _loc3_.method_349().length > 0?"[" + _loc3_.method_349() + "]":"";
               _loc5_ = _loc3_.method_27();
               _loc6_ = class_177.method_90(_loc3_.method_104());
               class_47.method_24.var_12.chatWindow.method_1532(_loc4_ + " " + _loc5_ + " " + _loc6_);
            }
         }
      }
      
      private final function method_1873() : void
      {
         var _loc2_:class_171 = null;
         var _loc1_:Array = class_47.method_29.method_482(class_51.var_21);
         for each(_loc2_ in _loc1_)
         {
            try
            {
               _loc2_.method_706(class_47.method_206.x,class_47.method_206.y);
            }
            catch(e:TypeError)
            {
               continue;
            }
         }
      }
      
      private final function method_2500(param1:Boolean) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:class_100 = null;
         var _loc5_:Boolean = false;
         var _loc2_:Object = class_47.method_29.method_282();
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_] as class_100;
            if(_loc4_.method_283(this.var_84.method_270(),this.var_84.method_260()))
            {
               if(_loc4_ != class_47.method_29.method_75)
               {
                  _loc5_ = class_47.method_48.method_187(_loc4_,true);
                  if(!_loc5_)
                  {
                     return false;
                  }
                  class_47.method_48.dispatchEvent(new class_178(class_178.const_833,_loc4_));
                  if(param1)
                  {
                     class_47.method_48.method_572();
                  }
                  return true;
               }
            }
         }
         return false;
      }
      
      private final function method_2829(param1:Boolean) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:class_175 = null;
         var _loc2_:Object = class_47.method_165.method_886();
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_] as class_175;
            if(_loc4_.method_283(this.var_84.method_270(),this.var_84.method_260()))
            {
               if(!class_47.method_48.method_187(_loc4_))
               {
                  return false;
               }
               if(param1)
               {
                  class_47.method_48.method_572();
               }
               return true;
            }
         }
         return false;
      }
      
      public function get method_39() : class_141
      {
         return this.var_84;
      }
   }
}
