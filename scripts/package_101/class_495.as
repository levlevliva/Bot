package package_101
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_131.class_573;
   import package_14.class_47;
   import package_14.class_51;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   public final class class_495 implements class_14
   {
      
      public static const name_3:class_495 = new class_495();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_170:Number = 0;
      
      public var var_799:class_566;
      
      public var var_33:int = 0;
      
      public var name_11:int = 0;
      
      public var var_111:int = 0;
      
      public var var_49:Vector.<class_566>;
      
      public function class_495(param1:class_566 = null, param2:int = 0, param3:Vector.<class_566> = null, param4:Number = 0, param5:Number = 0, param6:int = 0, param7:int = 0)
      {
         super();
         this.var_20 = param5;
         this.var_170 = param4;
         if(param1 == null)
         {
            this.var_799 = new class_566();
         }
         else
         {
            this.var_799 = param1;
         }
         this.var_33 = param6;
         this.name_11 = param2;
         this.var_111 = param7;
         if(param3 == null)
         {
            this.var_49 = new Vector.<class_566>();
         }
         else
         {
            this.var_49 = param3;
         }
      }
      
      public function method_16() : int
      {
         return -18442;
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
         return 32;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_566 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         this.var_170 = param1.readDouble();
         this.var_799 = class_566(class_93.method_26().method_25(param1.readShort()));
         this.var_799.method_15(param1);
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 >>> 13 % 32 | this.var_33 << 32 - 13 % 32;
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 10 % 32 | this.name_11 >>> 32 - 10 % 32;
         this.var_111 = param1.readInt();
         this.var_111 = this.var_111 << 13 % 32 | this.var_111 >>> 32 - 13 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_49.length > 0)
         {
            this.var_49.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_566(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_49.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_566 = null;
         param1.writeShort(-18442);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeDouble(this.var_20);
         param1.writeDouble(this.var_170);
         this.var_799.method_14(param1);
         param1.writeInt(this.var_33 << 13 % 32 | this.var_33 >>> 32 - 13 % 32);
         param1.writeInt(this.name_11 >>> 10 % 32 | this.name_11 << 32 - 10 % 32);
         param1.writeInt(this.var_111 >>> 13 % 32 | this.var_111 << 32 - 13 % 32);
         param1.writeByte(this.var_49.length);
         for each(_loc2_ in this.var_49)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
