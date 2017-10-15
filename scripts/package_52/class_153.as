package package_52
{
   import com.bigpoint.seafight.tools.class_181;
   import com.greensock.TimelineMax;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_14.class_47;
   import package_29.class_57;
   import package_55.class_1007;
   import package_55.class_164;
   
   public final class class_153 extends class_152
   {
      
      private static const const_80:ILogger = Log.getLogger("ControlsCategory");
      
      public static const const_793:int = -1;
      
      public static const const_951:int = 0;
      
      public static const const_1777:int = 1;
      
      public static const const_1193:int = 2;
       
      
      private var var_1158:Array;
      
      private var var_454;
      
      public function class_153()
      {
         this.var_1158 = new Array();
         super();
      }
      
      public final function method_503(param1:XML = null) : void
      {
         var _loc2_:XML = null;
         var _loc3_:class_164 = null;
         var _loc4_:String = null;
         var _loc5_:XML = null;
         var _loc6_:int = 0;
         var _loc7_:class_164 = null;
         method_305(param1,null,null);
         this.method_1945(var_18.config[0].msgFieldConfig[0]);
         for each(_loc2_ in var_18["keyAssignScrap"])
         {
            _loc3_ = method_1106();
            _loc3_.method_2723(_loc2_.@id);
            if(_loc2_.@labelResKey != "")
            {
               _loc3_.method_106(var_112.method_28(_loc2_.@labelResKey));
            }
            _loc4_ = var_112.method_28("key_" + _loc2_.@defaultKey,false,false);
            if(_loc4_ != null)
            {
               _loc3_.method_336(_loc4_,new Number(_loc2_.@defaultKey));
            }
            else
            {
               _loc3_.method_336(String.fromCharCode(new Number(_loc2_.@defaultKey)),new Number(_loc2_.@defaultKey));
            }
            addChild(_loc3_);
            this.var_1158.push(_loc3_);
            var_196.push(_loc3_);
         }
         this.method_407(0,15);
         if(param1)
         {
            for each(_loc5_ in param1["keyAssignScrap"])
            {
               _loc6_ = 0;
               while(_loc6_ < this.var_1158.length)
               {
                  _loc7_ = this.var_1158[_loc6_] as class_164;
                  if(_loc7_.method_899() == _loc5_.@id)
                  {
                     this.method_1003(_loc7_,_loc5_.@id,_loc5_.@keyCode);
                  }
                  _loc6_++;
               }
            }
         }
      }
      
      public final function method_149(param1:String, param2:int) : void
      {
         var _loc3_:class_164 = null;
         for each(_loc3_ in this.var_1158)
         {
            if(_loc3_.method_899() == param1)
            {
               this.method_1003(_loc3_,param1,param2);
               return;
            }
         }
         throw new class_57(param1,this);
      }
      
      public final function method_155(param1:String) : int
      {
         var _loc2_:class_164 = null;
         for each(_loc2_ in this.var_1158)
         {
            if(_loc2_.method_899() == param1)
            {
               return _loc2_.method_1932;
            }
         }
         throw new class_57(param1,this);
      }
      
      private final function method_1003(param1:class_164, param2:String, param3:int) : void
      {
         var _loc4_:String = var_112.method_28("key_" + param3,false,false);
         if(_loc4_ != null)
         {
            param1.method_336(_loc4_,param3);
         }
         else
         {
            param1.method_336(String.fromCharCode(param3),param3);
         }
         class_47.method_774.method_1421(param2,param3,true);
      }
      
      private final function method_1945(param1:XML) : void
      {
         var _loc2_:Object = var_85.getStyle(param1.@style);
         this.var_454 = new TextField();
         this.var_454.x = param1.@xPos;
         this.var_454.y = param1.@yPos;
         this.var_454.width = param1.@width;
         this.var_454.height = param1.@height;
         this.var_454.multiline = _loc2_["multiline"] == "true";
         this.var_454.selectable = _loc2_["selectable"] == "true";
         this.var_454.mouseEnabled = _loc2_["mouseEnabled"] == "true";
         this.var_454.border = _loc2_["border"] == "true";
         this.var_454.styleSheet = var_85;
         addChild(this.var_454);
      }
      
      public final function method_484(param1:int) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case const_951:
               _loc2_ = var_112.method_28("kCon_presskey");
               break;
            case const_1777:
               _loc2_ = var_112.method_28("kCon_wrongkey");
               break;
            case const_1193:
               _loc2_ = var_112.method_28("kCon_doublekey");
               break;
            default:
               _loc2_ = "";
         }
         this.var_454.htmlText = _loc2_;
      }
      
      override protected function method_407(param1:int = 0, param2:int = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc3_:int = var_18.@columns;
         var _loc4_:int = var_18.@rows;
         var _loc5_:int = var_18.@hSpacer;
         var _loc6_:int = var_18.@vSpacer;
         var _loc9_:int = 0;
         while(_loc9_ < var_196.length)
         {
            _loc10_ = _loc9_;
            if(!(var_196[_loc9_] is class_1007))
            {
               if(var_18.@place == "vert")
               {
                  if(_loc9_ / _loc4_ <= _loc3_)
                  {
                     _loc8_ = Math.ceil(_loc10_ / _loc4_);
                     _loc7_ = _loc10_ % _loc4_;
                     if(_loc7_ == 0)
                     {
                        _loc7_ = _loc4_;
                     }
                     if(_loc8_ == 0)
                     {
                        _loc8_++;
                     }
                     var_196[_loc9_].x = param1 + (var_196[_loc9_].width + new Number(_loc5_)) * (_loc8_ - 1) + 3;
                     var_196[_loc9_].y = param2 + (var_196[_loc9_].height + new Number(_loc6_)) * (_loc7_ - 1);
                  }
                  else
                  {
                     const_80.warn("To much Items to place! bla");
                  }
               }
               else if(var_18.@place == "horz")
               {
                  if(_loc9_ / _loc3_ <= _loc4_)
                  {
                     _loc7_ = Math.ceil(_loc10_ / _loc3_);
                     _loc11_ = Math.floor(_loc10_ / _loc3_) * _loc3_;
                     _loc8_ = _loc10_ - _loc11_;
                     if(_loc7_ == 0)
                     {
                        _loc7_++;
                     }
                     if(_loc8_ == 0)
                     {
                        _loc8_ = _loc3_;
                     }
                     var_196[_loc9_].x = param1 + (var_196[_loc9_].width + new Number(_loc5_)) * (_loc8_ - 1) + 3;
                     var_196[_loc9_].y = param2 + (var_196[_loc9_].height + new Number(_loc6_)) * (_loc7_ - 1);
                  }
                  else
                  {
                     const_80.warn("To much Items to place!");
                  }
               }
            }
            _loc9_++;
         }
      }
   }
}
