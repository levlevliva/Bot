package package_17
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_122.class_656;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_143.class_542;
   import package_143.class_933;
   import package_190.class_1181;
   import package_20.class_33;
   import package_216.class_1575;
   import package_26.class_1086;
   import package_26.class_969;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_565;
   import package_34.class_1000;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1356;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_123;
   import package_51.class_974;
   import package_54.class_1089;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import package_88.class_1093;
   import package_92.class_336;
   import package_99.class_911;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.primitives.Rect;
   
   public final class class_304
   {
      
      private static const const_80:ILogger = Log.getLogger("VoodooControl");
      
      private static const const_196:int = 1000;
      
      private static const const_738:String = "abortVoodooJump";
      
      public static const const_1941:int = 0;
      
      public static const const_1499:int = 1;
      
      private static var name_55:class_304;
       
      
      private var var_1719:int;
      
      private var var_416:class_1089;
      
      private var var_264:TextField;
      
      private var var_626:int;
      
      private var var_272:Timer;
      
      private var var_2443:String;
      
      private var var_928:Boolean = false;
      
      public function class_304(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            const_80.error("ERROR VoodooControl is a singleton and can only be accessed through VoodooControl.getInstance()");
            throw new Error("VoodooControl and can only be accessed through VoodooControl.getInstance()");
         }
         const_80.info("CONSTRUCTED SINGLETON");
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_304
      {
         if(name_55 == null)
         {
            name_55 = new class_304(method_976);
         }
         return name_55;
      }
      
      public final function method_2258(param1:int) : void
      {
         if(this.var_928)
         {
            return;
         }
         this.var_928 = true;
         class_47.method_29.method_75.addEventListener(class_969.const_239,this.method_777);
         this.var_1719 = 0;
         if(!this.var_416)
         {
            this.var_416 = class_47.method_24.var_12.globalActionBtnContainer.method_109(const_738);
            this.var_2443 = this.var_416.method_32();
         }
         this.var_416.visible = true;
         if(!this.var_264)
         {
            this.var_264 = class_47.method_24.var_12.globalCntTxt;
         }
         var _loc2_:int = Math.ceil(param1 / const_196);
         this.var_626 = _loc2_;
         this.var_272 = new Timer(const_196,this.var_626);
         this.var_272.delay = const_196;
         this.var_272.repeatCount = this.var_626--;
         this.var_272.addEventListener(TimerEvent.TIMER,this.method_686);
         this.var_272.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_580);
         this.var_272.start();
         this.var_264.visible = true;
         this.var_264.text = "" + _loc2_;
         this.method_887();
      }
      
      public final function method_1687(param1:int) : void
      {
         if(this.var_928)
         {
            return;
         }
         this.var_928 = true;
         class_47.method_29.method_75.addEventListener(class_969.const_239,this.method_777);
         this.var_1719 = 0;
         if(!this.var_416)
         {
            this.var_416 = class_47.method_24.var_12.globalActionBtnContainer.method_109(const_738);
         }
         this.var_416.visible = true;
         if(!this.var_264)
         {
            this.var_264 = class_47.method_24.var_12.globalCntTxt;
         }
         var _loc2_:int = Math.ceil(param1 / const_196);
         this.var_626 = Math.ceil(param1 / const_196);
         this.var_272 = new Timer(const_196,this.var_626);
         this.var_272.delay = const_196;
         this.var_272.repeatCount = this.var_626--;
         this.var_272.addEventListener(TimerEvent.TIMER,this.method_686);
         this.var_272.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_580);
         this.var_272.start();
         this.var_264.visible = true;
         this.var_264.text = "" + _loc2_;
         this.method_887();
      }
      
      private final function method_777(param1:class_969) : void
      {
         if(this.var_1719++ > 1)
         {
            if(class_325.method_21().method_2600)
            {
               this.method_987();
            }
         }
      }
      
      public final function method_987() : void
      {
         this.method_1354();
         class_1000.name_3.method_1436();
      }
      
      public final function method_1067() : void
      {
         this.method_1354();
      }
      
      private final function method_1354() : void
      {
         if(!this.var_928)
         {
            return;
         }
         class_47.method_29.method_75.removeEventListener(class_969.const_239,this.method_777);
         this.var_272.stop();
         this.var_272.removeEventListener(TimerEvent.TIMER,this.method_686);
         this.var_272.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_580);
         this.var_264.visible = false;
         this.var_264.text = "";
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COMMON_PLACEING);
         this.var_416.visible = false;
         this.var_928 = false;
         class_47.method_51.method_486();
      }
      
      private final function method_686(param1:TimerEvent) : void
      {
         this.var_264.text = "" + this.var_626--;
         this.method_887();
      }
      
      private final function method_580(param1:TimerEvent) : void
      {
         this.var_272.removeEventListener(TimerEvent.TIMER,this.method_686);
         this.var_272.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_580);
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COMMON_PLACEING);
         class_47.method_24.var_12.globalActionBtnContainer.method_109(const_738).visible = false;
         this.var_264.visible = false;
      }
      
      private final function method_887() : void
      {
         if(!this.var_264)
         {
            return;
         }
         this.var_264.x = this.var_416.x + this.var_416.width / 2 - this.var_264.width / 2;
         this.var_264.y = this.var_416.y + this.var_416.height;
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COUNTER_PLACEING);
      }
      
      public final function method_2464() : void
      {
         this.var_928 = false;
         try
         {
            this.var_416.visible = false;
            this.var_272.stop();
            this.var_264.visible = false;
            this.var_264.text = "";
         }
         catch(e:Error)
         {
         }
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COMMON_PLACEING);
         class_47.method_51.method_486();
      }
   }
}
