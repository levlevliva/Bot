package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_41.class_84;
   import package_41.class_93;
   import package_52.class_168;
   import package_6.class_14;
   import spark.components.VScrollBar;
   
   public final class class_838 implements class_14
   {
      
      public static const name_3:class_838 = new class_838();
       
      
      private var var_646:int = 0;
      
      public var name_7:class_84;
      
      public var name_13:String = "";
      
      public var var_1819:Boolean = false;
      
      public var var_649:Boolean = false;
      
      public var var_1020:class_913;
      
      public var var_2064:Boolean = false;
      
      public var var_253:Boolean = false;
      
      public function class_838(param1:Boolean = false, param2:class_84 = null, param3:String = "", param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:class_913 = null)
      {
         super();
         if(param2 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param2;
         }
         this.name_13 = param3;
         this.var_1819 = param4;
         this.var_649 = param6;
         if(param7 == null)
         {
            this.var_1020 = new class_913();
         }
         else
         {
            this.var_1020 = param7;
         }
         this.var_2064 = param5;
         this.var_253 = param1;
      }
      
      public function method_16() : int
      {
         return 15381;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
         this.name_13 = param1.readUTF();
         this.var_1819 = param1.readBoolean();
         this.var_649 = param1.readBoolean();
         this.var_1020 = class_913(class_93.method_26().method_25(param1.readShort()));
         this.var_1020.method_15(param1);
         this.var_2064 = param1.readBoolean();
         this.var_253 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15381);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         this.name_7.method_14(param1);
         param1.writeUTF(this.name_13);
         param1.writeBoolean(this.var_1819);
         param1.writeBoolean(this.var_649);
         this.var_1020.method_14(param1);
         param1.writeBoolean(this.var_2064);
         param1.writeBoolean(this.var_253);
      }
   }
}
