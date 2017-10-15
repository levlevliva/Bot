package package_22
{
   import com.bigpoint.seafight.model.inventory.type.Gem_Model;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_14.class_47;
   import package_14.class_88;
   import package_170.class_979;
   import package_41.class_93;
   import package_48.class_996;
   import package_6.class_14;
   import package_69.class_1614;
   import package_69.class_978;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.core.NavigationUnit;
   import spark.primitives.BitmapImage;
   
   public class class_422 implements class_14
   {
      
      public static const name_3:class_422 = new class_422();
       
      
      private var var_646:int = 0;
      
      public var var_70:Vector.<class_655>;
      
      public var var_6:int = 0;
      
      public var var_427:Boolean = false;
      
      public var var_98:Vector.<class_655>;
      
      public function class_422(param1:Vector.<class_655> = null, param2:Vector.<class_655> = null, param3:int = 0, param4:Boolean = false)
      {
         super();
         if(param1 == null)
         {
            this.var_70 = new Vector.<class_655>();
         }
         else
         {
            this.var_70 = param1;
         }
         this.var_6 = param3;
         this.var_427 = param4;
         if(param2 == null)
         {
            this.var_98 = new Vector.<class_655>();
         }
         else
         {
            this.var_98 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -216;
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
         var _loc4_:class_655 = null;
         var _loc5_:class_655 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_70.length > 0)
         {
            this.var_70.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_655(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_70.push(_loc4_);
            _loc2_++;
         }
         this.var_6 = param1.readInt();
         this.var_6 = this.var_6 >>> 10 % 32 | this.var_6 << 32 - 10 % 32;
         this.var_427 = param1.readBoolean();
         while(this.var_98.length > 0)
         {
            this.var_98.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_655(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_98.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_655 = null;
         var _loc3_:class_655 = null;
         param1.writeShort(-216);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeByte(this.var_70.length);
         for each(_loc2_ in this.var_70)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_6 << 10 % 32 | this.var_6 >>> 32 - 10 % 32);
         param1.writeBoolean(this.var_427);
         param1.writeByte(this.var_98.length);
         for each(_loc3_ in this.var_98)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
