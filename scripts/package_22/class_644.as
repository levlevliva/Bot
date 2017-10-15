package package_22
{
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import package_14.class_47;
   import package_152.class_776;
   import package_171.class_1276;
   import package_190.class_1181;
   import package_23.class_42;
   import package_3.class_378;
   import package_34.class_115;
   import package_41.class_84;
   import package_42.class_948;
   import package_5.class_123;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   public class class_644 implements class_14
   {
      
      public static const name_3:class_644 = new class_644();
       
      
      private var var_646:int = 0;
      
      public var name_34:int = 0;
      
      public var var_427:Boolean = false;
      
      public var var_131:int = 0;
      
      public var var_6:int = 0;
      
      public function class_644(param1:Boolean = false, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.name_34 = param3;
         this.var_427 = param1;
         this.var_131 = param4;
         this.var_6 = param2;
      }
      
      public function method_16() : int
      {
         return -23266;
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
         return 13;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_34 = param1.readInt();
         this.name_34 = this.name_34 << 6 % 32 | this.name_34 >>> 32 - 6 % 32;
         this.var_427 = param1.readBoolean();
         this.var_131 = param1.readInt();
         this.var_131 = this.var_131 >>> 6 % 32 | this.var_131 << 32 - 6 % 32;
         this.var_6 = param1.readInt();
         this.var_6 = this.var_6 >>> 5 % 32 | this.var_6 << 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-23266);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeInt(this.name_34 >>> 6 % 32 | this.name_34 << 32 - 6 % 32);
         param1.writeBoolean(this.var_427);
         param1.writeInt(this.var_131 << 6 % 32 | this.var_131 >>> 32 - 6 % 32);
         param1.writeInt(this.var_6 << 5 % 32 | this.var_6 >>> 32 - 5 % 32);
      }
   }
}
