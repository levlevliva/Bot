package com.greensock.plugins
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameGlobalRankingModuleSimple;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.bit101.components.ColorChooser;
   import com.greensock.TweenLite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_143.class_933;
   import package_34.class_1499;
   import package_92.class_944;
   import package_92.class_962;
   import package_98.class_777;
   
   public final class AutoAlphaPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _target:Object;
      
      protected var _ignoreVisible:Boolean;
      
      public function AutoAlphaPlugin()
      {
         super();
         this.propName = "autoAlpha";
         this.overwriteProps = ["alpha","visible"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         this._target = param1;
         addTween(param1,"alpha",param1.alpha,param2,"alpha");
         return true;
      }
      
      override public function killProps(param1:Object) : void
      {
         super.killProps(param1);
         this._ignoreVisible = Boolean("visible" in param1);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         if(!this._ignoreVisible)
         {
            this._target.visible = Boolean(this._target.alpha != 0);
         }
      }
   }
}
