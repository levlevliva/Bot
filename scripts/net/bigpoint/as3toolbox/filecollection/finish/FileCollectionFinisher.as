package net.bigpoint.as3toolbox.filecollection.finish
{
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_14.class_47;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_137;
   import package_54.class_1089;
   import spark.components.VGroup;
   
   public class FileCollectionFinisher extends EventDispatcher
   {
       
      
      public var fileVO:FileVO;
      
      public var isFinished:Boolean = false;
      
      public function FileCollectionFinisher()
      {
         super();
      }
      
      public function start(param1:FileVO) : void
      {
         this.fileVO = param1;
      }
      
      public function clear() : void
      {
         this.fileVO.data = null;
         this.fileVO.loaded = false;
         this.isFinished = false;
         var _loc1_:FileCollectionEvent = new FileCollectionEvent(FileCollectionEvent.RESOURCE_CLEARED);
         _loc1_.text = this.fileVO.id;
         dispatchEvent(_loc1_);
      }
      
      public final function finish() : void
      {
         dispatchEvent(new FileCollectionFinishEvent(FileCollectionFinishEvent.FILE_FINISH,this));
      }
   }
}
