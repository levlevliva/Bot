package package_57
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1372;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_1004;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoTrackBtnSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import com.bit101.components.LabelBar;
   import com.greensock.TweenMax;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.containers.Form;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.groupmap.GroupMapType;
   import net.bigpoint.seafight.com.module.guild.class_501;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_104.class_641;
   import package_106.class_783;
   import package_111.class_1176;
   import package_111.class_583;
   import package_111.class_585;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_111.class_774;
   import package_121.class_841;
   import package_122.class_656;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_94;
   import package_14.class_96;
   import package_143.class_933;
   import package_167.class_1022;
   import package_167.class_1024;
   import package_167.class_972;
   import package_17.class_326;
   import package_17.class_37;
   import package_17.class_54;
   import package_170.class_979;
   import package_174.class_1027;
   import package_18.class_530;
   import package_18.class_855;
   import package_185.class_1136;
   import package_186.class_1137;
   import package_2.class_9;
   import package_20.class_33;
   import package_212.class_1537;
   import package_216.class_1575;
   import package_23.class_42;
   import package_26.class_101;
   import package_26.class_1088;
   import package_29.class_57;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_1526;
   import package_34.class_1611;
   import package_36.class_100;
   import package_41.class_84;
   import package_42.class_949;
   import package_42.class_959;
   import package_42.class_98;
   import package_42.class_99;
   import package_45.class_110;
   import package_48.class_996;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_1026;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_5.class_984;
   import package_50.class_141;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_1615;
   import package_69.class_978;
   import package_84.class_270;
   import package_9.class_91;
   import package_92.class_1278;
   import package_92.class_336;
   import package_92.class_944;
   import package_92.class_995;
   import package_92.class_997;
   import package_95.class_341;
   import package_97.class_343;
   import package_97.class_986;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public class class_171 extends class_98 implements class_99
   {
       
      
      protected var var_113:class_1023;
      
      protected var var_42:class_336;
      
      protected var var_965:class_1027;
      
      protected var var_180:class_42;
      
      protected var var_204:class_949;
      
      protected var var_34:Number;
      
      protected var var_1560:Boolean = true;
      
      private var var_403:Timer;
      
      private var var_923:Timer;
      
      private var var_1026:Array;
      
      private var var_988:Timer;
      
      private var var_985:Sprite;
      
      private var var_971:Sprite;
      
      public function class_171(param1:class_1023)
      {
         super();
         this.method_2663(param1);
      }
      
      protected final function method_2663(param1:class_1023) : void
      {
         var p:Point = null;
         var ship:class_100 = null;
         var petVO:class_1023 = param1;
         this.var_403 = new Timer(5000,1);
         this.var_180 = class_42.method_21();
         var_258 = class_98.const_1414;
         this.var_965 = new class_1027();
         this.var_204 = new class_949(this);
         this.var_113 = petVO;
         if(petVO.var_997)
         {
            try
            {
               p = getMapPoint(petVO.var_61,petVO.var_63);
               this.method_144(p.x,p.y,1,true);
            }
            catch(e:Error)
            {
               ship = class_47.method_29.method_44(petVO.var_88);
               method_144(ship.name_6.x,ship.name_6.y,ship.method_247(),false);
            }
            if(petVO.var_324 == class_945.const_894)
            {
               this.method_2448();
            }
         }
         this.method_89(petVO.var_234);
         if(this.var_113.var_1059)
         {
            this.method_800(class_1023.const_1465);
         }
         if(this.var_113.var_424)
         {
            this.method_800(class_1023.const_1254);
         }
         if(this.method_894() == true)
         {
            return;
         }
         var name:String = "shiptemplate";
         var mc:MovieClip = getSWFFinisher(class_123.const_20).getEmbeddedMovieClip(name,true);
         mc.name = name;
         this.method_354(mc);
         this.method_409();
         this.method_846();
         this.resetIdleTimer();
      }
      
      private final function method_800(param1:int = 0) : void
      {
         var _loc2_:* = param1 == class_1023.const_1254;
         var _loc3_:SWFFinisher = getSWFFinisher(class_123.const_270,this.method_800,param1);
         if(!_loc3_ || !this.var_113)
         {
            return;
         }
         var _loc4_:String = class_123.method_27(class_123.const_270);
         var _loc5_:MovieClip = _loc3_.getEmbeddedMovieClip(_loc4_);
         if(_loc2_)
         {
            _loc5_.filters = [new GlowFilter(16724787,1,10,10,3.5,3)];
         }
         var _loc6_:BitmapClip = new BitmapClip(_loc5_,_loc4_ + param1,class_944.const_47);
         _loc6_.fps = class_22.const_165;
         _loc6_.name = _loc4_;
         _loc6_.removeAfterPlay = false;
         _loc6_.play();
         if(_loc2_)
         {
            _loc6_.scaleX = -1;
            this.var_965.method_800(param1,_loc6_,this.var_113.var_424);
         }
         else
         {
            this.var_965.method_800(param1,_loc6_);
         }
         switch(this.var_113.var_324)
         {
            case class_1026.const_1781:
            case class_1026.const_1586:
            case class_1026.const_825:
            case class_1026.const_715:
            case class_1026.const_1263:
               this.var_965.y = -50;
            default:
               this.var_965.y = -50;
         }
      }
      
      public final function method_409() : void
      {
         var _loc1_:class_100 = class_47.method_29.method_44(this.method_67.var_88);
         var _loc2_:class_141 = class_47.method_24.method_39;
         if(this.method_2509())
         {
            if(this.var_42)
            {
               _loc2_.method_61(this.var_42,true);
            }
            this.method_144(_loc1_.name_6.x,_loc1_.name_6.y,_loc1_.method_247(),false);
            this.method_953();
         }
         else if(this.method_2547())
         {
            if(this.var_42 == null)
            {
               return;
            }
            _loc2_.method_61(this.var_42,true);
            this.method_144(_loc1_.name_6.x,_loc1_.name_6.y,_loc1_.method_247(),false);
            this.method_953();
         }
         else
         {
            this.var_1560 = !_loc1_ || _loc1_.method_33.name_14 != class_945.const_43;
            _loc2_.method_61(this.var_42,true);
            this.method_391();
         }
      }
      
      public final function method_391() : void
      {
         if(this.var_42 && this.var_42.parent)
         {
            class_47.method_24.method_39.method_99(this.var_42,true);
         }
      }
      
      public function get name_76() : Number
      {
         return this.method_67.var_432;
      }
      
      private final function method_2509() : Boolean
      {
         return class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_428) && class_177.method_52(this.method_67.var_88,class_51.var_21) && class_47.method_29.method_44(this.method_67.var_88).method_33.name_14 != class_945.const_43;
      }
      
      private final function method_2547() : Boolean
      {
         var _loc1_:class_100 = class_47.method_29.method_44(this.method_67.var_88);
         if(!_loc1_)
         {
            return false;
         }
         return class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_585) && !class_177.method_52(this.method_67.var_88,class_51.var_21) && _loc1_.method_33.name_14 != class_945.const_43;
      }
      
      public final function method_1197(param1:class_1023) : void
      {
         this.var_113 = param1;
         this.method_894();
         this.method_89(this.var_113.var_234);
      }
      
      override public function method_65() : String
      {
         var _loc1_:String = null;
         switch(this.method_67.name_5)
         {
            case class_1023.const_355:
               _loc1_ = class_100.const_81 + this.var_113.var_324;
               break;
            case class_1023.const_121:
               _loc1_ = "pet_" + this.var_113.var_324;
               break;
            default:
               throw new class_57(this,this.method_67.name_5);
         }
         return _loc1_;
      }
      
      protected final function method_322() : String
      {
         return "pet_A" + this.var_113.var_324;
      }
      
      override public function suicide(param1:Boolean) : void
      {
         super.suicide(param1);
         this.method_1275();
         this.method_879();
         if(this.var_42 && this.var_42.parent)
         {
            class_47.method_24.method_39.method_99(this.var_42,true);
         }
         this.var_113 = null;
         this.var_42 = null;
      }
      
      public final function method_89(param1:int) : void
      {
         if(this.var_113.name_5 == class_1023.const_121)
         {
            return;
         }
         this.var_113.var_234 = param1;
         var _loc2_:Number = this.method_67.var_234 != 0?Number(this.method_172):Number(100);
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
      }
      
      override public function get method_172() : Number
      {
         return this.var_113.var_234 / (this.var_113.var_1109 / 100);
      }
      
      public final function method_846() : void
      {
         var _loc1_:class_100 = class_47.method_29.method_44(this.method_67.var_88);
         this.var_1560 = !_loc1_ || _loc1_.method_33.name_14 != class_945.const_43;
         if(this.var_42)
         {
            this.var_42.visible = this.var_1560;
         }
         if(this.var_1560)
         {
            this.method_409();
         }
      }
      
      public final function method_706(param1:int, param2:int) : void
      {
         this.method_67.var_432 = class_47.method_29.method_44(this.method_67.var_88).method_33.var_432;
         var _loc3_:class_1024 = new class_1024();
         var _loc4_:Point = getMapFieldPoint(name_6.x,name_6.y);
         _loc3_.var_525 = _loc4_.x;
         _loc3_.var_524 = _loc4_.y;
         var _loc5_:class_1024 = new class_1024();
         _loc5_.var_525 = param1;
         _loc5_.var_524 = param2;
         var _loc6_:Array = class_1022.method_21().method_2102(_loc3_,_loc5_);
         var _loc7_:class_972 = new class_972(new Vector.<class_91>());
         _loc7_.method_490 = _loc6_.slice(0,_loc6_.length - 6);
         if(_loc7_.method_490.length > 0)
         {
            this.var_204.method_737(_loc7_);
         }
      }
      
      public final function method_1275() : void
      {
         if(this.var_204)
         {
            this.var_204.method_64();
         }
      }
      
      private final function resetIdleTimer() : void
      {
         if(!this.var_403)
         {
            return;
         }
         if(this.var_403.running)
         {
            this.var_403.stop();
         }
         this.var_403.delay = class_1025.method_198(1000,5000);
         this.var_403.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_891);
         this.var_403.start();
      }
      
      public function method_681(param1:Point) : void
      {
         if(this.var_42 == null)
         {
            return;
         }
         this.method_1565(param1);
         this.method_83(this.var_34);
      }
      
      public final function method_83(param1:int) : void
      {
         this.var_34 = param1;
         if(param1 == this.var_113.var_34)
         {
            return;
         }
         this.var_113.var_34 = param1;
         this.method_1722();
      }
      
      public final function method_144(param1:int, param2:int, param3:uint, param4:Boolean) : void
      {
         if(name_6 == null)
         {
            return;
         }
         var _loc5_:Point = new Point();
         if(!param4)
         {
            switch(param3)
            {
               case class_959.const_52:
                  _loc5_.x = -100;
                  _loc5_.y = -60;
                  break;
               case class_959.const_48:
                  _loc5_.x = 100;
                  _loc5_.y = -60;
                  break;
               case class_959.const_60:
                  _loc5_.x = 100;
                  _loc5_.y = 60;
                  break;
               case class_959.const_59:
                  _loc5_.x = -100;
                  _loc5_.y = 60;
            }
         }
         else
         {
            _loc5_.x = 0;
            _loc5_.y = 0;
         }
         var _loc6_:Point = getMapFieldPoint(param1 + _loc5_.x,param2 + _loc5_.y);
         if(class_47.method_51.method_362(_loc6_.x,_loc6_.y))
         {
            name_6.x = param1;
            name_6.y = param2;
         }
         else
         {
            name_6 = getMapPoint(_loc6_.x,_loc6_.y);
         }
      }
      
      override public function method_27() : String
      {
         return this.var_113.var_44;
      }
      
      override public function method_104() : class_84
      {
         return this.var_113.var_88;
      }
      
      override public function method_908() : Object
      {
         return var_43;
      }
      
      public function get method_67() : class_1023
      {
         return this.var_113;
      }
      
      override public function method_349() : String
      {
         return "none";
      }
      
      public function get method_554() : Boolean
      {
         return this.var_204.method_806;
      }
      
      public final function method_803() : int
      {
         return this.var_42.width;
      }
      
      public final function method_938() : int
      {
         return this.var_42.height;
      }
      
      public final function method_2093() : Point
      {
         var _loc1_:Point = new Point();
         _loc1_.x = name_6.x - class_37.method_21().name_37.var_120.x;
         _loc1_.y = name_6.y - class_37.method_21().name_37.var_120.y;
         return _loc1_;
      }
      
      protected function method_601(param1:Event = null) : void
      {
         if(!this.var_204 || !this.var_42 || !this.method_67)
         {
            return;
         }
         this.var_42.fps = 12;
         this.var_42.x = Math.floor(name_6.x);
         this.var_42.y = Math.floor(name_6.y);
         this.var_204.method_34(class_47.method_430);
         if(this.var_204.method_806 || class_47.method_29.method_44(this.method_67.var_88).method_554)
         {
            this.resetIdleTimer();
         }
      }
      
      protected function method_1722() : void
      {
         var _loc1_:class_141 = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:SWFFinisher = null;
         var _loc6_:int = 0;
         switch(this.method_67.name_5)
         {
            case class_1023.const_355:
               this.var_42.gotoAndStop(this.var_34);
               break;
            case class_1023.const_322:
            case class_1023.const_121:
               _loc1_ = class_47.method_24.method_39;
               _loc2_ = this.method_65();
               _loc3_ = this.method_322();
               if(class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_855))
               {
                  _loc5_ = this.var_180.var_336.getFinisher(_loc3_) as SWFFinisher;
                  if(_loc5_ == null)
                  {
                     return;
                  }
                  _loc2_ = _loc2_ + (class_22.const_54 + this.var_34);
                  _loc4_ = _loc5_.getEmbeddedMovieClip(_loc2_);
                  _loc6_ = this.var_42.frame;
                  if(this.var_42 && this.var_42.parent)
                  {
                     _loc1_.method_99(this.var_42,false);
                  }
                  _loc4_.name = _loc2_;
                  this.method_354(_loc4_);
                  this.var_42.fps = class_22.const_377;
                  _loc1_.method_61(this.var_42,false);
                  this.var_42.gotoAndPlay(_loc6_);
                  break;
               }
               _loc4_ = (this.var_180.var_336.getFinisher(_loc2_) as SWFFinisher).getEmbeddedMovieClip(_loc2_);
               if(this.var_42 && this.var_42.parent)
               {
                  _loc1_.method_99(this.var_42,false);
               }
               _loc4_.name = _loc2_;
               this.method_354(_loc4_);
               _loc1_.method_61(this.var_42,false);
               this.var_42.gotoAndStop(this.var_34 <= this.var_42.framesLoaded?int(this.var_34):int(this.var_42.framesLoaded));
               break;
         }
      }
      
      protected function method_2654() : void
      {
         var _loc1_:String = this.method_65();
         if(this.var_42 && this.var_42.parent)
         {
            class_47.method_24.method_39.method_99(this.var_42,false);
         }
         var _loc2_:MovieClip = (this.var_180.var_136.getFinisher(_loc1_) as SWFFinisher).getEmbeddedMovieClip(_loc1_,true);
         _loc2_.name = _loc1_;
         this.method_354(_loc2_);
         this.method_83(class_47.method_29.method_44(this.method_67.var_88).method_247());
         this.method_409();
         class_47.method_24.method_39.method_61(this.var_42,false);
      }
      
      protected final function method_354(param1:MovieClip) : void
      {
         var _loc2_:int = class_944.const_47;
         if(this.var_113)
         {
            switch(this.var_113.var_324)
            {
               case class_1026.const_1624:
               case class_1026.const_1783:
                  _loc2_ = class_944.const_56;
            }
         }
         this.var_42 = new class_336(param1,param1.name,_loc2_);
         this.var_42.addChild(this.var_965);
         this.var_965.name_21();
      }
      
      protected function method_894() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc4_:FileCollection = null;
         var _loc5_:SWFFinisher = null;
         var _loc2_:String = this.method_65();
         var _loc3_:String = this.method_322();
         switch(this.method_67.name_5)
         {
            case class_1023.const_355:
               _loc4_ = this.var_180.var_136;
               if(_loc4_.isLoaded(_loc2_))
               {
                  this.method_432();
                  this.method_89(this.var_113.var_234);
                  _loc1_ = true;
                  break;
               }
               _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_1135);
               _loc4_.load(_loc2_);
               _loc1_ = false;
               break;
            case class_1023.const_121:
               _loc4_ = this.var_180.var_336;
               if(_loc4_.isLoaded(_loc3_) && !class_326.var_433)
               {
                  _loc5_ = _loc4_.getFinisher(_loc3_) as SWFFinisher;
                  var_43 = _loc5_.fileVO.params;
                  this.method_455(_loc5_);
                  _loc1_ = true;
                  break;
               }
               if(_loc4_.isLoaded(_loc2_))
               {
                  _loc5_ = _loc4_.getFinisher(_loc2_) as SWFFinisher;
                  var_43 = _loc5_.fileVO.params;
                  this.method_455(_loc5_);
                  if(!class_326.var_433)
                  {
                     _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_828);
                     _loc4_.load(_loc3_);
                  }
                  _loc1_ = true;
                  break;
               }
               _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_1006);
               _loc4_.load(_loc2_);
               _loc1_ = false;
               break;
         }
         return _loc1_;
      }
      
      private final function method_455(param1:SWFFinisher) : void
      {
         var libname:String = null;
         var mc:MovieClip = null;
         var monsterTemplate:SWFFinisher = param1;
         if(class_47.method_29.method_314(this.var_113.var_88,this.var_113.name_5) == null)
         {
            return;
         }
         if(this.var_42 && this.var_42.parent)
         {
            class_47.method_24.method_39.method_99(this.var_42,false);
            this.var_42 = null;
         }
         var animated:Boolean = false;
         libname = this.method_65();
         try
         {
            mc = monsterTemplate.getEmbeddedMovieClip(libname);
         }
         catch(e:Error)
         {
            animated = true;
            libname = libname + "_";
            if(var_113.var_34 <= 0)
            {
               libname = libname + (int(Math.random() * 4) + 1);
            }
            else
            {
               libname = libname + var_113.var_34;
            }
            mc = monsterTemplate.getEmbeddedMovieClip(libname);
         }
         mc.name = libname;
         this.method_354(mc);
         try
         {
            if(animated)
            {
               this.var_42.fps = 6;
               this.var_42.gotoAndPlay(Math.round(Math.random() * 10));
            }
            else
            {
               this.var_113.var_34 = Math.ceil(Math.random() * 4);
               this.var_42.gotoAndStop(this.var_113.var_34);
            }
         }
         catch(e:Error)
         {
         }
         this.method_409();
         class_47.method_24.method_39.method_61(this.var_42,false);
         this.method_601();
         var_195 = true;
      }
      
      private final function method_1006(param1:FileCollectionFileLoadEvent) : void
      {
         if(this.var_113 == null)
         {
            return;
         }
         var _loc2_:String = this.method_65();
         if(param1.fileVO.id != _loc2_)
         {
            return;
         }
         var _loc3_:String = this.method_322();
         var _loc4_:FileCollection = this.var_180.var_336;
         var _loc5_:SWFFinisher = _loc4_.getFinisher(_loc2_) as SWFFinisher;
         _loc4_.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_1006);
         var_43 = _loc5_.fileVO.params;
         if(!class_326.var_433)
         {
            if(_loc4_.isLoaded(_loc3_))
            {
               _loc5_ = _loc4_.getFinisher(_loc3_) as SWFFinisher;
               var_43 = _loc5_.fileVO.params;
               this.method_455(_loc5_);
            }
            else
            {
               _loc5_ = _loc4_.getFinisher(_loc2_) as SWFFinisher;
               this.method_455(_loc5_);
               _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_828);
               _loc4_.load(_loc3_);
            }
         }
         else
         {
            this.method_455(_loc5_);
         }
      }
      
      private final function method_828(param1:FileCollectionFileLoadEvent) : void
      {
         this.var_180.var_336.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_828);
         if(this.var_113 == null)
         {
            return;
         }
         var _loc2_:String = this.method_322();
         if(param1.fileVO.id != _loc2_)
         {
            return;
         }
         var_43 = SWFFinisher(this.var_180.var_336.getFinisher(_loc2_)).fileVO.params;
         this.method_455(this.var_180.var_336.getFinisher(_loc2_) as SWFFinisher);
      }
      
      public final function method_879() : void
      {
         this.var_204 = null;
         if(this.var_923 && this.var_923.running)
         {
            this.var_923.stop();
         }
         if(this.var_403 && this.var_403.running)
         {
            this.var_403.stop();
            this.var_403.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_891);
            this.var_403 = null;
         }
      }
      
      public final function method_867() : void
      {
         var _loc1_:class_100 = null;
         if(this.var_204 == null)
         {
            _loc1_ = class_47.method_29.method_44(this.method_67.var_88);
            this.method_144(_loc1_.name_6.x,_loc1_.name_6.y,_loc1_.method_247(),false);
            this.var_204 = new class_949(this);
         }
         if(this.var_42 != null)
         {
            class_47.method_24.method_39.method_99(this.var_42,false);
            this.var_42 = null;
         }
         this.method_894();
         this.method_953();
         this.var_403 = new Timer(5000,1);
      }
      
      private final function method_953() : void
      {
         if(this.var_923 == null)
         {
            this.var_923 = new Timer(1000 / 25);
            this.var_923.addEventListener(TimerEvent.TIMER,this.method_601);
         }
         this.var_923.start();
      }
      
      private final function method_2448() : void
      {
         this.var_1026 = [];
         var _loc1_:class_141 = class_47.method_24.method_39;
         var _loc2_:Lightning = this.var_1026[0] = new Lightning(16629908,3,0);
         var _loc3_:Lightning = this.var_1026[1] = new Lightning(6463997,0.5,0);
         _loc2_.childrenMaxCount = 0;
         _loc2_.speed = 1;
         _loc2_.amplitude = 0.2;
         _loc2_.alpha = 0.85;
         _loc2_.alphaFadeType = LightningFadeType.TIP_TO_END;
         _loc3_.childrenMaxCount = 7;
         _loc3_.speed = 7;
         _loc3_.amplitude = 0.4;
         _loc3_.alpha = 0.85;
         _loc3_.alphaFadeType = LightningFadeType.TIP_TO_END;
         var _loc4_:GlowFilter = new GlowFilter();
         _loc4_.color = 16743451;
         _loc4_.strength = 3.5;
         _loc4_.quality = 3;
         _loc4_.blurX = _loc4_.blurY = 10;
         var _loc5_:GlowFilter = new GlowFilter();
         _loc5_.color = 1417981;
         _loc5_.strength = 2.5;
         _loc5_.quality = 3;
         _loc5_.blurX = _loc4_.blurY = 10;
         _loc2_.filters = [_loc4_];
         _loc3_.filters = [_loc5_];
         this.var_985 = new Sprite();
         this.var_985.graphics.beginFill(0);
         this.var_985.graphics.drawRect(0,0,class_51.var_39,class_51.var_40);
         this.var_985.graphics.endFill();
         this.var_971 = new Sprite();
         this.var_971.graphics.beginFill(0);
         this.var_971.graphics.drawRect(0,0,class_51.var_39,class_51.var_40);
         this.var_971.graphics.endFill();
         _loc2_.mask = this.var_985;
         _loc3_.mask = this.var_971;
         _loc1_.addChild(_loc2_);
         _loc1_.addChild(_loc3_);
         _loc1_.addChild(this.var_985);
         _loc1_.addChild(this.var_971);
         this.var_988 = new Timer(50,150);
         this.var_988.addEventListener(TimerEvent.TIMER,this.method_1329);
         this.var_988.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_983);
         this.var_988.start();
         var _loc6_:Point = class_47.method_29.method_44(this.method_67.var_88).name_6;
         var _loc7_:Point = getMapFieldPoint(_loc6_.x,_loc6_.y);
         _loc7_.x = _loc7_.x + 3;
         _loc7_.y = _loc7_.y + 3;
         this.method_891(null,_loc7_);
      }
      
      private final function method_1329(param1:Event = null) : void
      {
         var _loc2_:Lightning = this.var_1026[0] as Lightning;
         var _loc3_:Lightning = this.var_1026[1] as Lightning;
         var _loc4_:class_100 = class_47.method_29.method_44(this.method_67.var_88);
         var _loc5_:int = class_47.name_37.var_120.x;
         var _loc6_:int = class_47.name_37.var_120.y;
         _loc2_.visible = _loc3_.visible = true;
         _loc2_.endX = _loc3_.endX = (this.name_6.x - _loc5_ - 10) * class_141.var_99;
         _loc2_.endY = _loc3_.endY = (this.name_6.y - _loc6_ - 20) * class_141.var_99;
         _loc2_.startX = _loc3_.startX = (_loc4_.name_6.x - _loc5_) * class_141.var_99;
         _loc2_.startY = _loc3_.startY = (_loc4_.name_6.y - _loc6_) * class_141.var_99;
         _loc2_.update();
         _loc3_.update();
      }
      
      private final function method_983(param1:Event) : void
      {
         var _loc2_:class_141 = class_47.method_24.method_39;
         this.var_988.stop();
         this.var_988.removeEventListener(TimerEvent.TIMER,this.method_1329);
         this.var_988.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_983);
         _loc2_.removeChild(this.var_1026[0] as Lightning);
         _loc2_.removeChild(this.var_1026[1] as Lightning);
         _loc2_.removeChild(this.var_985);
         _loc2_.removeChild(this.var_971);
      }
      
      protected function method_1135(param1:FileCollectionFileLoadEvent) : void
      {
         if(param1.fileVO.id != this.method_65())
         {
            return;
         }
         this.var_180.var_136.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_1135);
         this.method_432();
         var _loc2_:SWFFinisher = this.var_180.var_136.getFinisher(this.method_65()) as SWFFinisher;
         var_43 = _loc2_.fileVO.params;
      }
      
      protected final function method_432() : void
      {
         this.method_2654();
         this.method_601();
         this.method_89(this.var_113.var_234);
         var_195 = true;
         this.method_846();
      }
      
      private final function method_891(param1:Event = null, param2:Point = null) : void
      {
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:class_232 = null;
         if(!this.method_67)
         {
            return;
         }
         var _loc3_:class_100 = class_47.method_29.method_44(this.method_67.var_88);
         if(!_loc3_)
         {
            return;
         }
         this.method_67.var_432 = _loc3_.method_33.var_432 / 20;
         var _loc4_:Point = new Point(-1,-1);
         if(param2 == null)
         {
            _loc6_ = _loc3_.name_6;
            _loc7_ = getMapFieldPoint(_loc6_.x,_loc6_.y);
            _loc8_ = class_47.method_51;
            while(_loc4_.x == -1 && _loc4_.y == -1 || _loc8_.method_362(_loc4_.x,_loc4_.y))
            {
               if(Math.random() > 0.5)
               {
                  _loc4_.x = _loc7_.x + class_1025.method_198(2,7);
               }
               else
               {
                  _loc4_.x = _loc7_.x + class_1025.method_198(-2,-7);
               }
               if(Math.random() > 0.5)
               {
                  _loc4_.y = _loc7_.y + class_1025.method_198(2,7);
               }
               else
               {
                  _loc4_.y = _loc7_.y + class_1025.method_198(-2,-7);
               }
            }
         }
         else
         {
            _loc4_ = param2;
         }
         var _loc5_:Vector.<class_91> = new Vector.<class_91>();
         _loc5_.push(new class_91(_loc4_.x,_loc4_.y));
         if(this.var_204)
         {
            this.var_204.method_737(new class_972(_loc5_));
         }
      }
      
      private final function method_1565(param1:Point) : void
      {
         var _loc2_:* = param1.y > name_6.y;
         var _loc3_:* = param1.x > name_6.x;
         if(_loc3_)
         {
            this.var_34 = !!_loc2_?Number(class_959.const_52):Number(class_959.const_59);
         }
         else
         {
            this.var_34 = !!_loc2_?Number(class_959.const_48):Number(class_959.const_60);
         }
      }
      
      public function method_755(param1:int, param2:int) : void
      {
         this.var_113.var_61 = param1;
         this.var_113.var_63 = param2;
      }
      
      public function get method_1828() : class_1027
      {
         return this.var_965;
      }
      
      override public function method_134() : Sprite
      {
         return this.var_42;
      }
      
      public function method_1696() : Point
      {
         return null;
      }
   }
}
