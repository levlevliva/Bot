package package_27
{
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.text.TextFormat;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_904;
   import package_41.class_89;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_298 extends Event
   {
      
      public static const const_2272:String = "COMPLETE";
      
      public static const const_1617:String = "FAIL";
      
      public static const const_1028:String = "ERROR";
      
      public static const const_2251:String = "CANCEL";
       
      
      public var name_79:String;
      
      public function class_298(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
