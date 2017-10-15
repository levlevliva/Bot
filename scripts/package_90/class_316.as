package package_90
{
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass5;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import package_41.class_315;
   import package_41.class_84;
   import spark.primitives.Rect;
   
   public class class_316 extends class_315
   {
      
      public static const name_3:class_316 = new class_316();
       
      
      private var var_646:int = 0;
      
      public var var_353:Boolean = false;
      
      public var var_121:int = 0;
      
      public var var_10:int = 0;
      
      public var var_315:int = 0;
      
      public var var_307:int = 0;
      
      public function class_316(param1:int = 0, param2:Boolean = false, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.var_353 = param2;
         this.var_121 = param3;
         this.var_10 = param1;
         this.var_315 = param4;
         this.var_307 = param5;
      }
      
      override public function method_16() : int
      {
         return 5153;
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
         return 10;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_353 = param1.readBoolean();
         this.var_121 = param1.readByte();
         this.var_121 = 255 & ((255 & this.var_121) << 3 % 8 | (255 & this.var_121) >>> 8 - 3 % 8);
         this.var_121 = this.var_121 > 127?int(this.var_121 - 256):int(this.var_121);
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 << 15 % 32 | this.var_10 >>> 32 - 15 % 32;
         this.var_315 = param1.readShort();
         this.var_315 = 65535 & ((65535 & this.var_315) << 9 % 16 | (65535 & this.var_315) >>> 16 - 9 % 16);
         this.var_315 = this.var_315 > 32767?int(this.var_315 - 65536):int(this.var_315);
         this.var_307 = param1.readShort();
         this.var_307 = 65535 & ((65535 & this.var_307) >>> 12 % 16 | (65535 & this.var_307) << 16 - 12 % 16);
         this.var_307 = this.var_307 > 32767?int(this.var_307 - 65536):int(this.var_307);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5153);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         super.method_14(param1);
         param1.writeBoolean(this.var_353);
         param1.writeByte(255 & ((255 & this.var_121) >>> 3 % 8 | (255 & this.var_121) << 8 - 3 % 8));
         param1.writeInt(this.var_10 >>> 15 % 32 | this.var_10 << 32 - 15 % 32);
         param1.writeShort(65535 & ((65535 & this.var_315) >>> 9 % 16 | (65535 & this.var_315) << 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_307) << 12 % 16 | (65535 & this.var_307) >>> 16 - 12 % 16));
      }
   }
}
