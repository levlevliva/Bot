package package_54
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1452;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1305;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.CurrencyWindowController;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.RankIconComboBoxListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkinInnerClass0;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_127.class_870;
   import package_14.class_231;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_87;
   import package_147.class_572;
   import package_16.class_28;
   import package_17.class_147;
   import package_17.class_304;
   import package_17.class_37;
   import package_183.class_1454;
   import package_20.class_33;
   import package_204.class_1303;
   import package_211.class_1369;
   import package_34.class_1499;
   import package_34.class_73;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_948;
   import package_45.class_110;
   import package_49.class_137;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_148;
   import package_51.class_974;
   import package_52.class_168;
   import package_6.class_14;
   import package_92.class_944;
   import package_99.class_810;
   import spark.components.Group;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.effects.Rotate3D;
   import spark.effects.easing.Elastic;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public class class_161 extends class_160
   {
      
      public namespace const_2685 = "com.bigpoint.seafight.view.userInterface.widgets.buttons:ActionBtn/actionbutton";
       
      
      protected var var_401:class_320;
      
      protected var var_587:Boolean = true;
      
      private var var_2399:Boolean = false;
      
      private var var_1007:Boolean = false;
      
      private var var_304:DisplayObject;
      
      private var var_2366:int;
      
      private var var_2338:Boolean = false;
      
      private var var_1783:Boolean;
      
      private var var_1941:Boolean = false;
      
      public var var_2497:Boolean = false;
      
      public var var_2182:String = null;
      
      public var var_2472:String = null;
      
      public var var_2453:String = null;
      
      public function class_161(param1:MovieClip)
      {
         super(param1);
         addEventListener(MouseEvent.CLICK,this.method_315,false,100);
         addEventListener(MouseEvent.ROLL_OVER,this.method_1253);
         this.mouseEnabled = false;
      }
      
      public final function method_162(param1:String, param2:int = 0, param3:int = -1) : void
      {
         if(!this.var_401)
         {
            this.var_401 = new class_320();
         }
         this.var_401.name_5 = param1;
         this.var_401.name_7 = param2;
         this.var_401.var_1295 = param3;
      }
      
      public final function method_642(param1:class_320) : void
      {
         this.var_401 = param1;
      }
      
      public final function method_58() : class_320
      {
         if(!this.var_401)
         {
            return null;
         }
         return this.var_401;
      }
      
      public final function method_400(param1:XML = null, param2:MovieClip = null, param3:Boolean = true) : void
      {
         this.var_2399 = true;
         this.var_1783 = param3;
         if(this.var_304)
         {
            removeChild(this.var_304);
         }
         if(param2)
         {
            this.var_304 = addChild(param2);
            this.var_304.x = (var_130.width - param2.width) * 0.5;
            this.var_304.y = (var_130.height - param2.height) * 0.5;
            this.var_304.visible = false;
            if(param1)
            {
               this.var_304.x = param1.@xPos;
               this.var_304.y = param1.@yPos;
               this.var_2366 = param1.@rotation;
               this.var_2338 = true;
               this.var_304.visible = true;
            }
         }
      }
      
      function method_315(param1:MouseEvent) : void
      {
         var _loc3_:String = null;
         if(!this.var_587)
         {
            return;
         }
         if(param1)
         {
            param1.stopPropagation();
         }
         var _loc2_:class_148 = new class_148(class_148.const_13);
         if(!this.var_2399)
         {
            _loc2_.name_22 = this.var_401;
         }
         else if(!this.var_1007)
         {
            _loc2_.name_22 = this.var_401;
            if(this.var_1783)
            {
               this.method_70(true);
            }
         }
         else
         {
            _loc3_ = this.var_401.name_5;
            _loc2_.name_22.name_5 = _loc3_ + "_switchBack";
            _loc2_.name_22.name_7 = this.var_401.name_7;
            if(this.var_1783)
            {
               this.method_70(false);
            }
         }
         dispatchEvent(_loc2_);
      }
      
      private final function method_1253(param1:MouseEvent) : void
      {
         this.var_1941 = true;
         addEventListener(MouseEvent.ROLL_OUT,this.method_1261);
      }
      
      private final function method_1261(param1:MouseEvent) : void
      {
         this.var_1941 = false;
         removeEventListener(MouseEvent.ROLL_OUT,this.method_1261);
      }
      
      public final function method_70(param1:Boolean) : void
      {
         if(!this.var_2338)
         {
            this.var_1007 = param1;
            if(this.var_304)
            {
               this.var_304.visible = this.var_1007;
            }
            else
            {
               var_130.gotoAndStop(int(this.var_1007) + 1);
            }
         }
         else if(this.var_1007 != param1)
         {
            this.var_1007 = param1;
            this.var_304.rotation = this.var_304.rotation + this.var_2366;
         }
      }
      
      public function get method_747() : Boolean
      {
         return this.var_1007;
      }
      
      public function get name_26() : Boolean
      {
         return this.var_587;
      }
      
      public function set name_26(param1:Boolean) : void
      {
         if(this.var_587 == param1)
         {
            return;
         }
         this.var_587 = param1;
         if(this.var_587)
         {
            this.method_167(class_160.const_563);
            this.method_191();
            this.method_659();
            this.method_1490();
            this.method_167(class_160.const_146);
         }
         else
         {
            this.method_251();
            this.method_167(class_160.const_271);
            this.method_191();
         }
         this.setToolTipByEnableStatus();
      }
      
      private final function setToolTipByEnableStatus() : void
      {
         if(this.var_587)
         {
            method_333(this.var_2472,this.var_2453);
         }
         else
         {
            method_333(this.var_2182,this.var_2182);
         }
      }
      
      public function get method_1550() : Boolean
      {
         return this.var_1941;
      }
      
      public final function method_1251() : Boolean
      {
         return this.var_304 != null;
      }
      
      public final function method_1190() : MovieClip
      {
         var _loc1_:MovieClip = new MovieClip();
         var _loc2_:BitmapData = new BitmapData(this.var_304.width,this.var_304.height,true,16777215);
         _loc2_.draw(this.var_304);
         _loc1_.addChild(new Bitmap(_loc2_));
         return _loc1_;
      }
      
      override public function method_119() : void
      {
         if(this.hasEventListener(MouseEvent.CLICK))
         {
            removeEventListener(MouseEvent.CLICK,this.method_315);
         }
         if(this.hasEventListener(MouseEvent.ROLL_OVER))
         {
            removeEventListener(MouseEvent.ROLL_OVER,this.method_1253);
         }
         super.method_119();
      }
   }
}
