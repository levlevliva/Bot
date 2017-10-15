package net.bigpoint.seafight.com.module.ship
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import package_190.class_1168;
   import package_41.class_84;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   
   public final class class_396 implements class_14
   {
      
      public static const name_3:class_396 = new class_396();
      
      public static const const_681:int = 0;
      
      public static const const_758:int = 1;
      
      public static const const_1343:int = 2;
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var name_17:int = 0;
      
      public function class_396(param1:class_84 = null, param2:int = 0)
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
         this.name_17 = param2;
      }
      
      public function method_16() : int
      {
         return -4858;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 16 % 16 | (65535 & this.name_4.var_6) >>> 16 - 16 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.name_17 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-4858);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 16 % 16 | (65535 & this.name_4.var_6) << 16 - 16 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(this.name_17);
      }
   }
}
