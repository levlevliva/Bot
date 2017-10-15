package package_157
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.lootpopup.component.target;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_104.class_448;
   import package_14.class_47;
   import package_14.class_88;
   import package_154.class_842;
   import package_170.class_979;
   import package_171.class_1276;
   import package_190.class_1168;
   import package_41.class_93;
   import package_48.class_996;
   import package_49.class_140;
   import package_5.class_984;
   import package_6.class_14;
   import package_69.class_1614;
   import package_69.class_978;
   import package_72.class_1080;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_682 implements class_14
   {
      
      public static const name_3:class_682 = new class_682();
       
      
      private var var_646:int = 0;
      
      public var var_898:Vector.<int>;
      
      public var var_787:Vector.<int>;
      
      public var var_62:class_842;
      
      public var var_1250:int = 0;
      
      public function class_682(param1:int = 0, param2:class_842 = null, param3:Vector.<int> = null, param4:Vector.<int> = null)
      {
         super();
         if(param3 == null)
         {
            this.var_898 = new Vector.<int>();
         }
         else
         {
            this.var_898 = param3;
         }
         if(param4 == null)
         {
            this.var_787 = new Vector.<int>();
         }
         else
         {
            this.var_787 = param4;
         }
         if(param2 == null)
         {
            this.var_62 = new class_842();
         }
         else
         {
            this.var_62 = param2;
         }
         this.var_1250 = param1;
      }
      
      public function method_16() : int
      {
         return 17150;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_898.length > 0)
         {
            this.var_898.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readByte());
            _loc4_ = 255 & ((255 & _loc4_) << 9 % 8 | (255 & _loc4_) >>> 8 - 9 % 8);
            _loc4_ = int(_loc4_ > 127?int(_loc4_ - 256):int(_loc4_));
            this.var_898.push(_loc4_);
            _loc2_++;
         }
         while(this.var_787.length > 0)
         {
            this.var_787.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readByte());
            _loc4_ = 255 & ((255 & _loc4_) << 15 % 8 | (255 & _loc4_) >>> 8 - 15 % 8);
            _loc4_ = int(_loc4_ > 127?int(_loc4_ - 256):int(_loc4_));
            this.var_787.push(_loc4_);
            _loc2_++;
         }
         this.var_62 = class_842(class_93.method_26().method_25(param1.readShort()));
         this.var_62.method_15(param1);
         this.var_1250 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         param1.writeShort(17150);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeByte(this.var_898.length);
         for each(_loc2_ in this.var_898)
         {
            param1.writeByte(255 & ((255 & _loc2_) >>> 9 % 8 | (255 & _loc2_) << 8 - 9 % 8));
         }
         param1.writeByte(this.var_787.length);
         for each(_loc3_ in this.var_787)
         {
            param1.writeByte(255 & ((255 & _loc3_) >>> 15 % 8 | (255 & _loc3_) << 8 - 15 % 8));
         }
         this.var_62.method_14(param1);
         param1.writeShort(this.var_1250);
      }
   }
}
