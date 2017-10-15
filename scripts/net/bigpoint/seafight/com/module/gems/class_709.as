package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_111.class_1176;
   import package_111.class_726;
   import package_14.class_96;
   import package_17.class_54;
   import package_3.class_1249;
   import package_34.class_1526;
   import package_41.class_89;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.DataGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_709 implements class_14
   {
      
      public static const name_3:class_709 = new class_709();
       
      
      private var var_646:int = 0;
      
      public function class_709()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 29377;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(29377);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
      }
   }
}
