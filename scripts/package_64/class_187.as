package package_64
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.ScalePlugin;
   import com.greensock.plugins.ScrollRectPlugin;
   import com.greensock.plugins.SoundTransformPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.system.Security;
   import flash.utils.IDataInput;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.managers.ToolTipManager;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import package_10.class_38;
   import package_14.class_51;
   import package_20.class_109;
   import package_23.class_39;
   import package_27.class_53;
   import package_41.class_93;
   import package_5.class_22;
   import package_9.class_17;
   import package_9.class_91;
   import spark.primitives.BitmapImage;
   
   public final class class_187 extends class_109
   {
       
      
      private const const_2847:String = "blitz_fx";
      
      private const const_1961:String = "blitz_fx_loadEvent";
      
      private var var_2264:MovieClip;
      
      public function class_187()
      {
         super();
         this.method_973();
      }
      
      public function get method_179() : MovieClip
      {
         return this.var_2264;
      }
      
      private final function method_973(param1:Event = null) : void
      {
         var _loc2_:class_53 = class_53.method_21();
         if(!_loc2_.method_382("blitz_fx"))
         {
            _loc2_.addEventListener("blitz_fx_loadEvent",this.method_973);
            _loc2_.method_195(["blitz_fx"],"blitz_fx_loadEvent");
            return;
         }
         _loc2_.removeEventListener("blitz_fx_loadEvent",this.method_973);
         this.var_2264 = class_53.method_1973("blitz_fx");
      }
   }
}
