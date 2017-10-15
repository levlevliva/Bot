package package_33
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_1468;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.deathpopup.component.KillerName;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildSearchListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentIslandsListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_14.class_47;
   import package_16.class_28;
   import package_163.class_843;
   import package_163.class_873;
   import package_183.class_1453;
   import package_23.class_42;
   import package_39.class_1366;
   import package_41.class_84;
   import package_48.class_1534;
   import package_5.class_123;
   import package_5.class_984;
   import package_67.class_1051;
   import package_7.class_1039;
   import package_89.class_1346;
   import package_92.class_336;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_66
   {
      
      private static const const_80:ILogger = Log.getLogger("SpeedTest");
       
      
      private var var_1612:Date;
      
      private var var_354:URLLoader;
      
      private var var_1722:class_555;
      
      public function class_66()
      {
         this.var_354 = new URLLoader();
         super();
      }
      
      public final function method_2869(param1:String, param2:class_555) : void
      {
         this.var_1722 = param2;
         var _loc3_:URLRequest = class_24.method_434(param1,"?",true,true);
         const_80.info("run: " + _loc3_.url);
         this.var_354.addEventListener(Event.COMPLETE,this.method_2615);
         this.var_354.addEventListener(IOErrorEvent.IO_ERROR,this.method_549);
         this.var_354.addEventListener(IOErrorEvent.NETWORK_ERROR,this.method_549);
         this.var_354.addEventListener(IOErrorEvent.VERIFY_ERROR,this.method_549);
         this.var_354.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_549);
         this.var_354.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.method_2200);
         this.method_1321();
         this.var_354.load(_loc3_);
      }
      
      private final function method_2200(param1:HTTPStatusEvent) : void
      {
         const_80.warn("HTTPStatus: " + param1.status);
      }
      
      private final function method_549(param1:Event) : void
      {
         const_80.error("ERROR " + param1);
         this.var_1722.method_2785(param1,this.var_354);
      }
      
      private final function method_2615(param1:Event) : void
      {
         var _loc2_:Number = this.method_990(this.var_354.bytesTotal);
         const_80.info("sec Speed: " + Math.round(_loc2_) + "kb/sec");
         this.var_1722.method_2474(_loc2_,this.var_354);
      }
      
      public final function method_1321() : void
      {
         this.var_1612 = new Date();
      }
      
      public final function method_990(param1:int) : int
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = param1 / 1024;
         var _loc4_:Number = (_loc2_.getTime() - this.var_1612.getTime()) / 1000;
         var _loc5_:Number = _loc3_ / _loc4_;
         return _loc5_;
      }
   }
}
