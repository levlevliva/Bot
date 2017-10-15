package package_147
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_111.class_1176;
   import package_111.class_726;
   import package_14.class_47;
   import package_17.class_54;
   import package_210.class_1364;
   import package_30.class_62;
   import package_34.class_1526;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_43;
   import package_6.class_14;
   import package_71.class_201;
   import package_72.class_203;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_695 implements class_14
   {
      
      public static const name_3:class_695 = new class_695();
       
      
      private var var_646:int = 0;
      
      public var var_760:int = 0;
      
      public var var_1963:int = 0;
      
      public var var_905:int = 0;
      
      public function class_695(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_760 = param2;
         this.var_1963 = param1;
         this.var_905 = param3;
      }
      
      public function method_16() : int
      {
         return -7665;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_760 = param1.readInt();
         this.var_760 = this.var_760 << 10 % 32 | this.var_760 >>> 32 - 10 % 32;
         this.var_1963 = param1.readShort();
         this.var_905 = param1.readInt();
         this.var_905 = this.var_905 << 5 % 32 | this.var_905 >>> 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7665);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeInt(this.var_760 >>> 10 % 32 | this.var_760 << 32 - 10 % 32);
         param1.writeShort(this.var_1963);
         param1.writeInt(this.var_905 >>> 5 % 32 | this.var_905 << 32 - 5 % 32);
      }
   }
}
