package package_157
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_126.class_1341;
   import package_14.class_47;
   import package_190.class_1181;
   import package_41.class_84;
   import package_41.class_89;
   import package_5.class_1047;
   import package_51.class_148;
   import package_6.class_14;
   import package_72.class_203;
   import package_9.class_91;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   
   public final class class_896 implements class_14
   {
      
      public static const name_3:class_896 = new class_896();
       
      
      private var var_646:int = 0;
      
      public function class_896()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 11730;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(11730);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
      }
   }
}
