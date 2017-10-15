package package_52
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_286;
   import package_14.class_47;
   import package_17.class_326;
   import package_17.class_37;
   import package_5.class_12;
   import package_51.class_148;
   import spark.components.Group;
   
   public final class class_287 extends class_152
   {
      
      private static const const_916:ILogger = Log.getLogger("DisplayCategory");
      
      private static const const_566:String = "quality";
      
      private static const const_445:String = "clientSize";
      
      private static const const_1700:String = "clientSizeLow";
      
      private static const const_1393:String = "clientSizeHigh";
      
      private static const const_1284:String = "clientSizeFull";
      
      public static const const_1929:int = 0;
      
      public static const const_1579:int = 1;
      
      public static const const_1918:int = 2;
       
      
      protected var var_1318:Array;
      
      protected var var_1207:Array;
      
      protected var var_284:Sprite;
      
      protected var var_1727:XML;
      
      public function class_287(param1:XML)
      {
         super();
         this.var_1727 = param1;
         this.var_1318 = [];
         this.var_1207 = [];
      }
      
      public static function method_2911(param1:Boolean) : void
      {
      }
      
      private final function buildWidgets(param1:XML = null) : void
      {
         method_305(param1,this.method_129,this.method_2502);
         method_407(0,55);
         method_176(class_168.const_658).method_947.autoSize = TextFieldAutoSize.LEFT;
      }
      
      public final function method_546(param1:XML, param2:StyleSheet, param3:SWFFinisher) : DisplayObject
      {
         this.var_284 = new Sprite();
         name_16(param1,param2,param3,this.var_1318.length <= 0);
         this.buildWidgets();
         this.var_1318.push(super.addChild(this.var_284));
         var _loc4_:TextField = method_744(this.var_1727);
         var _loc5_:int = this.var_1207.length;
         _loc4_.htmlText = "<u>" + var_112.method_28(param1.@resKey) + "</u>";
         var _loc6_:class_1227 = new class_1227(_loc5_,_loc4_.width);
         _loc6_.addChild(_loc4_);
         _loc6_.addEventListener(MouseEvent.CLICK,this.method_2281);
         var _loc7_:class_1227 = this.var_1207[_loc5_ - 1] as class_1227;
         _loc6_.x = _loc5_ > 0?Number(_loc7_.x + _loc7_.width + 15):Number(0);
         _loc6_.y = 20;
         this.var_1207.push(_loc6_);
         super.addChild(_loc6_);
         return this.var_284;
      }
      
      private final function method_2281(param1:MouseEvent) : void
      {
         this.method_467((param1.target as class_1227).method_1619);
      }
      
      public final function method_467(param1:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:TextField = null;
         var _loc2_:Object = var_85.getStyle(this.var_1727.@inactStyle);
         var _loc3_:Object = var_85.getStyle(this.var_1727.@actStyle);
         var _loc4_:int = this.var_1318.length;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1 == _loc5_?_loc3_:_loc2_;
            _loc7_ = (this.var_1207[_loc5_] as Sprite).getChildAt(0) as TextField;
            (this.var_1318[_loc5_] as Sprite).visible = param1 == _loc5_;
            _loc7_.defaultTextFormat = var_85.transform(_loc6_);
            _loc7_.htmlText = "<u>" + _loc7_.text + "</u>";
            _loc5_++;
         }
      }
      
      protected final function method_2502(param1:class_148) : void
      {
         switch(param1.name_22.name_5)
         {
            case class_168.const_756:
               class_47.method_1361 = new Number(param1.name_22.name_7);
               break;
            case class_168.const_658:
               class_37.method_21().method_2684(int(param1.name_22.name_7));
               break;
            default:
               const_916.fatal("Unhandled action type: " + param1.name_22.name_5);
         }
      }
      
      public final function method_2880(param1:Boolean) : void
      {
         method_87(class_326.const_875,param1);
      }
      
      protected final function method_129(param1:class_148) : void
      {
         switch(param1.name_22.name_5)
         {
            case "quality_low":
               method_154(const_566,0);
               class_286.method_635(class_286.const_79);
               break;
            case "quality_normal":
               method_154(const_566,1);
               class_286.method_635(class_286.const_105);
               break;
            case "quality_high":
               method_154(const_566,2);
               class_286.method_635(class_286.const_122);
               break;
            case const_1700:
               method_154(const_445,const_1929);
               class_12.var_946 = class_12.const_463;
               break;
            case const_1393:
               method_154(const_445,const_1579);
               class_12.var_946 = class_12.const_442;
               break;
            case const_1284:
               method_154(const_445,const_1918);
               class_12.var_946 = class_12.const_15;
         }
      }
      
      public final function method_2525(param1:int) : void
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case class_12.const_463:
               _loc2_ = 0;
               break;
            case class_12.const_442:
               _loc2_ = 1;
               break;
            case class_12.const_130:
            case class_12.const_15:
            default:
               _loc2_ = 2;
         }
         class_12.var_946 = param1;
         method_154(const_445,_loc2_);
      }
      
      public final function method_3023(param1:int) : void
      {
         method_154(const_445,param1);
      }
      
      public final function method_2490(param1:int) : void
      {
         class_286.method_635(param1);
         method_154(const_566,param1);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         return this.var_284.addChild(param1);
      }
      
      public final function method_2140() : int
      {
         return method_176(class_168.const_756).method_217().value;
      }
      
      public final function method_2339() : int
      {
         return method_176(class_168.const_658).method_217().value;
      }
   }
}
