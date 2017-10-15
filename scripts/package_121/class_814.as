package package_121
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.mainmenu.MainMenuDropdownButton;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.OpenGuildColorsPopupCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.controls.Text;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_14.class_47;
   import package_26.class_1354;
   import package_34.class_1499;
   import package_43.class_1189;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_814 implements class_14
   {
      
      public static const name_3:class_814 = new class_814();
       
      
      private var var_646:int = 0;
      
      public var var_16:int = 0;
      
      public function class_814(param1:int = 0)
      {
         super();
         this.var_16 = param1;
      }
      
      public function method_16() : int
      {
         return 25603;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_16 = param1.readInt();
         this.var_16 = this.var_16 << 8 % 32 | this.var_16 >>> 32 - 8 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25603);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeInt(this.var_16 >>> 8 % 32 | this.var_16 << 32 - 8 % 32);
      }
   }
}
