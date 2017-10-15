package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildPendingMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_607;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_847;
   import net.bigpoint.seafight.com.module.guild.class_929;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_602;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_51;
   import package_15.class_273;
   import package_152.class_801;
   import package_16.class_28;
   import package_166.class_961;
   import package_167.class_1022;
   import package_17.class_37;
   import package_18.class_530;
   import package_214.class_1556;
   import package_216.class_1575;
   import package_26.class_142;
   import package_29.class_57;
   import package_32.class_64;
   import package_34.class_1576;
   import package_36.class_100;
   import package_41.class_84;
   import package_5.class_214;
   import package_5.class_41;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_90.class_316;
   import package_90.class_481;
   import package_92.class_335;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_221 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("MapScroll");
       
      
      private var var_45:int;
      
      private var var_684:int;
      
      private var var_546:Number;
      
      private var var_1834:Boolean;
      
      private var var_159:class_37;
      
      private var var_102:UserInterface;
      
      private var var_18:XML;
      
      private var var_301:Sprite;
      
      private var var_290:Sprite;
      
      private var var_295:Sprite;
      
      private var var_298:Sprite;
      
      private var var_243:Sprite;
      
      private var var_247:Sprite;
      
      private var var_244:Sprite;
      
      private var var_239:Sprite;
      
      public function class_221(param1:UserInterface)
      {
         this.var_159 = class_37.method_21();
         this.var_301 = new Sprite();
         this.var_290 = new Sprite();
         this.var_295 = new Sprite();
         this.var_298 = new Sprite();
         this.var_243 = new Sprite();
         this.var_247 = new Sprite();
         this.var_244 = new Sprite();
         this.var_239 = new Sprite();
         super();
         const_80.info("CONSTRUCTING");
         this.var_102 = param1;
         this.name_16();
      }
      
      private final function name_16() : void
      {
         this.var_18 = this.var_102.getUIConfig()["scrollBars"][0];
         this.var_45 = this.var_18.@size;
         this.var_546 = this.var_18.@alpha;
         this.var_684 = this.var_18.@color;
         this.var_1834 = this.var_18.@overEffect;
         this.visible = this.var_18.@visible;
         addChild(this.var_301);
         addChild(this.var_290);
         addChild(this.var_295);
         addChild(this.var_298);
         addChild(this.var_243);
         addChild(this.var_244);
         addChild(this.var_247);
         addChild(this.var_239);
         var _loc1_:String = "tooltip_scrollBars_";
         var _loc2_:class_64 = class_64.method_21();
         _loc2_.method_84(this.var_295,class_13.method_78(_loc1_ + "n"));
         _loc2_.method_84(this.var_247,class_13.method_78(_loc1_ + "no"));
         _loc2_.method_84(this.var_290,class_13.method_78(_loc1_ + "o"));
         _loc2_.method_84(this.var_239,class_13.method_78(_loc1_ + "so"));
         _loc2_.method_84(this.var_298,class_13.method_78(_loc1_ + "s"));
         _loc2_.method_84(this.var_244,class_13.method_78(_loc1_ + "sw"));
         _loc2_.method_84(this.var_301,class_13.method_78(_loc1_ + "w"));
         _loc2_.method_84(this.var_243,class_13.method_78(_loc1_ + "nw"));
         class_41.name_3.addEventListener(class_142.const_116,this.method_1387);
         this.method_34();
         this.method_1387();
      }
      
      public final function method_467(param1:Boolean) : void
      {
         this.visible = param1;
      }
      
      public final function method_34() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = class_51.var_39;
         _loc2_ = class_51.var_40;
         this.var_301.graphics.clear();
         this.var_301.graphics.beginFill(this.var_684,1);
         this.var_301.graphics.moveTo(0,this.var_45 * 2);
         this.var_301.graphics.lineTo(this.var_45,this.var_45 * 2);
         this.var_301.graphics.lineTo(this.var_45,_loc2_ - this.var_45 * 2);
         this.var_301.graphics.lineTo(0,_loc2_ - this.var_45 * 2);
         this.var_301.graphics.endFill();
         this.var_301.alpha = this.var_546;
         this.var_290.graphics.clear();
         this.var_290.graphics.beginFill(this.var_684,1);
         this.var_290.graphics.moveTo(_loc1_,this.var_45 * 2);
         this.var_290.graphics.lineTo(_loc1_ - this.var_45,this.var_45 * 2);
         this.var_290.graphics.lineTo(_loc1_ - this.var_45,_loc2_ - this.var_45 * 2);
         this.var_290.graphics.lineTo(_loc1_,_loc2_ - this.var_45 * 2);
         this.var_290.graphics.endFill();
         this.var_290.alpha = this.var_546;
         this.var_295.graphics.clear();
         this.var_295.graphics.beginFill(this.var_684,1);
         this.var_295.graphics.moveTo(this.var_45 * 2,0);
         this.var_295.graphics.lineTo(_loc1_ - this.var_45 * 2,0);
         this.var_295.graphics.lineTo(_loc1_ - this.var_45 * 2,this.var_45);
         this.var_295.graphics.lineTo(this.var_45 * 2,this.var_45);
         this.var_295.graphics.endFill();
         this.var_295.alpha = this.var_546;
         this.var_298.graphics.clear();
         this.var_298.graphics.beginFill(this.var_684,1);
         this.var_298.graphics.moveTo(this.var_45 * 2,_loc2_);
         this.var_298.graphics.lineTo(this.var_45 * 2,_loc2_ - this.var_45);
         this.var_298.graphics.lineTo(_loc1_ - this.var_45 * 2,_loc2_ - this.var_45);
         this.var_298.graphics.lineTo(_loc1_ - this.var_45 * 2,_loc2_);
         this.var_298.graphics.endFill();
         this.var_298.alpha = this.var_546;
         this.var_243.graphics.clear();
         this.var_243.graphics.beginFill(this.var_684,1);
         this.var_243.graphics.moveTo(0,0);
         this.var_243.graphics.lineTo(0,this.var_45 * 2);
         this.var_243.graphics.lineTo(this.var_45,this.var_45 * 2);
         this.var_243.graphics.lineTo(this.var_45,this.var_45);
         this.var_243.graphics.lineTo(this.var_45 * 2,this.var_45);
         this.var_243.graphics.lineTo(this.var_45 * 2,0);
         this.var_243.graphics.endFill();
         this.var_243.alpha = this.var_546;
         this.var_244.graphics.clear();
         this.var_244.graphics.beginFill(this.var_684,1);
         this.var_244.graphics.moveTo(0,_loc2_ - this.var_45 * 2);
         this.var_244.graphics.lineTo(0,_loc2_);
         this.var_244.graphics.lineTo(this.var_45 * 2,_loc2_);
         this.var_244.graphics.lineTo(this.var_45 * 2,_loc2_ - this.var_45);
         this.var_244.graphics.lineTo(this.var_45,_loc2_ - this.var_45);
         this.var_244.graphics.lineTo(this.var_45,_loc2_ - this.var_45 * 2);
         this.var_244.graphics.endFill();
         this.var_244.alpha = this.var_546;
         this.var_247.graphics.clear();
         this.var_247.graphics.beginFill(this.var_684,1);
         this.var_247.graphics.moveTo(_loc1_ - this.var_45 * 2,0);
         this.var_247.graphics.lineTo(_loc1_,0);
         this.var_247.graphics.lineTo(_loc1_,this.var_45 * 2);
         this.var_247.graphics.lineTo(_loc1_ - this.var_45,this.var_45 * 2);
         this.var_247.graphics.lineTo(_loc1_ - this.var_45,this.var_45);
         this.var_247.graphics.lineTo(_loc1_ - this.var_45 * 2,this.var_45);
         this.var_247.graphics.endFill();
         this.var_247.alpha = this.var_546;
         this.var_239.graphics.clear();
         this.var_239.graphics.beginFill(this.var_684,1);
         this.var_239.graphics.moveTo(_loc1_ - this.var_45 * 2,_loc2_);
         this.var_239.graphics.lineTo(_loc1_,_loc2_);
         this.var_239.graphics.lineTo(_loc1_,_loc2_ - this.var_45 * 2);
         this.var_239.graphics.lineTo(_loc1_ - this.var_45,_loc2_ - this.var_45 * 2);
         this.var_239.graphics.lineTo(_loc1_ - this.var_45,_loc2_ - this.var_45);
         this.var_239.graphics.lineTo(_loc1_ - this.var_45 * 2,_loc2_ - this.var_45);
         this.var_239.graphics.endFill();
         this.var_239.alpha = this.var_546;
      }
      
      private final function method_1387(param1:class_142 = null) : void
      {
         if(class_41.name_3.name_17 == class_41.const_103)
         {
            this.method_2104();
         }
         else
         {
            this.method_2001();
         }
      }
      
      private final function method_2104() : void
      {
         this.var_301.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1158);
         this.var_290.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1442);
         this.var_295.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1579);
         this.var_298.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1358);
         this.var_243.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1255);
         this.var_244.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1573);
         this.var_247.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1111);
         this.var_239.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1066);
         if(this.var_1834)
         {
            this.var_301.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_301.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_290.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_290.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_295.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_295.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_298.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_298.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_243.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_243.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_244.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_244.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_247.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_247.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_239.addEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_239.addEventListener(MouseEvent.MOUSE_OUT,this.method_169);
         }
      }
      
      private final function method_2001() : void
      {
         this.var_301.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1158);
         this.var_290.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1442);
         this.var_295.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1579);
         this.var_298.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1358);
         this.var_243.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1255);
         this.var_244.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1573);
         this.var_247.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1111);
         this.var_239.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_1066);
         if(this.var_1834)
         {
            this.var_301.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_301.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_290.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_290.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_295.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_295.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_298.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_298.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_243.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_243.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_244.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_244.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_247.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_247.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
            this.var_239.removeEventListener(MouseEvent.MOUSE_OVER,this.method_171);
            this.var_239.removeEventListener(MouseEvent.MOUSE_OUT,this.method_169);
         }
      }
      
      private final function method_171(param1:MouseEvent) : void
      {
         (param1.target as DisplayObject).alpha = this.var_546 + 0.05;
      }
      
      private final function method_169(param1:MouseEvent) : void
      {
         (param1.target as DisplayObject).alpha = this.var_546;
      }
      
      private final function method_1158(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1418);
         this.var_159.method_596();
      }
      
      private final function method_1418(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1418);
         this.var_159.method_570();
      }
      
      private final function method_1442(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1210);
         this.var_159.method_677();
      }
      
      private final function method_1210(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1210);
         this.var_159.method_652();
      }
      
      private final function method_1579(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1409);
         this.var_159.method_651();
      }
      
      private final function method_1409(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1409);
         this.var_159.method_648();
      }
      
      private final function method_1358(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1019);
         this.var_159.method_692();
      }
      
      private final function method_1019(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1019);
         this.var_159.method_583();
      }
      
      private final function method_1255(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1142);
         this.var_159.method_651();
         this.var_159.method_596();
      }
      
      private final function method_1142(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1142);
         this.var_159.method_648();
         this.var_159.method_570();
      }
      
      private final function method_1573(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1439);
         this.var_159.method_692();
         this.var_159.method_596();
      }
      
      private final function method_1439(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1439);
         this.var_159.method_583();
         this.var_159.method_570();
      }
      
      private final function method_1111(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1148);
         this.var_159.method_651();
         this.var_159.method_677();
      }
      
      private final function method_1148(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1148);
         this.var_159.method_648();
         this.var_159.method_652();
      }
      
      private final function method_1066(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_UP,this.method_1225);
         this.var_159.method_692();
         this.var_159.method_677();
      }
      
      private final function method_1225(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.method_1225);
         this.var_159.method_583();
         this.var_159.method_652();
      }
   }
}
