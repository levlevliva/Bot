package package_43
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.DragInteraction;
   import com.bigpoint.seafight.tools.dragging.DragManager;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsList;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.tabs.PlayerProfileView;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.LinearGradientStroke;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_14.class_47;
   import package_14.class_94;
   import package_142.class_541;
   import package_143.class_706;
   import package_143.class_933;
   import package_15.class_273;
   import package_15.class_78;
   import package_151.class_905;
   import package_152.class_664;
   import package_170.class_979;
   import package_185.class_1136;
   import package_197.class_1197;
   import package_26.class_1086;
   import package_26.class_969;
   import package_30.class_62;
   import package_34.class_1499;
   import package_34.class_73;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_48.class_138;
   import package_92.class_995;
   import spark.components.Group;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class class_269 extends class_78
   {
      
      private static const const_1684:int = 8.64E7;
       
      
      private var var_1205:class_1197;
      
      public function class_269(param1:class_273)
      {
         super();
         this.var_1205 = param1.var_1853;
         method_35(this.var_1205);
      }
      
      public final function method_2967() : Object
      {
         return super.method_38();
      }
      
      override protected function method_1182() : Object
      {
         var _loc1_:class_706 = this.var_1205.name_8;
         if(_loc1_)
         {
            return _loc1_.var_848;
         }
         return null;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1205);
         this.var_1205.method_36();
      }
      
      public final function method_2002(param1:int) : int
      {
         var _loc2_:Number = this.getRemainingMillisecondsForId(param1) / const_1684;
         return Math.max(0,Math.ceil(_loc2_));
      }
      
      private final function getRemainingMillisecondsForId(param1:int) : Number
      {
         var _loc2_:class_933 = this.method_904(param1);
         if(_loc2_ == null)
         {
            return 0;
         }
         var _loc3_:Number = new Date().time;
         var _loc4_:Number = _loc2_.var_817 - _loc3_;
         return _loc4_;
      }
      
      public final function method_1783(param1:int) : Number
      {
         var _loc2_:class_933 = this.method_904(param1);
         return !!_loc2_?Number(_loc2_.var_1377):Number(0);
      }
      
      public final function method_2713(param1:int) : Number
      {
         var _loc2_:class_933 = this.method_904(param1);
         return !!_loc2_?Number(_loc2_.var_817):Number(0);
      }
      
      private final function method_904(param1:int) : class_933
      {
         var _loc5_:class_933 = null;
         var _loc2_:Vector.<class_933> = this.method_38() as Vector.<class_933>;
         var _loc3_:int = !!_loc2_?int(_loc2_.length):0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_[_loc4_];
            if(_loc5_.var_13 == param1)
            {
               return _loc5_;
            }
            _loc4_++;
         }
         return null;
      }
   }
}
