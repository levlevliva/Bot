package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_123.class_1032;
   import package_14.class_47;
   import package_2.class_9;
   import package_214.class_1604;
   import package_23.class_42;
   import package_41.class_84;
   import package_5.class_12;
   import package_5.class_123;
   import package_9.class_91;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_19 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("BackgroundContainer");
       
      
      private var var_2294:BitmapData;
      
      private var var_477:Bitmap;
      
      public function class_19()
      {
         super();
         const_80.info("CONSTRUCTING");
         class_58.method_21().method_82("init background container");
         this.var_2294 = getSWFFinisher(class_123.const_57).getEmbeddedBitmapData("bgtile");
      }
      
      public final function method_2644() : void
      {
         var imgName:String = null;
         var requestFrame:URLRequest = null;
         var backGroundLoader:Loader = new Loader();
         switch(class_12.var_104)
         {
            case class_12.const_442:
               backGroundLoader.x = -100;
               backGroundLoader.y = -81;
               imgName = "frame_800x600.gif";
               this.method_591();
               break;
            case class_12.const_463:
               backGroundLoader.x = -83;
               backGroundLoader.y = -66;
               imgName = "frame_640x500.gif";
               this.method_591();
               break;
            case class_12.const_962:
               backGroundLoader.x = 0;
               backGroundLoader.y = 0;
               imgName = "frame_1024x768.gif";
               this.method_591();
               break;
            case class_12.const_943:
               backGroundLoader.x = 0;
               backGroundLoader.y = 0;
               imgName = "frame_1280x1024.gif";
               this.method_591();
               break;
            default:
               return;
         }
         var url:String = class_42.method_47("images/frames/" + imgName);
         requestFrame = new URLRequest(url);
         backGroundLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,function():void
         {
            const_80.info("LOADING COMPLETE background frame :" + requestFrame.url);
         });
         backGroundLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function():void
         {
            const_80.error("ERROR LOADING background frame :" + requestFrame.url);
         });
         const_80.info("LOADING background frame :" + requestFrame.url);
         backGroundLoader.load(requestFrame);
         class_47.method_24.method_122.addChildAt(backGroundLoader,0);
         class_47.method_24.method_122.addChildAt(this.var_477,0);
      }
      
      private final function method_591() : void
      {
         if(this.var_477 && this.var_477.parent)
         {
            this.var_477.parent.removeChild(this.var_477);
         }
         this.var_477 = class_122.method_1866(this.var_2294,2000,800,true,false,false);
         this.var_477.x = -class_47.method_272.container.x;
         this.var_477.y = -class_47.method_272.container.y;
         class_47.method_24.method_122.addChildAt(this.var_477,0);
      }
      
      public final function method_1968() : void
      {
         if(this.var_477 == null)
         {
            return;
         }
         this.var_477.x = -class_47.method_272.container.x;
         this.var_477.y = -class_47.method_272.container.y;
      }
   }
}
