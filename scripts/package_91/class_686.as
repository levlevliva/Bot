package package_91
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.CrewInventory;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.PlayerImageLoader;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_149;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_101.class_1549;
   import package_14.class_200;
   import package_14.class_47;
   import package_18.class_571;
   import package_18.class_855;
   import package_20.class_982;
   import package_207.class_1358;
   import package_212.class_1537;
   import package_26.class_1088;
   import package_27.class_53;
   import package_34.class_1576;
   import package_34.class_73;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_959;
   import package_46.class_1224;
   import package_5.class_939;
   import package_6.class_14;
   import package_8.class_1240;
   import package_90.class_316;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   
   public final class class_686 implements class_14
   {
      
      public static const name_3:class_686 = new class_686();
       
      
      private var var_646:int = 0;
      
      public var var_103:int = 0;
      
      public function class_686(param1:int = 0)
      {
         super();
         this.var_103 = param1;
      }
      
      public function method_16() : int
      {
         return -11505;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_103 = param1.readShort();
         this.var_103 = 65535 & ((65535 & this.var_103) >>> 7 % 16 | (65535 & this.var_103) << 16 - 7 % 16);
         this.var_103 = this.var_103 > 32767?int(this.var_103 - 65536):int(this.var_103);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-11505);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeShort(65535 & ((65535 & this.var_103) << 7 % 16 | (65535 & this.var_103) >>> 16 - 7 % 16));
      }
   }
}
