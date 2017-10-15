package package_122
{
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_14.class_88;
   import package_16.class_28;
   import package_170.class_979;
   import package_41.class_93;
   import package_49.class_137;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_7.class_15;
   import package_9.class_91;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.VGroup;
   
   public final class class_634 implements class_14
   {
      
      public static const name_3:class_634 = new class_634();
       
      
      private var var_646:int = 0;
      
      public var var_880:Vector.<class_656>;
      
      public var var_1539:Number = 0;
      
      public var var_1129:Number = 0;
      
      public var var_810:Vector.<class_137>;
      
      public var var_26:int = 0;
      
      public var var_1346:Number = 0;
      
      public var var_89:int = 0;
      
      public var var_1751:Number = 0;
      
      public function class_634(param1:int = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:int = 0, param7:Vector.<class_137> = null, param8:Vector.<class_656> = null)
      {
         super();
         if(param8 == null)
         {
            this.var_880 = new Vector.<class_656>();
         }
         else
         {
            this.var_880 = param8;
         }
         this.var_1539 = param5;
         this.var_1129 = param4;
         if(param7 == null)
         {
            this.var_810 = new Vector.<class_137>();
         }
         else
         {
            this.var_810 = param7;
         }
         this.var_26 = param6;
         this.var_1346 = param2;
         this.var_89 = param1;
         this.var_1751 = param3;
      }
      
      public function method_16() : int
      {
         return 136;
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
         return 44;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_656 = null;
         var _loc5_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_880.length > 0)
         {
            this.var_880.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_656(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_880.push(_loc4_);
            _loc2_++;
         }
         this.var_1539 = param1.readDouble();
         this.var_1129 = param1.readDouble();
         while(this.var_810.length > 0)
         {
            this.var_810.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_810.push(_loc5_);
            _loc2_++;
         }
         this.var_26 = param1.readInt();
         this.var_26 = this.var_26 >>> 5 % 32 | this.var_26 << 32 - 5 % 32;
         this.var_1346 = param1.readDouble();
         this.var_89 = param1.readShort();
         this.var_1751 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_656 = null;
         var _loc3_:class_137 = null;
         param1.writeShort(136);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeByte(this.var_880.length);
         for each(_loc2_ in this.var_880)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.var_1539);
         param1.writeDouble(this.var_1129);
         param1.writeByte(this.var_810.length);
         for each(_loc3_ in this.var_810)
         {
            _loc3_.method_14(param1);
         }
         param1.writeInt(this.var_26 << 5 % 32 | this.var_26 >>> 32 - 5 % 32);
         param1.writeDouble(this.var_1346);
         param1.writeShort(this.var_89);
         param1.writeDouble(this.var_1751);
      }
   }
}
