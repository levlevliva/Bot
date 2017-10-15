package package_14
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import package_104.class_641;
   import package_108.class_581;
   import package_179.class_1064;
   import package_186.class_1137;
   import package_190.class_1181;
   import package_2.class_65;
   import package_26.class_1086;
   import package_32.class_64;
   import package_43.class_1189;
   import package_5.class_22;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public class class_87
   {
      
      protected static const const_3:ILogger = Log.getLogger("TextResourceManager");
       
      
      protected var var_1091:XML;
      
      protected var var_554:Dictionary;
      
      protected var var_2060:String;
      
      protected var var_354:URLLoader;
      
      protected var var_1494:Function;
      
      public function class_87(param1:String, param2:String, param3:Function)
      {
         var request:URLRequest = null;
         var ressURL:String = param1;
         var lang:String = param2;
         var onCompleteCallBack:Function = param3;
         this.var_554 = new Dictionary();
         super();
         class_58.method_21().method_82("loading text resources");
         this.var_2060 = lang;
         this.var_1494 = onCompleteCallBack;
         request = new URLRequest(ressURL + "?" + class_24.method_521(8));
         const_3.info("Load text resource: " + request.url + ": " + lang);
         this.var_354 = new URLLoader();
         this.var_354.load(request);
         this.var_354.addEventListener(IOErrorEvent.IO_ERROR,function():void
         {
            const_3.error("ERROR LOADING text resource: " + request.url);
         });
         this.var_354.addEventListener(Event.COMPLETE,this.method_620);
      }
      
      public static function method_261(param1:String) : String
      {
         return param1.replace(/<br.*?>/g,class_22.const_10);
      }
      
      protected function method_620(param1:Event) : void
      {
         var itemList:XMLList = null;
         var itemElement:XML = null;
         var key:String = null;
         var svalue:String = null;
         var event:Event = param1;
         try
         {
            this.var_1091 = new XML(this.var_354.data);
            itemList = this.var_1091["item"];
            for each(itemElement in itemList)
            {
               key = itemElement.@name;
               svalue = itemElement.toString();
               this.var_554[key] = svalue;
            }
         }
         catch(e:Error)
         {
            const_3.error("ERROR PARSING text resource");
            return;
         }
         this.var_1494();
      }
      
      public final function method_120() : Boolean
      {
         return this.var_1091 != null;
      }
      
      public function method_28(param1:String, param2:Boolean = true, param3:Boolean = true) : String
      {
         var _loc4_:String = this.var_554[param1] as String;
         if(_loc4_ == null)
         {
            if(param2)
            {
               return "";
            }
            if(param3)
            {
               return "%" + param1;
            }
            return null;
         }
         switch(this.var_2060)
         {
            case "ja":
            case "ko":
            case "zh":
               _loc4_ = _loc4_.replace("<b>","").replace("</b>","");
            default:
               _loc4_ = _loc4_.replace("<b>","").replace("</b>","");
         }
         return _loc4_;
      }
      
      public final function method_2900(param1:String) : String
      {
         var _loc2_:String = null;
         if(this.var_554.hasOwnProperty(param1))
         {
            _loc2_ = this.var_554[param1] as String;
         }
         else
         {
            _loc2_ = param1;
         }
         return _loc2_;
      }
      
      public function method_20(param1:String) : String
      {
         var _loc2_:String = this.method_28(param1);
         return !_loc2_?param1:_loc2_;
      }
      
      public final function method_459(param1:String) : String
      {
         return method_261(this.method_20(param1));
      }
   }
}
