package package_32
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicatorList;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import package_10.class_18;
   import package_10.class_38;
   import package_114.class_551;
   import package_14.class_47;
   import package_14.class_96;
   import package_15.class_48;
   import package_166.class_970;
   import package_170.class_979;
   import package_175.class_1593;
   import package_19.class_32;
   import package_216.class_1575;
   import package_26.class_52;
   import package_39.class_973;
   import package_49.class_880;
   import package_5.class_123;
   import package_5.class_22;
   import package_50.class_141;
   import package_51.class_148;
   import package_54.class_158;
   import package_54.class_162;
   import package_55.class_1008;
   import package_88.class_967;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_987;
   import package_97.class_986;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public final class class_338
   {
      
      private static var var_217:class_1245 = new class_1245();
      
      private static const const_1219:int = 300;
      
      public static const const_591:int = 700;
      
      private static const const_1874:int = 100;
       
      
      private var var_185:InteractiveObject;
      
      private var var_265:String = null;
      
      private var var_1285:String = null;
      
      private var var_1890:Boolean = false;
      
      private var var_543:Timer;
      
      private var var_1911:Boolean;
      
      private var var_2234:int;
      
      private var var_1240:Boolean = false;
      
      private var var_2210:class_338;
      
      public function class_338(param1:InteractiveObject, param2:String, param3:String, param4:Stage = null, param5:int = -1)
      {
         super();
         this.var_2234 = param5 == -1?int(const_591):int(param5);
         this.var_185 = param1;
         this.var_265 = param2;
         this.var_1285 = param3;
         if(this.var_185.mouseEnabled || param4 == null)
         {
            this.var_185.addEventListener(MouseEvent.ROLL_OVER,this.method_797);
            this.var_185.addEventListener(MouseEvent.ROLL_OUT,this.method_540);
            this.var_185.addEventListener(MouseEvent.MOUSE_DOWN,this.method_540);
         }
         else
         {
            param4.addEventListener(Event.ENTER_FRAME,this.method_2178,false,0,true);
         }
      }
      
      public static function method_2834(param1:TextFormat, param2:int) : void
      {
         var_217.name_88 = param1;
         var_217.mouseEnabled = false;
         if(var_217.width > const_1219)
         {
            var_217.width = const_1219;
            var_217.name_79.wordWrap = true;
         }
      }
      
      private final function method_2178(param1:Event) : void
      {
         var _loc2_:Boolean = this.var_185.mouseX >= 0 && this.var_185.mouseY >= 0 && this.var_185.mouseX < this.var_185.width && this.var_185.mouseY < this.var_185.height;
         if(this.var_1240 && !_loc2_)
         {
            this.var_1240 = false;
            this.method_540();
         }
         else if(!this.var_1240 && _loc2_)
         {
            this.var_1240 = true;
            this.method_797();
         }
      }
      
      private final function method_797(param1:MouseEvent = null) : void
      {
         if(!class_64.method_21().var_1927)
         {
            return;
         }
         this.var_543 = new Timer(this.var_2234,1);
         this.var_543.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_1538);
         this.var_543.start();
      }
      
      private final function method_540(param1:MouseEvent = null) : void
      {
         if(this.var_543 != null)
         {
            this.var_543.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_1538);
            this.var_543.stop();
            this.var_543 = null;
         }
         if(this.var_1911)
         {
            this.var_543 = new Timer(const_1874,1);
            this.var_543.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_780);
            this.var_543.start();
         }
      }
      
      private final function method_1538(param1:TimerEvent) : void
      {
         var _loc2_:class_162 = null;
         var _loc3_:class_967 = null;
         var _loc4_:Number = NaN;
         try
         {
            this.var_2210 = this;
            this.method_257();
            if(this.var_185 is class_967)
            {
               _loc3_ = this.var_185 as class_967;
               _loc4_ = _loc3_.method_1004();
               if(_loc4_ > 0)
               {
                  var_217.method_2530 = class_125.method_178(_loc4_) + class_22.const_10 + _loc3_.var_1907;
               }
            }
            var_217.x = this.var_185.stage.mouseX + 10;
            var_217.y = this.var_185.stage.mouseY - var_217.height - 10;
            if(var_217.x + var_217.width > class_47.method_24.var_12.validStageArea.right)
            {
               var_217.x = this.var_185.stage.mouseX - var_217.width - 10;
            }
            if(var_217.y - var_217.height < class_47.method_24.var_12.validStageArea.top)
            {
               var_217.y = this.var_185.stage.mouseY + 10;
            }
            _loc2_ = class_47.method_24.var_12.actionsBar.method_69(class_150.const_264);
            if(_loc2_.method_1550)
            {
               _loc2_.method_333(class_47.method_22.method_28("tooltip_actBar_repair",true,false),class_47.method_22.method_28("tooltip_actBar_repair_stop",true,false));
            }
            this.var_185.stage.addChild(var_217);
         }
         catch(e:Error)
         {
         }
         this.var_1911 = true;
      }
      
      private final function method_780(param1:TimerEvent) : void
      {
         try
         {
            this.var_543.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_780);
            this.var_185.stage.removeChild(var_217);
         }
         catch(e:Error)
         {
         }
         this.var_1911 = false;
      }
      
      public final function method_1348() : InteractiveObject
      {
         return this.var_185;
      }
      
      public final function method_1781() : void
      {
         try
         {
            this.var_185.removeEventListener(MouseEvent.ROLL_OVER,this.method_797);
            this.var_185.removeEventListener(MouseEvent.ROLL_OVER,this.method_540);
            this.var_185.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_540);
            this.method_780(null);
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public final function method_2975(param1:String) : void
      {
         this.var_265 = param1;
      }
      
      public final function method_257(param1:String = null, param2:String = null) : void
      {
         if(param1 != null)
         {
            this.var_265 = param1;
         }
         if(param2 != null)
         {
            this.var_1285 = param2;
         }
         var _loc3_:String = this.var_265;
         if(this.var_1285 != null)
         {
            if(this.var_1285.length > 0)
            {
               if(this.var_1890)
               {
                  _loc3_ = this.var_1285;
               }
            }
         }
         if(_loc3_ == null)
         {
            return;
         }
         if(this.var_2210 == this)
         {
            var_217.method_1534(_loc3_);
         }
      }
      
      public final function method_2220() : void
      {
         this.method_543 = !this.method_543;
      }
      
      public function get method_543() : Boolean
      {
         return this.var_1890;
      }
      
      public function set method_543(param1:Boolean) : void
      {
         this.var_1890 = param1;
         this.method_257();
      }
   }
}
