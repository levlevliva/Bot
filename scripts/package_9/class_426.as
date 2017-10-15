package package_9
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_104.class_989;
   import package_14.class_88;
   import package_17.class_54;
   import package_34.class_1272;
   import package_5.class_22;
   import package_5.class_43;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_426 implements class_14
   {
      
      public static const name_3:class_426 = new class_426();
       
      
      private var var_646:int = 0;
      
      public var var_167:class_91;
      
      public var name_25:int = 0;
      
      public var name_5:int = 0;
      
      public function class_426(param1:class_91 = null, param2:int = 0, param3:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_167 = new class_91();
         }
         else
         {
            this.var_167 = param1;
         }
         this.name_25 = param2;
         this.name_5 = param3;
      }
      
      public function method_16() : int
      {
         return 15023;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_167 = new class_91();
         this.var_167.var_8 = param1.readShort();
         this.var_167.var_8 = 65535 & ((65535 & this.var_167.var_8) << 2 % 16 | (65535 & this.var_167.var_8) >>> 16 - 2 % 16);
         this.var_167.var_8 = this.var_167.var_8 > 32767?int(this.var_167.var_8 - 65536):int(this.var_167.var_8);
         this.var_167.var_9 = param1.readShort();
         this.var_167.var_9 = 65535 & ((65535 & this.var_167.var_9) >>> 1 % 16 | (65535 & this.var_167.var_9) << 16 - 1 % 16);
         this.var_167.var_9 = this.var_167.var_9 > 32767?int(this.var_167.var_9 - 65536):int(this.var_167.var_9);
         this.name_25 = param1.readShort();
         this.name_25 = 65535 & ((65535 & this.name_25) << 12 % 16 | (65535 & this.name_25) >>> 16 - 12 % 16);
         this.name_25 = this.name_25 > 32767?int(this.name_25 - 65536):int(this.name_25);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15023);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.var_167.var_8) >>> 2 % 16 | (65535 & this.var_167.var_8) << 16 - 2 % 16));
         param1.writeShort(65535 & ((65535 & this.var_167.var_9) << 1 % 16 | (65535 & this.var_167.var_9) >>> 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.name_25) >>> 12 % 16 | (65535 & this.name_25) << 16 - 12 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
