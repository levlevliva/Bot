package package_58
{
   import com.adobe.utils.IntUtil;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.QuestWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.common.SimpleHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.QuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopup;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCastleWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenDeathWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMonthlyLoginBonusWindow;
   import com.greensock.TweenLite;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.BevelFilter;
   import flash.filters.DropShadowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_552;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_1549;
   import package_101.class_566;
   import package_101.class_608;
   import package_113.class_487;
   import package_127.class_870;
   import package_14.class_1313;
   import package_14.class_1535;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_61;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_140.class_534;
   import package_140.class_985;
   import package_15.class_273;
   import package_15.class_48;
   import package_158.class_703;
   import package_163.class_843;
   import package_165.class_1038;
   import package_165.class_951;
   import package_166.class_1486;
   import package_166.class_1502;
   import package_17.class_326;
   import package_17.class_54;
   import package_173.class_1236;
   import package_175.class_1036;
   import package_186.class_1137;
   import package_186.class_1465;
   import package_190.class_1181;
   import package_20.class_109;
   import package_20.class_33;
   import package_216.class_1575;
   import package_23.class_42;
   import package_26.class_960;
   import package_28.class_56;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_959;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_974;
   import package_52.class_167;
   import package_52.class_168;
   import package_54.class_163;
   import package_54.class_319;
   import package_57.class_171;
   import package_6.class_14;
   import package_7.class_146;
   import package_7.class_74;
   import package_72.class_203;
   import package_74.class_256;
   import package_9.class_17;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_1278;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public class class_175 extends class_98
   {
      
      protected static const const_469:String = "monstertemplate";
      
      protected static const const_1112:String = "monster_";
       
      
      protected var var_331:class_1037;
      
      protected var var_112:class_42;
      
      protected var var_42:class_336;
      
      protected var var_2085:SWFFinisher;
      
      protected var var_2331:Boolean = false;
      
      public function class_175(param1:class_1037)
      {
         var _loc5_:SWFFinisher = null;
         super();
         var_258 = class_98.const_282;
         this.var_331 = param1;
         var_68 = new class_1038(this.var_331);
         this.var_112 = class_42.method_21();
         this.setPosition(param1.var_61,param1.var_63);
         var _loc2_:String = this.method_65();
         var _loc3_:String = this.method_322();
         var _loc4_:FileCollection = this.var_112.var_1060;
         if(_loc4_.isLoaded(_loc3_) && !class_326.var_433)
         {
            _loc5_ = _loc4_.getFinisher(_loc3_) as SWFFinisher;
            var_43 = _loc5_.fileVO.params;
            this.method_365(_loc5_);
            return;
         }
         if(_loc4_.isLoaded(_loc2_))
         {
            _loc5_ = _loc4_.getFinisher(_loc2_) as SWFFinisher;
            var_43 = _loc5_.fileVO.params;
            this.method_365(_loc5_);
            if(!class_326.var_433)
            {
               _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_828);
               _loc4_.load(_loc3_);
            }
            return;
         }
         _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_1006);
         _loc4_.load(_loc2_);
         this.var_42 = new class_336(getSWFFinisher(class_123.const_20).getEmbeddedMovieClip(const_469),const_469,class_944.const_330);
         this.var_42.x = name_6.x;
         this.var_42.y = name_6.y;
         this.var_42.play();
         class_47.method_24.method_39.method_61(this.var_42);
      }
      
      override public function method_145(param1:String, param2:class_84, param3:String = null, param4:Boolean = false, param5:Boolean = false) : void
      {
         super.method_145(param1,param2,param3,param4,param5);
         var _loc6_:class_951 = var_68 as class_951;
         _loc6_.method_1561(param5,true);
         _loc6_.method_34(this.var_331);
      }
      
      override public function method_65() : String
      {
         return const_1112 + this.method_128.var_1734;
      }
      
      private final function method_322() : String
      {
         return const_1112 + "A" + this.method_128.var_1734;
      }
      
      public function method_89(param1:int) : void
      {
         this.var_331.var_101 = param1;
         var _loc2_:String = method_616("damage_clip");
         var _loc3_:Boolean = !!_loc2_?_loc2_.length > 0:false;
         var _loc4_:int = parseInt(method_616("damage_percent"));
         if(!this.var_2331 && _loc3_ && this.method_172 < _loc4_)
         {
            this.var_2331 = true;
            class_47.method_24.method_39.method_99(this.var_42);
            this.var_42 = new class_336(this.var_2085.getEmbeddedMovieClip(_loc2_,true),_loc2_ + "_",class_944.const_330);
            this.var_42.x = name_6.x;
            this.var_42.y = name_6.y;
            class_47.method_24.method_39.method_61(this.var_42);
         }
         dispatchEvent(new class_960(this));
         (var_68 as class_1038).method_1097(this.method_172);
      }
      
      override public function suicide(param1:Boolean) : void
      {
         super.suicide(param1);
         class_47.method_24.method_39.method_99(this.var_42);
      }
      
      override public function method_27() : String
      {
         return this.var_331.var_44;
      }
      
      override public function method_104() : class_84
      {
         return this.var_331.name_4;
      }
      
      private final function setPosition(param1:int, param2:int) : void
      {
         var _loc3_:Point = getMapPoint(param1,param2);
         name_6.x = _loc3_.x;
         name_6.y = _loc3_.y;
      }
      
      public function get method_128() : class_1037
      {
         return this.var_331;
      }
      
      public final function method_2221() : int
      {
         return this.var_42.width;
      }
      
      public final function method_2503() : int
      {
         return this.var_42.height;
      }
      
      override public function get method_172() : Number
      {
         return this.var_331.var_101 / this.var_331.var_182 * 100;
      }
      
      public function get method_551() : int
      {
         if(var_43 == null)
         {
            return class_1036.const_928;
         }
         if(var_43["impact_style"] != null && String(var_43["impact_style"]).length > 0)
         {
            return int(var_43["impact_style"]);
         }
         return class_1036.const_928;
      }
      
      protected function method_365(param1:SWFFinisher) : void
      {
         this.var_2085 = param1;
         class_47.method_24.method_39.method_99(this.var_42);
         var _loc2_:String = this.method_65();
         if(var_43["animatedDirections"] == "true")
         {
            if(this.method_128.var_34 <= 0)
            {
               _loc2_ = _loc2_ + ("_" + Math.ceil(Math.random() * 4));
            }
            else
            {
               _loc2_ = _loc2_ + ("_" + (this.method_128.var_34 % 4 + 1));
            }
         }
         this.var_42 = new class_336(this.var_2085.getEmbeddedMovieClip(_loc2_),_loc2_,class_944.const_330);
         this.var_42.x = name_6.x;
         this.var_42.y = name_6.y;
         this.var_42.addChild(var_68 as Sprite);
         try
         {
            if(var_43["type"] == "play")
            {
               this.var_42.fps = var_43["fps"];
               this.var_42.gotoAndPlay(Math.round(Math.random() * 10));
            }
            else if(var_43["type"] == "rand")
            {
               this.method_128.var_34 = Math.ceil(Math.random() * var_43["frames"]);
               this.var_42.gotoAndStop(this.method_128.var_34);
            }
         }
         catch(e:Error)
         {
         }
         class_47.method_24.method_39.method_61(this.var_42);
         this.method_145(this.var_331.var_44,this.var_331.name_4,"",this.var_331.var_383.name_4 != 0 && !class_177.method_52(this.var_331.var_383,class_51.var_21));
         this.method_601();
         this.method_89(this.var_331.var_101);
         var_195 = true;
      }
      
      private final function method_601(param1:Event = null) : void
      {
      }
      
      private final function method_1006(param1:FileCollectionFileLoadEvent) : void
      {
         var _loc5_:SWFFinisher = null;
         var _loc2_:String = this.method_65();
         if(param1.fileVO.id != _loc2_)
         {
            return;
         }
         var _loc3_:String = this.method_322();
         var _loc4_:FileCollection = this.var_112.var_1060;
         _loc5_ = _loc4_.getFinisher(_loc2_) as SWFFinisher;
         _loc4_.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_1006);
         var_43 = _loc5_.fileVO.params;
         if(!class_326.var_433)
         {
            if(_loc4_.isLoaded(_loc3_))
            {
               _loc5_ = _loc4_.getFinisher(_loc3_) as SWFFinisher;
               var_43 = _loc5_.fileVO.params;
               this.method_365(_loc5_);
               return;
            }
            this.method_365(_loc4_.getFinisher(_loc2_) as SWFFinisher);
            _loc4_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_828);
            _loc4_.load(_loc3_);
         }
         else
         {
            this.method_365(_loc4_.getFinisher(_loc2_) as SWFFinisher);
         }
      }
      
      private final function method_828(param1:FileCollectionFileLoadEvent) : void
      {
         var _loc2_:String = this.method_322();
         if(param1.fileVO.id != _loc2_)
         {
            return;
         }
         var _loc3_:FileCollection = this.var_112.var_1060;
         var _loc4_:SWFFinisher = _loc3_.getFinisher(_loc2_) as SWFFinisher;
         _loc3_.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_828);
         var_43 = _loc4_.fileVO.params;
         this.method_365(_loc4_);
      }
      
      override public function method_183(param1:int, param2:int = 0) : void
      {
         super.method_183(param1,param2);
         if(this.var_42 && var_460 && var_460[param1])
         {
            this.var_42.addChildAt(var_460[param1],0);
         }
      }
      
      override public function method_197(param1:int = 0) : BitmapData
      {
         return this.var_42.method_161()[param1] as BitmapData;
      }
      
      override public function method_134() : Sprite
      {
         return this.var_42;
      }
      
      public final function method_36() : void
      {
         var _loc1_:DisplayObject = null;
         BitmapClip.clearCache();
         this.var_42.stop();
         while(this.var_42.numChildren)
         {
            _loc1_ = this.var_42.removeChildAt(0);
            _loc1_.filters = [];
         }
         class_47.method_24.method_39.method_99(this.var_42);
      }
      
      override public function method_190() : int
      {
         return this.var_331.name_27 > 0?int(this.var_331.name_27):1;
      }
   }
}
