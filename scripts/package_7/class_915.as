package package_7
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.ToolTipEvent;
   import package_111.class_696;
   import package_184.class_1135;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_915 implements class_14
   {
      
      public static const name_3:class_915 = new class_915();
       
      
      private var var_646:int = 0;
      
      public var var_246:String = "";
      
      public var name_18:Vector.<String>;
      
      public function class_915(param1:String = "", param2:Vector.<String> = null)
      {
         super();
         this.var_246 = param1;
         if(param2 == null)
         {
            this.name_18 = new Vector.<String>();
         }
         else
         {
            this.name_18 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -24031;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_246 = param1.readUTF();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_18.length > 0)
         {
            this.name_18.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.name_18.push(param1.readUTF());
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:String = null;
         param1.writeShort(-24031);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeUTF(this.var_246);
         param1.writeByte(this.name_18.length);
         for each(_loc2_ in this.name_18)
         {
            param1.writeUTF(_loc2_);
         }
      }
   }
}
