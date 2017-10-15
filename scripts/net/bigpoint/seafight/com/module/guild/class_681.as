package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import package_190.class_1168;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_681 implements class_14
   {
      
      public static const name_3:class_681 = new class_681();
       
      
      private var var_646:int = 0;
      
      public var var_1620:int = 0;
      
      public var var_414:int = 0;
      
      public var var_205:String = "";
      
      public function class_681(param1:int = 0, param2:String = "", param3:int = 0)
      {
         super();
         this.var_1620 = param1;
         this.var_414 = param3;
         this.var_205 = param2;
      }
      
      public function method_16() : int
      {
         return -8772;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1620 = param1.readShort();
         this.var_414 = param1.readInt();
         this.var_414 = this.var_414 << 5 % 32 | this.var_414 >>> 32 - 5 % 32;
         this.var_205 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8772);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(this.var_1620);
         param1.writeInt(this.var_414 >>> 5 % 32 | this.var_414 << 32 - 5 % 32);
         param1.writeUTF(this.var_205);
      }
   }
}
