package package_143
{
   import com.bigpoint.seafight.model.inventory.vo.sail.Sail_VO;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.InventorySailVo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_104.class_448;
   import package_104.class_641;
   import package_14.class_47;
   import package_152.class_801;
   import package_17.class_54;
   import package_214.class_1556;
   import package_36.class_100;
   import package_41.class_93;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class class_542 implements class_14
   {
      
      public static const name_3:class_542 = new class_542();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_9:Vector.<class_933>;
      
      public function class_542(param1:int = 0, param2:Vector.<class_933> = null)
      {
         super();
         this.name_5 = param1;
         if(param2 == null)
         {
            this.name_9 = new Vector.<class_933>();
         }
         else
         {
            this.name_9 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -2951;
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
         var _loc4_:class_933 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_933(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_933 = null;
         param1.writeShort(-2951);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(this.name_5);
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
