package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatItem;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicator;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_190.class_1181;
   import package_34.class_117;
   import package_41.class_89;
   import package_52.class_168;
   import package_6.class_14;
   import package_7.class_15;
   
   public final class class_772 implements class_14
   {
      
      public static const name_3:class_772 = new class_772();
       
      
      private var var_646:int = 0;
      
      public var var_501:int = 0;
      
      public var var_1438:Number = 0;
      
      public function class_772(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_501 = param1;
         this.var_1438 = param2;
      }
      
      public function method_16() : int
      {
         return 7928;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_501 = param1.readShort();
         this.var_501 = 65535 & ((65535 & this.var_501) << 14 % 16 | (65535 & this.var_501) >>> 16 - 14 % 16);
         this.var_501 = this.var_501 > 32767?int(this.var_501 - 65536):int(this.var_501);
         this.var_1438 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7928);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeShort(65535 & ((65535 & this.var_501) >>> 14 % 16 | (65535 & this.var_501) << 16 - 14 % 16));
         param1.writeDouble(this.var_1438);
      }
   }
}
