package package_101
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_87;
   import package_171.class_1270;
   import package_179.class_1064;
   import package_213.class_1522;
   import package_41.class_84;
   import package_41.class_93;
   import package_43.class_272;
   import package_6.class_14;
   import package_72.class_1442;
   import spark.filters.DropShadowFilter;
   import spark.layouts.HorizontalLayout;
   
   public final class class_549 implements class_14
   {
      
      public static const name_3:class_549 = new class_549();
       
      
      private var var_646:int = 0;
      
      public var var_843:Vector.<class_608>;
      
      public function class_549(param1:Vector.<class_608> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_843 = new Vector.<class_608>();
         }
         else
         {
            this.var_843 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -19696;
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
         var _loc4_:class_608 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_843.length > 0)
         {
            this.var_843.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_608(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_843.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_608 = null;
         param1.writeShort(-19696);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeByte(this.var_843.length);
         for each(_loc2_ in this.var_843)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
