package net.bigpoint.as3toolbox.filecollection.finish
{
   import com.adobe.utils.IntUtil;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationNameItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.getDefinitionNames;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_105.class_369;
   import package_105.class_529;
   import package_111.class_741;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_140.class_540;
   import package_165.class_951;
   import package_212.class_1537;
   import package_26.class_1354;
   import package_26.class_960;
   import package_28.class_56;
   import package_34.class_1526;
   import package_39.class_1367;
   import package_43.class_105;
   import package_48.class_996;
   import package_53.class_157;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_1442;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class SWFFinisher extends FileCollectionFinisher
   {
       
      
      protected var loader:Loader;
      
      private var readOnlyObjectCache:Dictionary;
      
      public function SWFFinisher()
      {
         this.readOnlyObjectCache = new Dictionary();
         super();
      }
      
      override public function start(param1:FileVO) : void
      {
         var fileVO:FileVO = param1;
         super.start(fileVO);
         try
         {
            this.loader = new Loader();
            this.loader.contentLoaderInfo.addEventListener(Event.INIT,this.onInit);
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handleLoadComplete);
            this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.loader.loadBytes(fileVO.data);
            return;
         }
         catch(e:Error)
         {
            "ERROR : " + e.message;
            return;
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.loader = null;
      }
      
      private final function onInit(param1:Event) : void
      {
      }
      
      private final function onError(param1:IOErrorEvent) : void
      {
      }
      
      protected final function handleLoadComplete(param1:Event) : void
      {
         finish();
         this.stopAnimation(this.loader.content);
      }
      
      private final function stopAnimation(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = 0;
         var _loc4_:DisplayObjectContainer = null;
         if(param1 is DisplayObjectContainer)
         {
            if(param1 is MovieClip)
            {
               (param1 as MovieClip).stop();
            }
            _loc2_ = param1 as DisplayObjectContainer;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.numChildren)
            {
               _loc4_ = _loc2_.getChildAt(_loc3_) as DisplayObjectContainer;
               if(_loc4_ != null)
               {
                  if(_loc4_ is MovieClip)
                  {
                     (_loc4_ as MovieClip).stop();
                  }
                  if(_loc4_.numChildren > 0)
                  {
                     this.stopAnimation(_loc4_ as DisplayObject);
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public final function getDefinitions() : Array
      {
         return getDefinitionNames(fileVO.data);
      }
      
      public final function getClassRefeference(param1:String) : Class
      {
         return this.loader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
      }
      
      public final function getEmbeddedSprite(param1:String, param2:Boolean = false) : Sprite
      {
         return this.getEmbeddedObject(param1,param2) as Sprite;
      }
      
      public final function getEmbededMovieClip(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = this.getEmbededObject(param1,param2) as MovieClip;
         return _loc3_;
      }
      
      public final function getEmbeddedMovieClip(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = this.getEmbeddedObject(param1,param2) as MovieClip;
         return _loc3_;
      }
      
      public final function getEmbededObject(param1:String, param2:Boolean = false) : Object
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return cachedReadonlyObject;
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef() as Object;
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef() as Object;
         }
         return cachedReadonlyObject;
      }
      
      public final function getEmbeddedObject(param1:String, param2:Boolean = false) : Object
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return cachedReadonlyObject;
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef() as Object;
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef() as Object;
         }
         return cachedReadonlyObject;
      }
      
      private final function embeddedObjectNotFound(param1:String) : void
      {
         var _loc2_:FileCollectionEvent = new FileCollectionEvent(FileCollectionEvent.EMBEDDED_OBJECT_NOT_FOUND);
         var _loc3_:* = "embeded object \'" + param1 + "\' not found in \'" + fileVO.id + "\'";
         _loc2_.text = _loc3_;
         dispatchEvent(_loc2_);
         throw new Error(_loc3_);
      }
      
      public final function getEmbededBitmapData(param1:String, param2:Boolean = false) : BitmapData
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return BitmapData(cachedReadonlyObject);
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef(0,0);
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef(0,0);
         }
         return BitmapData(cachedReadonlyObject);
      }
      
      public final function getEmbeddedBitmapData(param1:String, param2:Boolean = false) : BitmapData
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return BitmapData(cachedReadonlyObject);
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef(0,0);
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef(0,0);
         }
         return BitmapData(cachedReadonlyObject);
      }
      
      public final function getEmbededSound(param1:String) : Sound
      {
         var classRef:Class = null;
         var id:String = param1;
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         return new classRef();
      }
      
      public final function getEmbeddedSound(param1:String) : Sound
      {
         var classRef:Class = null;
         var id:String = param1;
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         return new classRef();
      }
      
      public final function getAsDisplayObject() : DisplayObject
      {
         return this.loader.content;
      }
      
      public final function getEmbededBitmap(param1:String, param2:Boolean = false) : Bitmap
      {
         return new Bitmap(this.getEmbededBitmapData(param1,param2));
      }
      
      public final function getEmbeddedBitmap(param1:String, param2:Boolean = false) : Bitmap
      {
         return new Bitmap(this.getEmbeddedBitmapData(param1,param2));
      }
      
      private final function createDebugView(param1:DisplayObject) : void
      {
         var _loc2_:TextField = new TextField();
         _loc2_.selectable = false;
         _loc2_.background = true;
         _loc2_.backgroundColor = 7829367;
         _loc2_.autoSize = TextFieldAutoSize.LEFT;
         _loc2_.multiline = false;
         _loc2_.text = fileVO.id + ":" + fileVO.hash;
         _loc2_.setTextFormat(new TextFormat("Verdana",10,16777215,true));
         _loc2_.y = DisplayObjectContainer(param1).height;
         DisplayObjectContainer(param1).addChild(_loc2_);
      }
   }
}
