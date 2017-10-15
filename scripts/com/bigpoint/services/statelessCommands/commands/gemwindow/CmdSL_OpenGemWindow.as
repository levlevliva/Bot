package com.bigpoint.services.statelessCommands.commands.gemwindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.gempopup.GemWindowNaviController;
   import com.bigpoint.seafight.view.popups.gempopup.GemWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_49;
   import package_15.class_48;
   import package_170.class_979;
   import package_179.class_1064;
   import package_181.class_1081;
   import package_20.class_33;
   import package_26.class_1061;
   import package_26.class_1088;
   import package_41.class_84;
   import package_43.class_272;
   import package_45.class_110;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_43;
   import package_51.class_974;
   import package_69.class_1610;
   import package_69.class_978;
   import package_84.class_270;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenGemWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenGemWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_416);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = GemWindowNaviPopup;
         _loc3_.var_51 = SafeHavenGuildWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = GemWindowNaviController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 828;
         _loc3_.var_31 = 470;
         _loc3_.var_67 = class_110.const_416;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
