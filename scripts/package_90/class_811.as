package package_90
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_47;
   import package_170.class_979;
   import package_185.class_1136;
   import package_39.class_973;
   import package_41.class_84;
   import package_51.class_148;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_811 implements class_14
   {
      
      public static const name_3:class_811 = new class_811();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_4:class_84;
      
      public function class_811(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.name_5 = param2;
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
         return 25298;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 13 % 16 | (65535 & this.name_4.var_6) << 16 - 13 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25298);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 13 % 16 | (65535 & this.name_4.var_6) >>> 16 - 13 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
