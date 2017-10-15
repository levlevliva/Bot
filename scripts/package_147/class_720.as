package package_147
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_136.class_926;
   import package_14.class_47;
   import package_154.class_842;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_720 implements class_14
   {
      
      public static const name_3:class_720 = new class_720();
       
      
      private var var_646:int = 0;
      
      public var name_7:class_89;
      
      public function class_720(param1:class_89 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_7 = new class_89();
         }
         else
         {
            this.name_7 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 8647;
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
         this.name_7 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(8647);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         this.name_7.method_14(param1);
      }
   }
}
