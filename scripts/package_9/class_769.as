package package_9
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuMembersTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuMembersTabController;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradient;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_94;
   import package_5.class_123;
   import package_51.class_1355;
   import package_6.class_14;
   import spark.components.HGroup;
   
   public final class class_769 implements class_14
   {
      
      public static const name_3:class_769 = new class_769();
       
      
      private var var_646:int = 0;
      
      public function class_769()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 1125;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1125);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
      }
   }
}
