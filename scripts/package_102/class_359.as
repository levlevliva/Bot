package package_102
{
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_14.class_51;
   import package_6.class_14;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_359 implements class_14
   {
      
      public static const name_3:class_359 = new class_359();
       
      
      private var var_646:int = 0;
      
      public var var_1511:Number = 0;
      
      public var var_772:int = 0;
      
      public var var_1731:Boolean = false;
      
      public var name_15:int = 0;
      
      public var var_237:String = "";
      
      public var var_377:int = 0;
      
      public function class_359(param1:int = 0, param2:Number = 0, param3:Boolean = false, param4:int = 0, param5:int = 0, param6:String = "")
      {
         super();
         this.var_1511 = param2;
         this.var_772 = param5;
         this.var_1731 = param3;
         this.name_15 = param1;
         this.var_237 = param6;
         this.var_377 = param4;
      }
      
      public function method_16() : int
      {
         return -24664;
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
         return 23;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1511 = param1.readDouble();
         this.var_772 = param1.readInt();
         this.var_772 = this.var_772 >>> 9 % 32 | this.var_772 << 32 - 9 % 32;
         this.var_1731 = param1.readBoolean();
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 12 % 32 | this.name_15 >>> 32 - 12 % 32;
         this.var_237 = param1.readUTF();
         this.var_377 = param1.readInt();
         this.var_377 = this.var_377 >>> 9 % 32 | this.var_377 << 32 - 9 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24664);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeDouble(this.var_1511);
         param1.writeInt(this.var_772 << 9 % 32 | this.var_772 >>> 32 - 9 % 32);
         param1.writeBoolean(this.var_1731);
         param1.writeInt(this.name_15 >>> 12 % 32 | this.name_15 << 32 - 12 % 32);
         param1.writeUTF(this.var_237);
         param1.writeInt(this.var_377 << 9 % 32 | this.var_377 >>> 32 - 9 % 32);
      }
   }
}
