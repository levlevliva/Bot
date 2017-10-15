package package_41
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoTrackBtnSkin;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_121.class_424;
   import package_14.class_47;
   import package_206.class_1567;
   import package_5.class_12;
   import package_6.class_14;
   import package_8.class_114;
   import spark.components.Button;
   import spark.components.Group;
   
   public class class_315 implements class_14
   {
      
      public static const name_3:class_315 = new class_315();
       
      
      private var var_646:int = 0;
      
      public var var_13:int = 0;
      
      public function class_315(param1:int = 0)
      {
         super();
         this.var_13 = param1;
      }
      
      public function method_16() : int
      {
         return -30404;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_13 = param1.readShort();
         this.var_13 = 65535 & ((65535 & this.var_13) << 4 % 16 | (65535 & this.var_13) >>> 16 - 4 % 16);
         this.var_13 = this.var_13 > 32767?int(this.var_13 - 65536):int(this.var_13);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30404);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.var_13) >>> 4 % 16 | (65535 & this.var_13) << 16 - 4 % 16));
      }
   }
}
