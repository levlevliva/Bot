package package_30
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.commands.IDragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.EventPopupController;
   import com.bigpoint.seafight.view.popups.event.component.EventPopup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import com.soenkerohde.logging.SOSLoggingTarget;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_47;
   import package_14.class_51;
   import package_210.class_1474;
   import package_34.class_73;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_975;
   import package_48.class_1443;
   import package_5.class_43;
   import package_51.class_974;
   import package_72.class_1075;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_62
   {
      
      private static var name_55:class_62;
       
      
      private var var_351:class_337;
      
      private var var_380:Stage;
      
      private var var_1141:Vector.<class_337>;
      
      public function class_62(param1:Key_4305)
      {
         super();
         if(!param1)
         {
            throw new Error("Singleton key is missing");
         }
      }
      
      public static function get name_3() : class_62
      {
         if(!name_55)
         {
            name_55 = new class_62(new Key_4305());
         }
         return name_55;
      }
      
      public final function name_23(param1:Stage) : void
      {
         this.var_380 = param1;
         this.var_1141 = new Vector.<class_337>();
         this.var_380.addEventListener(Event.ENTER_FRAME,this.method_1028);
      }
      
      public final function method_64() : void
      {
         this.var_380.removeEventListener(Event.ENTER_FRAME,this.method_1028);
         this.var_380 = null;
      }
      
      public final function method_200(param1:class_337, param2:Number) : void
      {
         var _loc3_:class_337 = null;
         var _loc4_:class_337 = null;
         var _loc5_:Boolean = false;
         param1.var_745 = getTimer() + param2;
         if(this.var_351)
         {
            if(this.var_351.var_745 > param1.var_745)
            {
               param1.var_415 = this.var_351;
               this.var_351 = param1;
            }
            else
            {
               _loc3_ = this.var_351;
               _loc4_ = this.var_351.var_415;
               _loc5_ = false;
               while(_loc4_)
               {
                  if(param1.var_745 >= _loc3_.var_745 && param1.var_745 < _loc4_.var_745)
                  {
                     _loc5_ = true;
                     _loc3_.var_415 = param1;
                     param1.var_415 = _loc4_;
                     break;
                  }
                  _loc3_ = _loc4_;
                  _loc4_ = _loc4_.var_415;
               }
               if(!_loc5_)
               {
                  _loc3_.var_415 = param1;
               }
            }
         }
         else
         {
            this.var_351 = param1;
         }
      }
      
      public final function method_453(param1:class_337) : void
      {
         var _loc2_:class_337 = null;
         var _loc3_:class_337 = null;
         if(param1 && this.var_351)
         {
            if(this.var_351 == param1)
            {
               this.var_351 = this.var_351.var_415;
            }
            else
            {
               _loc2_ = this.var_351;
               _loc3_ = _loc2_.var_415;
               while(_loc3_)
               {
                  if(_loc3_ == param1)
                  {
                     _loc2_.var_415 = _loc3_.var_415;
                  }
                  _loc2_ = _loc3_;
                  _loc3_ = _loc3_.var_415;
               }
            }
         }
      }
      
      private final function method_1028(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:class_337 = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this.var_351)
         {
            this.var_1141.length = 0;
            _loc2_ = getTimer();
            _loc3_ = this.var_351;
            while(_loc3_)
            {
               if(_loc2_ > _loc3_.var_745)
               {
                  this.var_1141.push(_loc3_);
                  _loc3_ = _loc3_.var_415;
                  continue;
               }
               break;
            }
            this.var_351 = _loc3_;
            _loc4_ = this.var_1141.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this.var_1141[_loc5_].var_415 = null;
               this.var_1141[_loc5_].method_1454();
               _loc5_++;
            }
         }
      }
   }
}

class Key_4305
{
    
   
   function Key_4305()
   {
      super();
   }
}
