package package_102
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.timer.TimerItem;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import package_119.class_1511;
   import package_5.class_123;
   import package_6.class_14;
   import package_92.class_336;
   import spark.components.Button;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_589 implements class_14
   {
      
      public static const name_3:class_589 = new class_589();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_589(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return -9465;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 5 % 32 | this.name_15 >>> 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9465);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeInt(this.name_15 >>> 5 % 32 | this.name_15 << 32 - 5 % 32);
      }
   }
}
