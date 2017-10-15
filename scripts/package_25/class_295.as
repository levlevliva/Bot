package package_25
{
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.StatisticIcon;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_14.class_47;
   import package_2.class_65;
   import package_206.class_1567;
   import package_36.class_1417;
   import package_5.class_22;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_295 extends class_294
   {
      
      private static const const_3:ILogger = Log.getLogger("ServerConsole");
       
      
      private var var_374:TextField;
      
      private var var_358:TextField;
      
      private var var_1549:class_1229;
      
      public function class_295(param1:class_65)
      {
         super("Server Overload",800,80);
         this.var_1549 = new class_1229(param1);
         this.method_2612();
         this.method_1881();
      }
      
      private final function method_2612() : void
      {
         this.var_374 = new TextField();
         this.var_374.type = TextFieldType.INPUT;
         addChild(this.var_374);
         this.var_374.x = 5;
         this.var_374.y = 25;
         this.var_374.width = 790;
         this.var_374.height = 22;
         this.var_374.textColor = name_73;
         this.var_374.border = true;
         this.var_374.borderColor = name_73;
         this.var_374.addEventListener(FocusEvent.FOCUS_IN,this.method_1966);
         this.var_374.addEventListener(FocusEvent.FOCUS_OUT,this.method_2162);
         this.var_374.defaultTextFormat = new TextFormat("Verdana",14,name_73);
      }
      
      private final function method_1881() : void
      {
         this.var_358 = new TextField();
         this.var_358.type = TextFieldType.INPUT;
         addChild(this.var_358);
         this.var_358.x = 5;
         this.var_358.y = 50;
         this.var_358.width = 790;
         this.var_358.height = 22;
         this.var_358.textColor = name_73;
         this.var_358.border = true;
         this.var_358.borderColor = name_73;
         this.var_358.addEventListener(FocusEvent.FOCUS_IN,this.method_2488);
         this.var_358.addEventListener(FocusEvent.FOCUS_OUT,this.method_1793);
         this.var_358.defaultTextFormat = new TextFormat("Verdana",14,name_73);
      }
      
      private final function method_2488(param1:FocusEvent) : void
      {
         class_47.method_24.method_364().addEventListener(KeyboardEvent.KEY_DOWN,this.method_1071);
      }
      
      private final function method_1793(param1:FocusEvent) : void
      {
         class_47.method_24.method_364().removeEventListener(KeyboardEvent.KEY_DOWN,this.method_1071);
      }
      
      private final function method_1071(param1:KeyboardEvent) : void
      {
         var _loc3_:Array = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         if(param1.keyCode != class_22.const_163)
         {
            return;
         }
         var _loc2_:String = this.var_358.text;
         if(_loc2_.length < 1)
         {
            return;
         }
         _loc3_ = _loc2_.split(class_22.const_1073);
         var _loc4_:String = _loc3_[0] as String;
         _loc3_.shift();
         var _loc5_:int = _loc3_.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc3_[_loc6_];
            _loc8_ = _loc7_.indexOf("(");
            if(_loc8_ >= 0)
            {
               _loc3_[_loc6_] = this.var_1549.method_1458(_loc7_.substr(0,_loc8_),_loc7_.substring(_loc8_ + 1,_loc7_.indexOf(")")).split(class_22.const_1073));
            }
            _loc6_++;
         }
         this.var_1549.method_2626(_loc4_,_loc3_);
      }
      
      private final function method_1966(param1:FocusEvent) : void
      {
         class_47.method_24.method_364().addEventListener(KeyboardEvent.KEY_DOWN,this.method_1448);
      }
      
      private final function method_2162(param1:FocusEvent) : void
      {
         class_47.method_24.method_364().removeEventListener(KeyboardEvent.KEY_DOWN,this.method_1448);
      }
      
      private final function method_1448(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         if(param1.keyCode == class_22.const_163)
         {
            _loc2_ = this.var_374.text;
            this.var_1549;
            const_3.warn("Simulate Client-to-Server Command " + _loc2_);
         }
      }
   }
}
