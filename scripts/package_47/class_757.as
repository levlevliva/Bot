package package_47
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_167.class_1024;
   import package_41.class_93;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_757 implements class_14
   {
      
      public static const name_3:class_757 = new class_757();
       
      
      private var var_646:int = 0;
      
      public var var_230:int = 0;
      
      public var var_144:Vector.<class_137>;
      
      public var var_325:Boolean = false;
      
      public var var_90:Vector.<class_129>;
      
      public var var_419:Vector.<class_136>;
      
      public var var_38:int = 0;
      
      public function class_757(param1:int = 0, param2:Boolean = false, param3:int = 0, param4:Vector.<class_136> = null, param5:Vector.<class_129> = null, param6:Vector.<class_137> = null)
      {
         super();
         this.var_230 = param3;
         if(param6 == null)
         {
            this.var_144 = new Vector.<class_137>();
         }
         else
         {
            this.var_144 = param6;
         }
         this.var_325 = param2;
         if(param5 == null)
         {
            this.var_90 = new Vector.<class_129>();
         }
         else
         {
            this.var_90 = param5;
         }
         if(param4 == null)
         {
            this.var_419 = new Vector.<class_136>();
         }
         else
         {
            this.var_419 = param4;
         }
         this.var_38 = param1;
      }
      
      public function method_16() : int
      {
         return -23963;
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
         return 19;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_137 = null;
         var _loc5_:class_129 = null;
         var _loc6_:class_136 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_230 = param1.readInt();
         this.var_230 = this.var_230 << 5 % 32 | this.var_230 >>> 32 - 5 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_144.length > 0)
         {
            this.var_144.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_144.push(_loc4_);
            _loc2_++;
         }
         this.var_325 = param1.readBoolean();
         while(this.var_90.length > 0)
         {
            this.var_90.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_129(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_90.push(_loc5_);
            _loc2_++;
         }
         while(this.var_419.length > 0)
         {
            this.var_419.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc6_ = class_136(class_93.method_26().method_25(param1.readShort()));
            _loc6_.method_15(param1);
            this.var_419.push(_loc6_);
            _loc2_++;
         }
         this.var_38 = param1.readShort();
         this.var_38 = 65535 & ((65535 & this.var_38) << 13 % 16 | (65535 & this.var_38) >>> 16 - 13 % 16);
         this.var_38 = this.var_38 > 32767?int(this.var_38 - 65536):int(this.var_38);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_137 = null;
         var _loc3_:class_129 = null;
         var _loc4_:class_136 = null;
         param1.writeShort(-23963);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeInt(this.var_230 >>> 5 % 32 | this.var_230 << 32 - 5 % 32);
         param1.writeByte(this.var_144.length);
         for each(_loc2_ in this.var_144)
         {
            _loc2_.method_14(param1);
         }
         param1.writeBoolean(this.var_325);
         param1.writeByte(this.var_90.length);
         for each(_loc3_ in this.var_90)
         {
            _loc3_.method_14(param1);
         }
         param1.writeByte(this.var_419.length);
         for each(_loc4_ in this.var_419)
         {
            _loc4_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.var_38) >>> 13 % 16 | (65535 & this.var_38) << 16 - 13 % 16));
      }
   }
}
