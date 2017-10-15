package package_10
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import flash.utils.ByteArray;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.guild.class_635;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_107.class_1467;
   import package_14.class_47;
   import package_5.class_214;
   import spark.components.Group;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Graphic;
   
   public final class class_202
   {
      
      private static const const_988:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const const_2218:String = "1.1.0";
       
      
      public function class_202()
      {
         super();
         throw new Error("Base64 class is static container only");
      }
      
      public static function method_1096(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         return method_1394(_loc2_);
      }
      
      public static function method_1394(param1:ByteArray) : String
      {
         var _loc3_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc2_:String = "";
         var _loc4_:Array = new Array(4);
         param1.position = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            _loc5_ = 0;
            while(_loc5_ < 3 && param1.bytesAvailable > 0)
            {
               _loc3_[_loc5_] = param1.readUnsignedByte();
               _loc5_++;
            }
            _loc4_[0] = (_loc3_[0] & 252) >> 2;
            _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
            _loc4_[2] = (_loc3_[1] & 15) << 2 | _loc3_[2] >> 6;
            _loc4_[3] = _loc3_[2] & 63;
            _loc6_ = _loc3_.length;
            while(_loc6_ < 3)
            {
               _loc4_[_loc6_ + 1] = 64;
               _loc6_++;
            }
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               _loc2_ = _loc2_ + const_988.charAt(_loc4_[_loc7_]);
               _loc7_++;
            }
         }
         return _loc2_;
      }
      
      public static function method_948(param1:String) : String
      {
         var _loc2_:ByteArray = method_1315(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function method_1315(param1:String) : ByteArray
      {
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Array = new Array(4);
         var _loc4_:Array = new Array(3);
         var _loc5_:uint = 0;
         while(_loc5_ < param1.length)
         {
            _loc6_ = 0;
            while(_loc6_ < 4 && _loc5_ + _loc6_ < param1.length)
            {
               _loc3_[_loc6_] = const_988.indexOf(param1.charAt(_loc5_ + _loc6_));
               _loc6_++;
            }
            _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 48) >> 4);
            _loc4_[1] = ((_loc3_[1] & 15) << 4) + ((_loc3_[2] & 60) >> 2);
            _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               if(_loc3_[_loc7_ + 1] == 64)
               {
                  break;
               }
               _loc2_.writeByte(_loc4_[_loc7_]);
               _loc7_++;
            }
            _loc5_ = _loc5_ + 4;
         }
         _loc2_.position = 0;
         return _loc2_;
      }
   }
}
