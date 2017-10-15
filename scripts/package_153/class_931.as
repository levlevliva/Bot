package package_153
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroupProperties;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicatorList;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_118.class_539;
   import package_14.class_47;
   import package_190.class_1168;
   import package_210.class_1364;
   import package_214.class_1558;
   import package_34.class_1576;
   import package_49.class_140;
   import package_5.class_43;
   import package_5.class_984;
   import package_6.class_14;
   import package_89.class_1378;
   import package_89.class_1379;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   public final class class_931 implements class_14
   {
      
      public static const name_3:class_931 = new class_931();
       
      
      private var var_646:int = 0;
      
      public var var_1105:int = 0;
      
      public var var_126:Boolean = false;
      
      public var var_65:int = 0;
      
      public var var_15:int = 0;
      
      public function class_931(param1:int = 0, param2:int = 0, param3:int = 0, param4:Boolean = false)
      {
         super();
         this.var_1105 = param2;
         this.var_126 = param4;
         this.var_65 = param1;
         this.var_15 = param3;
      }
      
      public function method_16() : int
      {
         return 17851;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1105 = param1.readShort();
         this.var_126 = param1.readBoolean();
         this.var_65 = param1.readShort();
         this.var_15 = param1.readInt();
         this.var_15 = this.var_15 << 13 % 32 | this.var_15 >>> 32 - 13 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17851);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeShort(this.var_1105);
         param1.writeBoolean(this.var_126);
         param1.writeShort(this.var_65);
         param1.writeInt(this.var_15 >>> 13 % 32 | this.var_15 << 32 - 13 % 32);
      }
   }
}
