package package_115
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_29.class_565;
   import package_32.class_1245;
   import package_32.class_338;
   import package_32.class_64;
   import package_34.class_1526;
   import package_41.class_84;
   import package_51.class_148;
   import package_55.class_1008;
   import package_6.class_14;
   import package_97.class_409;
   import spark.components.gridClasses.GridLayer;
   
   public final class class_403 implements class_14
   {
      
      public static const name_3:class_403 = new class_403();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public function class_403(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 20853;
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
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 8 % 16 | (65535 & this.name_4.var_6) << 16 - 8 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20853);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 8 % 16 | (65535 & this.name_4.var_6) >>> 16 - 8 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
