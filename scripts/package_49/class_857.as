package package_49
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_18.class_916;
   import package_41.class_93;
   import package_5.class_43;
   import package_52.class_1227;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_857 implements class_14
   {
      
      public static const name_3:class_857 = new class_857();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_7:int = 0;
      
      public var var_339:class_880;
      
      public function class_857(param1:int = 0, param2:int = 0, param3:class_880 = null)
      {
         super();
         this.name_5 = param2;
         this.name_7 = param1;
         if(param3 == null)
         {
            this.var_339 = new class_880();
         }
         else
         {
            this.var_339 = param3;
         }
      }
      
      public function method_16() : int
      {
         return -22162;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) >>> 7 % 16 | (65535 & this.name_7) << 16 - 7 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.var_339 = class_880(class_93.method_26().method_25(param1.readShort()));
         this.var_339.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-22162);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.name_7) << 7 % 16 | (65535 & this.name_7) >>> 16 - 7 % 16));
         this.var_339.method_14(param1);
      }
   }
}
