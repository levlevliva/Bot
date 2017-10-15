package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.KeyValueListVO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.tools.class_1466;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_52.class_1227;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_701 implements class_14
   {
      
      public static const name_3:class_701 = new class_701();
       
      
      private var var_646:int = 0;
      
      public var var_662:Boolean = false;
      
      public var var_849:Number = 0;
      
      public var var_677:Number = 0;
      
      public var name_42:String = "";
      
      public var name_44:String = "";
      
      public var name_22:int = 0;
      
      public function class_701(param1:Number = 0, param2:String = "", param3:String = "", param4:Number = 0, param5:Boolean = false, param6:int = 0)
      {
         super();
         this.var_662 = param5;
         this.var_849 = param4;
         this.var_677 = param1;
         this.name_42 = param2;
         this.name_44 = param3;
         this.name_22 = param6;
      }
      
      public function method_16() : int
      {
         return -19790;
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
         return 21;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_662 = param1.readBoolean();
         this.var_849 = param1.readDouble();
         this.var_677 = param1.readDouble();
         this.name_42 = param1.readUTF();
         this.name_44 = param1.readUTF();
         this.name_22 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-19790);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeBoolean(this.var_662);
         param1.writeDouble(this.var_849);
         param1.writeDouble(this.var_677);
         param1.writeUTF(this.name_42);
         param1.writeUTF(this.name_44);
         param1.writeShort(this.name_22);
      }
   }
}
