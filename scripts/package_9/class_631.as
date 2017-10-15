package package_9
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_96;
   import package_152.class_852;
   import package_41.class_84;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_6.class_14;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.layouts.VerticalLayout;
   
   public final class class_631 implements class_14
   {
      
      public static const name_3:class_631 = new class_631();
       
      
      private var var_646:int = 0;
      
      public var name_6:class_91;
      
      public function class_631(param1:class_91 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 16014;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 4 % 16 | (65535 & this.name_6.var_8) << 16 - 4 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 6 % 16 | (65535 & this.name_6.var_9) << 16 - 6 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(16014);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 4 % 16 | (65535 & this.name_6.var_8) >>> 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 6 % 16 | (65535 & this.name_6.var_9) >>> 16 - 6 % 16));
      }
   }
}
