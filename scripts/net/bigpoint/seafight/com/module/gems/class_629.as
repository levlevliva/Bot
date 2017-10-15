package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_190.class_1168;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_629 implements class_14
   {
      
      public static const name_3:class_629 = new class_629();
       
      
      private var var_646:int = 0;
      
      public function class_629()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 19073;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(19073);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
      }
   }
}
