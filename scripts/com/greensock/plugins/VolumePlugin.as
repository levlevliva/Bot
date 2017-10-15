package com.greensock.plugins
{
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import com.greensock.TweenLite;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_14.class_47;
   import package_14.class_96;
   import package_147.class_885;
   import package_170.class_979;
   import package_41.class_93;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class VolumePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      public function VolumePlugin()
      {
         super();
         this.propName = "volume";
         this.overwriteProps = ["volume"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(isNaN(param2) || param1.hasOwnProperty("volume") || !param1.hasOwnProperty("soundTransform"))
         {
            return false;
         }
         this._target = param1;
         this._st = this._target.soundTransform;
         addTween(this._st,"volume",this._st.volume,param2,"volume");
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         this._target.soundTransform = this._st;
      }
   }
}
