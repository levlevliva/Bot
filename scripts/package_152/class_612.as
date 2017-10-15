package package_152
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildPendingMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import package_104.class_641;
   import package_14.class_47;
   import package_14.class_88;
   import package_216.class_1575;
   import package_25.class_295;
   import package_30.class_1013;
   import package_30.class_62;
   import package_42.class_98;
   import package_54.class_319;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_612 extends class_611
   {
      
      public static const name_3:class_612 = new class_612();
       
      
      private var var_646:int = 0;
      
      public var var_1527:String = "";
      
      public function class_612(param1:String = "")
      {
         super();
         this.var_1527 = param1;
      }
      
      override public function method_16() : int
      {
         return -30157;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1527 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30157);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_1527);
      }
   }
}
