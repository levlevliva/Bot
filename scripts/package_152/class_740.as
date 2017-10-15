package package_152
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_121.class_841;
   import package_123.class_837;
   import package_41.class_93;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_740 extends class_611
   {
      
      public static const name_3:class_740 = new class_740();
       
      
      private var var_646:int = 0;
      
      public var var_77:Vector.<class_841>;
      
      public var var_286:Vector.<class_837>;
      
      public function class_740(param1:Vector.<class_837> = null, param2:Vector.<class_841> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_77 = new Vector.<class_841>();
         }
         else
         {
            this.var_77 = param2;
         }
         if(param1 == null)
         {
            this.var_286 = new Vector.<class_837>();
         }
         else
         {
            this.var_286 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -17387;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_841 = null;
         var _loc5_:class_837 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_77.length > 0)
         {
            this.var_77.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_77.push(_loc4_);
            _loc2_++;
         }
         while(this.var_286.length > 0)
         {
            this.var_286.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_837(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_286.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         var _loc3_:class_837 = null;
         param1.writeShort(-17387);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_77.length);
         for each(_loc2_ in this.var_77)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_286.length);
         for each(_loc3_ in this.var_286)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
