package com.greensock.plugins
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.ScrollCostPopupController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.NotEnoughResourcesPopup;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_20.class_33;
   import package_206.class_1567;
   import package_34.class_116;
   import package_41.class_93;
   import package_45.class_110;
   
   public final class BevelFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1.0;
      
      private static var _propNames:Array = ["distance","angle","highlightColor","highlightAlpha","shadowColor","shadowAlpha","blurX","blurY","strength","quality"];
       
      
      public function BevelFilterPlugin()
      {
         super();
         this.propName = "bevelFilter";
         this.overwriteProps = ["bevelFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = BevelFilter;
         initFilter(param2,new BevelFilter(0,0,16777215,0.5,0,0.5,2,2,0,int(param2.quality) || 2),_propNames);
         return true;
      }
   }
}
