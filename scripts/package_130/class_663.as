package package_130
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.SaveInvalidReason;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bit101.components.Style;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_67;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_104.class_448;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_48;
   import package_171.class_981;
   import package_210.class_1527;
   import package_22.class_689;
   import package_22.class_705;
   import package_41.class_93;
   import package_46.class_1224;
   import package_5.class_22;
   import package_6.class_14;
   import package_94.class_690;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.RectangularDropShadow;
   
   public final class class_663 extends class_67
   {
      
      public static const name_3:class_663 = new class_663();
       
      
      private var var_646:int = 0;
      
      public var var_780:class_900;
      
      public function class_663(param1:class_900 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_780 = new class_900();
         }
         else
         {
            this.var_780 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 17646;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_780 = class_900(class_93.method_26().method_25(param1.readShort()));
         this.var_780.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17646);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         super.method_14(param1);
         this.var_780.method_14(param1);
      }
   }
}
