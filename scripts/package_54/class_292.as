package package_54
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_461;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_101.class_511;
   import package_14.class_47;
   import package_14.class_88;
   import package_190.class_1181;
   import package_20.class_33;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_565;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_5.class_1047;
   import package_51.class_974;
   import package_52.class_1227;
   import package_80.class_1169;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.IndexChangeEvent;
   
   public class class_292 extends class_159
   {
       
      
      public function class_292(param1:MovieClip)
      {
         super(param1);
      }
      
      override protected function method_416(param1:MouseEvent) : void
      {
         var_130.gotoAndStop(1);
      }
      
      override protected function method_352(param1:MouseEvent) : void
      {
         var_130.gotoAndStop(2);
      }
      
      override protected function method_452(param1:MouseEvent) : void
      {
         var_130.gotoAndStop(2);
      }
      
      override protected function method_393(param1:MouseEvent) : void
      {
         var_130.gotoAndStop(3);
      }
   }
}
