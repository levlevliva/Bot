package package_90
{
   import com.bigpoint.seafight.tools.dragging.commands.IDragDropMoveCommand;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_210.class_1364;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.VGroup;
   
   public final class class_481 implements class_14
   {
      
      public static const name_3:class_481 = new class_481();
       
      
      private var var_646:int = 0;
      
      public var var_233:class_316;
      
      public function class_481(param1:class_316 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_233 = new class_316();
         }
         else
         {
            this.var_233 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -24983;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_233 = class_316(class_93.method_26().method_25(param1.readShort()));
         this.var_233.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24983);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         this.var_233.method_14(param1);
      }
   }
}
