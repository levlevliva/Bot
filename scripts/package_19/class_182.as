package package_19
{
   import com.adobe.crypto.MD5Stream;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_1607;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuEquipmentTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuEquipmentTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_433;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_110.class_506;
   import package_111.class_774;
   import package_121.class_841;
   import package_122.class_634;
   import package_14.class_47;
   import package_14.class_88;
   import package_17.class_151;
   import package_215.class_1600;
   import package_34.class_116;
   import package_34.class_1526;
   import package_46.class_1501;
   import package_5.class_1239;
   import package_51.class_1005;
   import package_51.class_1355;
   import package_54.class_319;
   import package_59.class_180;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_182 extends URLLoader
   {
       
      
      private const const_2795:int = 1024;
      
      private const const_2497:Number = 0.1;
      
      public var name_5:int;
      
      private var var_378:ByteArray;
      
      private var var_1067:int = 0;
      
      private var var_963:TweenMax;
      
      private var var_2215:Boolean = false;
      
      private var var_1416:MD5Stream;
      
      public function class_182(param1:URLRequest = null)
      {
         this.var_1416 = new MD5Stream();
         super(param1);
         this.dataFormat = URLLoaderDataFormat.BINARY;
         this.method_1161();
      }
      
      private final function method_1161() : void
      {
         this.method_1021();
         this.addEventListener(Event.COMPLETE,this.method_620);
         this.addEventListener(IOErrorEvent.IO_ERROR,this.method_2548);
         this.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1597);
         this.addEventListener(Event.OPEN,this.method_561);
         this.addEventListener(Event.CLOSE,this.method_561);
      }
      
      private final function method_1021() : void
      {
         if(this.hasEventListener(Event.CLOSE))
         {
            this.removeEventListener(Event.CLOSE,this.method_561);
         }
         if(this.hasEventListener(Event.OPEN))
         {
            this.removeEventListener(Event.OPEN,this.method_561);
         }
         if(this.hasEventListener(Event.COMPLETE))
         {
            this.removeEventListener(Event.COMPLETE,this.method_620);
         }
         if(this.hasEventListener(IOErrorEvent.IO_ERROR))
         {
            this.removeEventListener(IOErrorEvent.IO_ERROR,this.method_620);
         }
         if(this.hasEventListener(SecurityErrorEvent.SECURITY_ERROR))
         {
            this.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_620);
         }
      }
      
      override public function load(param1:URLRequest) : void
      {
         super.load(param1);
         TweenMax.killDelayedCallsTo(this.readChunks);
         this.dataFormat = URLLoaderDataFormat.BINARY;
         this.method_1161();
         this.var_1067 = 0;
      }
      
      public final function method_119() : void
      {
         this.method_1021();
         TweenMax.killDelayedCallsTo(this.readChunks);
         if(this.var_963)
         {
            this.var_963.kill();
         }
         this.var_963 = null;
         if(this.var_378)
         {
            this.var_378.clear();
         }
         this.var_378 = null;
      }
      
      private final function method_620(param1:Event) : void
      {
         this.var_378 = new ByteArray();
         this.var_378.writeBytes(this.data);
         this.var_378.position = 0;
         this.data = null;
         if(this.var_378.length == 0)
         {
            this.method_558("");
            return;
         }
         this.var_963 = TweenMax.delayedCall(0.1,this.readChunks);
      }
      
      private final function readChunks() : void
      {
         var _loc5_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = 1024;
         var _loc3_:int = this.var_1067 + 1024;
         if(_loc3_ >= this.var_378.length)
         {
            if(1024 >= this.var_378.length)
            {
               _loc2_ = this.var_378.length;
            }
            else
            {
               _loc2_ = this.var_378.length - this.var_1067;
            }
            _loc1_ = true;
         }
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeBytes(this.var_378,this.var_1067,_loc2_);
         this.var_1416.update(_loc4_);
         if(_loc1_)
         {
            _loc5_ = this.var_1416.complete();
            this.method_558(_loc5_);
            if(this.var_1416)
            {
               this.var_1416.resetFields();
            }
            if(this.var_378)
            {
               this.var_378.clear();
            }
            this.data = null;
            return;
         }
         this.var_1067 = this.var_1067 + 1024;
         this.var_963.kill();
         this.var_963 = null;
         this.var_963 = TweenMax.delayedCall(0.1,this.readChunks);
      }
      
      private final function method_558(param1:String) : void
      {
         var _loc2_:class_180 = new class_180(class_180.const_342);
         _loc2_.var_1662 = this;
         _loc2_.var_327 = param1;
         _loc2_.var_2354 = this.name_5;
         dispatchEvent(_loc2_);
      }
      
      private final function method_2548(param1:IOErrorEvent) : void
      {
         this.method_558("");
      }
      
      private final function method_1597(param1:SecurityErrorEvent) : void
      {
         this.method_558("");
      }
      
      private final function method_561(param1:Event) : void
      {
         switch(param1.type)
         {
            case Event.OPEN:
               this.var_2215 = true;
               break;
            case Event.COMPLETE:
            case Event.CLOSE:
               this.var_2215 = false;
         }
      }
   }
}
