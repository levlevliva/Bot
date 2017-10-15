package package_15
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.CrewInventory;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.greensock.TweenMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_552;
   import package_108.class_596;
   import package_108.class_755;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_94;
   import package_152.class_664;
   import package_2.class_9;
   import package_27.class_53;
   import package_29.class_143;
   import package_29.class_144;
   import package_30.class_62;
   import package_34.class_1499;
   import package_34.class_1526;
   import package_41.class_84;
   import package_42.class_98;
   import package_46.class_1224;
   import package_48.class_138;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_6.class_14;
   import package_8.class_1315;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class class_27 extends EventDispatcher
   {
       
      
      private var var_1212:Array;
      
      public function class_27()
      {
         super();
         this.var_1212 = [];
      }
      
      public final function method_30(param1:int, param2:class_9) : void
      {
         var _loc3_:Vector.<class_9> = this.method_716(param1);
         if(_loc3_.indexOf(param2) == -1)
         {
            _loc3_.push(param2);
         }
      }
      
      public final function method_1478(param1:int, param2:class_9) : void
      {
         var _loc5_:class_9 = null;
         var _loc3_:Vector.<class_9> = this.method_716(param1);
         var _loc4_:int = _loc3_.indexOf(param2);
         if(_loc4_ != -1)
         {
            _loc5_ = _loc3_.pop();
            if(param2 != _loc5_)
            {
               _loc3_[_loc4_] = _loc5_;
            }
         }
      }
      
      protected final function method_188(param1:class_14) : Boolean
      {
         var handler:class_9 = null;
         var message:class_14 = param1;
         var handlers:Vector.<class_9> = this.method_716(message.method_16());
         if(handlers.length <= 0)
         {
            return false;
         }
         var i:int = handlers.length - 1;
         while(i >= 0)
         {
            handler = handlers[i];
            try
            {
               handler.method_248(message);
            }
            catch(error:Error)
            {
               class_144.method_1300(error,class_143.const_1089,"Error in handler " + handler);
            }
            i--;
         }
         return true;
      }
      
      private final function method_716(param1:int) : Vector.<class_9>
      {
         var _loc2_:Vector.<class_9> = this.var_1212[param1];
         if(_loc2_ == null)
         {
            _loc2_ = this.var_1212[param1] = new Vector.<class_9>();
         }
         return _loc2_;
      }
   }
}
