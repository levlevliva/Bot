package package_7
{
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_51;
   import package_140.class_540;
   import package_170.class_979;
   import package_39.class_1367;
   import package_6.class_14;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_119 implements class_14
   {
      
      public static const name_3:class_119 = new class_119();
       
      
      private var var_646:int = 0;
      
      public var var_71:int = 0;
      
      public function class_119(param1:int = 0)
      {
         super();
         this.var_71 = param1;
      }
      
      public function method_16() : int
      {
         return -12172;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_71 = param1.readShort();
         this.var_71 = 65535 & ((65535 & this.var_71) >>> 13 % 16 | (65535 & this.var_71) << 16 - 13 % 16);
         this.var_71 = this.var_71 > 32767?int(this.var_71 - 65536):int(this.var_71);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-12172);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_71) << 13 % 16 | (65535 & this.var_71) >>> 16 - 13 % 16));
      }
   }
}
