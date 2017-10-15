package package_110
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1234;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuCrewTabVo;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.RadioButton;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildAnnouncementListItemVo;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_421;
   import net.bigpoint.seafight.com.module.guild.class_607;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_143.class_1056;
   import package_143.class_706;
   import package_170.class_979;
   import package_184.class_1583;
   import package_185.class_1136;
   import package_29.class_57;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_45.class_110;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import package_84.class_270;
   import package_95.class_341;
   import spark.components.Group;
   
   public final class class_680 implements class_14
   {
      
      public static const name_3:class_680 = new class_680();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public function class_680(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 10748;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10748);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         this.var_87.method_14(param1);
      }
   }
}
