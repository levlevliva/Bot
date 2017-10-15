package package_56
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_105.class_369;
   import package_105.class_529;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_200;
   import package_14.class_286;
   import package_14.class_47;
   import package_23.class_42;
   import package_26.class_1319;
   import package_3.class_10;
   import package_34.class_107;
   import package_41.class_84;
   import package_5.class_945;
   import package_5.class_984;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_978;
   import spark.events.IndexChangeEvent;
   
   public final class class_502 extends class_10
   {
      
      private static var name_55:class_502;
       
      
      public function class_502()
      {
         super();
         method_23(class_369.name_3,this.method_1680);
         method_23(class_529.name_3,this.method_2531);
      }
      
      public static function get name_3() : class_502
      {
         if(null == name_55)
         {
            name_55 = new class_502();
         }
         return name_55;
      }
      
      private final function method_1680(param1:class_14) : void
      {
         var _loc2_:class_369 = param1 as class_369;
         var _loc3_:FileVO = class_42.method_21().var_336.listOfFiles["pet_" + _loc2_.var_133] as FileVO;
         if(null == _loc3_)
         {
            const_3.error("Pet does not exist with id " + _loc2_.var_133);
            _loc2_.var_133 = 6;
            const_3.warn("Using default pet placeholder id " + _loc2_.var_133);
         }
         this.method_1801(_loc2_);
      }
      
      private final function method_1801(param1:class_369) : void
      {
         var _loc2_:class_84 = null;
         var _loc6_:class_200 = null;
         var _loc10_:class_1023 = null;
         var _loc11_:Boolean = false;
         _loc2_ = param1.name_4;
         var _loc3_:int = param1.var_133;
         var _loc4_:Boolean = param1.var_1628;
         var _loc5_:int = param1.var_803;
         _loc6_ = class_47.method_29;
         var _loc7_:* = _loc6_.method_44(_loc2_).method_33.name_14 != class_945.const_43;
         var _loc8_:class_171 = _loc6_.method_314(_loc2_,class_1023.const_121);
         if(_loc8_ != null && _loc8_.method_67 != null)
         {
            _loc10_ = _loc8_.method_67;
            _loc11_ = _loc10_.var_424 != 0 && _loc5_ == 0 || _loc10_.var_424 == 0 && _loc5_ != 0;
            if(_loc10_.var_324 == _loc3_ && _loc7_ && !_loc11_ && _loc10_.var_1059 == _loc4_)
            {
               return;
            }
            _loc6_.method_518(_loc2_,class_1023.const_121);
         }
         if(!_loc7_)
         {
            return;
         }
         var _loc9_:class_1319 = new class_1319(class_1319.const_7);
         _loc9_.var_88 = _loc2_;
         _loc9_.var_324 = _loc3_;
         _loc9_.var_507 = class_1023.const_121;
         _loc9_.var_1059 = _loc4_;
         _loc9_.var_424 = _loc5_;
         dispatchEvent(_loc9_);
      }
      
      private final function method_2531(param1:class_14) : void
      {
         var _loc2_:class_529 = param1 as class_529;
         var _loc3_:class_1319 = new class_1319(class_1319.const_641);
         _loc3_.var_88 = _loc2_.name_4;
         _loc3_.var_324 = _loc2_.var_133;
         _loc3_.var_507 = class_1023.const_121;
         dispatchEvent(_loc3_);
      }
   }
}
