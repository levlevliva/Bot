package package_93
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.target;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_14.class_47;
   import package_17.class_54;
   import package_171.class_1325;
   import package_171.class_981;
   import package_212.class_1458;
   import package_215.class_1600;
   import package_32.class_64;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_148;
   import package_54.class_1089;
   import package_6.class_14;
   import package_74.class_253;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class class_339 implements class_14
   {
      
      public static const name_3:class_339 = new class_339();
       
      
      private var var_646:int = 0;
      
      public function class_339()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 31736;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(31736);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
      }
   }
}
