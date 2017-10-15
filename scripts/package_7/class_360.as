package package_7
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_47;
   import package_154.class_842;
   import package_170.class_979;
   import package_18.class_530;
   import package_36.class_71;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_120;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_360 implements class_14
   {
      
      public static const name_3:class_360 = new class_360();
       
      
      private var var_646:int = 0;
      
      public var var_59:class_84;
      
      public var var_275:class_84;
      
      public function class_360(param1:class_84 = null, param2:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_59 = new class_84();
         }
         else
         {
            this.var_59 = param1;
         }
         if(param2 == null)
         {
            this.var_275 = new class_84();
         }
         else
         {
            this.var_275 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 5868;
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
         this.var_59 = new class_84();
         this.var_59.var_6 = param1.readShort();
         this.var_59.var_6 = 65535 & ((65535 & this.var_59.var_6) << 8 % 16 | (65535 & this.var_59.var_6) >>> 16 - 8 % 16);
         this.var_59.var_6 = this.var_59.var_6 > 32767?int(this.var_59.var_6 - 65536):int(this.var_59.var_6);
         this.var_59.name_4 = param1.readDouble();
         this.var_275 = new class_84();
         this.var_275.var_6 = param1.readShort();
         this.var_275.var_6 = 65535 & ((65535 & this.var_275.var_6) << 8 % 16 | (65535 & this.var_275.var_6) >>> 16 - 8 % 16);
         this.var_275.var_6 = this.var_275.var_6 > 32767?int(this.var_275.var_6 - 65536):int(this.var_275.var_6);
         this.var_275.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5868);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeShort(65535 & ((65535 & this.var_59.var_6) >>> 8 % 16 | (65535 & this.var_59.var_6) << 16 - 8 % 16));
         param1.writeDouble(this.var_59.name_4);
         param1.writeShort(65535 & ((65535 & this.var_275.var_6) >>> 8 % 16 | (65535 & this.var_275.var_6) << 16 - 8 % 16));
         param1.writeDouble(this.var_275.name_4);
      }
   }
}
