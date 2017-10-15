package package_23
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildNameItemRenderer;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopupController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.class_1339;
   import net.bigpoint.seafight.com.module.minigame.class_470;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_110.class_856;
   import package_121.class_841;
   import package_14.class_225;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_94;
   import package_14.class_96;
   import package_140.class_540;
   import package_15.class_273;
   import package_15.class_48;
   import package_152.class_664;
   import package_154.class_658;
   import package_16.class_28;
   import package_17.class_1456;
   import package_170.class_979;
   import package_175.class_1548;
   import package_185.class_1136;
   import package_20.class_33;
   import package_27.class_53;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_166;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_115;
   import package_34.class_116;
   import package_36.class_100;
   import package_40.class_416;
   import package_41.class_89;
   import package_42.class_98;
   import package_43.class_266;
   import package_45.class_110;
   import package_46.class_1493;
   import package_46.class_975;
   import package_47.class_129;
   import package_47.class_136;
   import package_47.class_757;
   import package_48.class_138;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_974;
   import package_6.class_14;
   import package_61.class_597;
   import package_69.class_978;
   import package_72.class_1080;
   import package_72.class_203;
   import package_76.class_279;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_42 extends EventDispatcher
   {
      
      public static const const_1043:String = "ResourceManager.RESOURCE_FILES_LOADED";
      
      private static var name_55:class_42;
       
      
      public var var_136:FileCollection;
      
      public var var_1060:FileCollection;
      
      public var var_932:FileCollection;
      
      public var var_287:FileCollection;
      
      public var var_613:FileCollection;
      
      public var var_336:FileCollection;
      
      public var var_1046:FileCollection;
      
      public function class_42(param1:Function)
      {
         this.var_136 = new FileCollection("",true);
         this.var_1060 = new FileCollection("",true);
         this.var_932 = new FileCollection("",true);
         this.var_287 = new FileCollection("",true);
         this.var_613 = new FileCollection("",true);
         this.var_336 = new FileCollection("",true);
         this.var_1046 = new FileCollection("",true);
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_42
      {
         if(name_55 == null)
         {
            name_55 = new class_42(method_976);
         }
         return name_55;
      }
      
      public static function method_47(param1:String) : String
      {
         var _loc2_:String = class_39.method_922(param1);
         var _loc3_:String = class_51.var_906 + param1;
         if(_loc2_ == null || _loc2_.length <= 0)
         {
            return _loc3_;
         }
         return _loc3_ + "?" + class_22.const_976 + _loc2_;
      }
      
      public final function name_16() : void
      {
         this.loadSoundXML();
      }
      
      private final function loadSoundXML() : void
      {
         class_203.name_12.method_68(this.loadResourceHashData);
      }
      
      private final function loadResourceHashData() : void
      {
         this.initLoad();
      }
      
      private final function initLoad() : void
      {
         this.method_342(this.var_136,"shipResourceFile","ship.res",this.method_2826);
      }
      
      private final function method_342(param1:FileCollection, param2:String, param3:String, param4:Function) : void
      {
         var url:String = null;
         var fileCollection:FileCollection = param1;
         var loggerMsg:String = param2;
         var file:String = param3;
         var listener:Function = param4;
         url = method_47("res/" + file + ".xml");
         fileCollection.addEventListener(FileCollectionEvent.RESOURCE_XML_PARSED,this.method_1054);
         fileCollection.addEventListener(FileCollectionEvent.RESOURCE_FILE_NOT_FOUND,function(param1:Event = null):void
         {
            class_144.method_341("ERROR LOADING " + loggerMsg + ": " + url,class_143.const_1006);
         });
         fileCollection.addEventListener(FileCollectionEvent.RESOURCE_FILE_LOADED,listener);
         fileCollection.addEventListener(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,this.method_1975);
         fileCollection.filePrefix = class_51.var_906;
         Main.LOG.info(this + ": load resources xml file: " + url);
         fileCollection.loadResourceFile(url);
      }
      
      private final function method_1054(param1:FileCollectionEvent) : void
      {
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         (param1.target as FileCollection).removeEventListener(FileCollectionEvent.RESOURCE_XML_PARSED,this.method_1054);
         var _loc2_:XML = param1.xml;
         var _loc3_:XMLList = _loc2_["file"];
         var _loc4_:String = _loc2_["location"].@path;
         for each(_loc5_ in _loc3_)
         {
            _loc6_ = _loc5_.@name;
            _loc7_ = "." + _loc5_.@type;
            _loc5_.@hash = class_39.method_922(_loc4_ + _loc6_ + _loc7_) || "";
         }
      }
      
      private final function method_1975(param1:FileCollectionFileLoadEvent) : void
      {
         var _loc2_:* = "ERROR LOADING " + param1.fileVO.id + " -> " + param1.fileVO.getFileName() + " -> RELOADING in 5 sec...";
         class_144.method_341("ERROR LOADING " + param1.fileVO.id + " -> " + param1.fileVO.getFileName() + " -> RELOADING in 5 sec...",class_143.const_1006);
         Main.SYSTEM_MESSAGEBOX.method_2311(_loc2_);
      }
      
      private final function method_2826(param1:FileCollectionEvent) : void
      {
         this.method_342(this.var_1060,"monsterResourceFile","monster.res",this.method_2772);
      }
      
      private final function method_2772(param1:FileCollectionEvent) : void
      {
         this.method_342(this.var_932,"itemResourceFile","item.res",this.method_2476);
      }
      
      private final function method_2476(param1:FileCollectionEvent) : void
      {
         this.var_287.loadLinear = true;
         this.method_342(this.var_287,"uiResourceFile","ui.res",this.method_2187);
      }
      
      private final function method_2187(param1:FileCollectionEvent) : void
      {
         this.var_613.loadLinear = true;
         this.method_342(this.var_613,"fxResourceFile","fx.res",this.method_2462);
      }
      
      private final function method_2462(param1:FileCollectionEvent) : void
      {
         this.method_342(this.var_336,"petResourceFile","pet.res",this.method_1701);
      }
      
      private final function method_1701(param1:FileCollectionEvent) : void
      {
         this.var_1046.loadLinear = true;
         this.method_342(this.var_1046,"effectResourceFile","effect.res",this.method_2320);
      }
      
      private final function method_2320(param1:FileCollectionEvent) : void
      {
         dispatchEvent(new Event(class_42.const_1043));
      }
      
      public function get method_757() : int
      {
         var _loc1_:int = 0;
         _loc1_ = _loc1_ + this.var_287.byteLoaded;
         _loc1_ = _loc1_ + this.var_613.byteLoaded;
         return _loc1_;
      }
      
      public function get method_2910() : int
      {
         var _loc1_:int = 0;
         _loc1_ = _loc1_ + this.var_287.byteLoaded;
         _loc1_ = _loc1_ + this.var_613.byteLoaded;
         _loc1_ = _loc1_ + this.var_136.byteLoaded;
         _loc1_ = _loc1_ + this.var_1060.byteLoaded;
         _loc1_ = _loc1_ + this.var_932.byteLoaded;
         _loc1_ = _loc1_ + this.var_336.byteLoaded;
         _loc1_ = _loc1_ + this.var_1046.byteLoaded;
         return _loc1_;
      }
   }
}
