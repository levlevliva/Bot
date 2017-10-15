package package_100
{
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusListSkin;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_96;
   import package_143.class_1040;
   import package_143.class_887;
   import package_153.class_931;
   import package_170.class_979;
   import package_174.class_1375;
   import package_20.class_33;
   import package_20.class_982;
   import package_27.class_53;
   import package_41.class_84;
   import package_46.class_1224;
   import package_46.class_1493;
   import package_48.class_999;
   import package_69.class_978;
   import spark.components.Group;
   import spark.components.List;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_866 extends class_729
   {
      
      public static const name_3:class_866 = new class_866();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var var_1571:Boolean = false;
      
      public var var_450:int = 0;
      
      public function class_866(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         super();
         this.name_11 = param2;
         this.var_1571 = param3;
         this.var_450 = param1;
      }
      
      override public function method_16() : int
      {
         return 23447;
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
         return 6;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 >>> 9 % 32 | this.name_11 << 32 - 9 % 32;
         this.var_1571 = param1.readBoolean();
         this.var_450 = param1.readByte();
         this.var_450 = 255 & ((255 & this.var_450) >>> 15 % 8 | (255 & this.var_450) << 8 - 15 % 8);
         this.var_450 = this.var_450 > 127?int(this.var_450 - 256):int(this.var_450);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(23447);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         super.method_14(param1);
         param1.writeInt(this.name_11 << 9 % 32 | this.name_11 >>> 32 - 9 % 32);
         param1.writeBoolean(this.var_1571);
         param1.writeByte(255 & ((255 & this.var_450) << 15 % 8 | (255 & this.var_450) >>> 8 - 15 % 8));
      }
   }
}
