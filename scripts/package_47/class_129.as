package package_47
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_129 implements class_14
   {
      
      public static const name_3:class_129 = new class_129();
       
      
      private var var_646:int = 0;
      
      public var name_17:int = 0;
      
      public var name_7:int = 0;
      
      public var name_5:int = 0;
      
      public var name_18:Vector.<String>;
      
      public function class_129(param1:int = 0, param2:int = 0, param3:Vector.<String> = null, param4:int = 0)
      {
         super();
         this.name_17 = param4;
         this.name_7 = param1;
         this.name_5 = param2;
         if(param3 == null)
         {
            this.name_18 = new Vector.<String>();
         }
         else
         {
            this.name_18 = param3;
         }
      }
      
      public function method_16() : int
      {
         return 19355;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_17 = param1.readShort();
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 << 16 % 32 | this.name_7 >>> 32 - 16 % 32;
         this.name_5 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_18.length > 0)
         {
            this.name_18.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.name_18.push(param1.readUTF());
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:String = null;
         param1.writeShort(19355);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeShort(this.name_17);
         param1.writeInt(this.name_7 >>> 16 % 32 | this.name_7 << 32 - 16 % 32);
         param1.writeShort(this.name_5);
         param1.writeByte(this.name_18.length);
         for each(_loc2_ in this.name_18)
         {
            param1.writeUTF(_loc2_);
         }
      }
   }
}
