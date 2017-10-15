package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.XMLSocket;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_34.class_107;
   import package_41.class_93;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.VGroup;
   
   public final class class_714 implements class_14
   {
      
      public static const name_3:class_714 = new class_714();
       
      
      private var var_646:int = 0;
      
      public var var_828:class_923;
      
      public var var_359:class_938;
      
      public function class_714(param1:class_938 = null, param2:class_923 = null)
      {
         super();
         if(param2 == null)
         {
            this.var_828 = new class_923();
         }
         else
         {
            this.var_828 = param2;
         }
         if(param1 == null)
         {
            this.var_359 = new class_938();
         }
         else
         {
            this.var_359 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 14564;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_828 = class_923(class_93.method_26().method_25(param1.readShort()));
         this.var_828.method_15(param1);
         this.var_359 = class_938(class_93.method_26().method_25(param1.readShort()));
         this.var_359.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14564);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         this.var_828.method_14(param1);
         this.var_359.method_14(param1);
      }
   }
}
