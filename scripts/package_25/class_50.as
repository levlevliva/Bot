package package_25
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_107.class_693;
   import package_14.class_199;
   import package_14.class_47;
   import package_16.class_28;
   import package_2.class_65;
   import package_213.class_1522;
   import package_23.class_42;
   import package_41.class_93;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_50 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("DebugView");
      
      public static var var_2377:class_65;
       
      
      private var var_560:TextField;
      
      private var name_88:TextFormat;
      
      private var var_1891:Timer;
      
      private var var_516:TextField;
      
      private var name_37:class_199;
      
      private var var_2364:int = 0;
      
      private var var_977:class_295;
      
      private var var_2438:class_28;
      
      public var var_1597:class_291;
      
      public var var_2518:TextField;
      
      public function class_50(param1:class_28, param2:int = 0, param3:int = 0)
      {
         this.name_88 = new TextFormat();
         this.var_1891 = new Timer(1000);
         super();
         this.var_2438 = param1;
         this.name_37 = class_47.name_37;
         this.x = param2;
         this.y = param3 - 50;
         this.method_363();
         this.var_1891.addEventListener(TimerEvent.TIMER,this.method_1636);
         addEventListener(Event.ENTER_FRAME,this.method_1028);
         this.var_1891.start();
         this.initEntryRemoveLogger();
         this.initTestButtons();
         visible = false;
      }
      
      public final function method_2084() : void
      {
         visible = !visible;
      }
      
      public final function method_1864() : void
      {
         if(this.var_977 != null)
         {
            this.var_977.visible = !this.var_977.visible;
         }
         else
         {
            this.var_977 = new class_295(var_2377);
            this.var_977.x = 20;
            this.var_977.y = 60;
            addChild(this.var_977);
         }
      }
      
      private final function method_363() : void
      {
         this.name_88.font = "Verdana";
         this.name_88.size = 9;
         this.var_560 = new TextField();
         this.var_560.defaultTextFormat = this.name_88;
         this.var_560.autoSize = TextFieldAutoSize.LEFT;
         this.var_560.textColor = 16777215;
         this.var_560.background = true;
         this.var_560.backgroundColor = 6710886;
         this.var_560.antiAliasType = "advanced";
         this.var_560.selectable = false;
         this.var_560.text = "FPS: ";
         this.var_516 = new TextField();
         this.var_516.defaultTextFormat = this.name_88;
         this.var_516.autoSize = TextFieldAutoSize.LEFT;
         this.var_516.textColor = 16777215;
         this.var_516.background = true;
         this.var_516.backgroundColor = 6710886;
         this.var_516.antiAliasType = "advanced";
         this.var_516.selectable = false;
         this.var_516.text = "CamPos: ";
         this.var_516.y = -15;
         addChild(this.var_560);
         addChild(this.var_516);
      }
      
      private final function method_1636(param1:TimerEvent) : void
      {
         var _loc2_:* = Number(System.totalMemory / 1024 / 1024).toFixed(2) + "Mb";
         this.var_560.text = "FPS: " + class_47.method_584 + " | MEM: " + _loc2_ + " | FOCUS: " + class_47.method_49.focus + "| Traffic " + this.var_2364;
         this.var_2364 = 0;
      }
      
      private final function method_2552() : void
      {
         this.var_516.text = "CamPos: " + int(this.name_37.var_120.x) + ":" + int(this.name_37.var_120.y) + "MouseCoord: " + int(class_47.method_206.x) + ":" + int(class_47.method_206.y);
      }
      
      private final function method_1028(param1:Event) : void
      {
         this.method_2552();
      }
      
      private final function initEntryRemoveLogger() : void
      {
         this.var_1597 = new class_291();
         this.var_1597.x = 150;
         this.var_1597.y = 20;
         addChild(this.var_1597);
      }
      
      private final function initTestButtons() : void
      {
         if(!class_42.method_21().var_287.isLoaded("prototypeButton"))
         {
            class_42.method_21().var_287.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_978);
            class_42.method_21().var_287.load("prototypeButton");
         }
         else
         {
            this.method_978(null);
         }
      }
      
      private final function method_978(param1:FileCollectionFileLoadEvent) : void
      {
         var _loc2_:SWFFinisher = class_42.method_21().var_287.getFinisher("prototypeButton") as SWFFinisher;
         var _loc3_:class_293 = new class_293(_loc2_.getEmbeddedMovieClip("prototypeButton"));
         _loc3_.x = -150;
         _loc3_.y = 25;
         _loc3_.addEventListener(MouseEvent.CLICK,this.method_2698);
         _loc3_.method_106("Disconnect");
         addChild(_loc3_);
         var _loc4_:class_293 = new class_293(_loc2_.getEmbeddedMovieClip("prototypeButton"));
         _loc4_.x = -150;
         _loc4_.y = 55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.method_2754);
         _loc4_.method_106("ActiveShips");
         addChild(_loc4_);
         var _loc5_:class_297 = new class_297(_loc2_.getEmbeddedMovieClip("prototypeButton"));
         _loc5_.x = -150;
         _loc5_.y = 85;
         _loc5_.method_106("UIConfig");
         addChild(_loc5_);
         var _loc6_:class_297 = new class_297(_loc2_.getEmbeddedMovieClip("prototypeButton"));
         _loc6_.x = -150;
         _loc6_.y = 115;
         _loc6_.addEventListener(MouseEvent.CLICK,this.method_2045);
         _loc6_.method_106("UISwitch");
         addChild(_loc6_);
      }
      
      private final function method_2045(param1:MouseEvent) : void
      {
         if(class_47.method_24.var_12.visible)
         {
            class_47.method_24.var_12.visible = false;
         }
         else
         {
            class_47.method_24.var_12.visible = true;
         }
      }
      
      private final function method_2698(param1:MouseEvent) : void
      {
         System.gc();
         const_80.warn("Disconnect engaged.");
      }
      
      private final function method_2754(param1:MouseEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:Object = class_47.method_29.method_282();
         var _loc3_:int = 0;
         for(_loc4_ in _loc2_)
         {
            _loc3_++;
         }
         const_80.warn("Num of active ships: " + _loc3_);
      }
   }
}
