package package_14
{
   import com.bigpoint.seafight.net.events.class_1266;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_489;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_436;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_590;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import package_11.class_1250;
   import package_174.class_1373;
   import package_182.class_1118;
   import package_20.class_33;
   import package_3.class_1247;
   import package_3.class_1248;
   import package_3.class_1249;
   import package_3.class_1251;
   import package_3.class_1252;
   import package_3.class_1253;
   import package_3.class_1254;
   import package_3.class_521;
   import package_32.class_64;
   import package_5.class_123;
   import package_5.class_133;
   import package_54.class_163;
   import package_6.class_14;
   import package_72.class_1080;
   import package_9.class_120;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_230
   {
       
      
      private var var_889:Vector.<class_590>;
      
      public function class_230()
      {
         super();
      }
      
      public final function method_34(param1:class_436) : void
      {
         this.var_889 = param1.var_889;
      }
      
      public final function method_2520(param1:Number) : String
      {
         var _loc3_:class_590 = null;
         var _loc2_:* = "";
         for each(_loc3_ in this.var_889)
         {
            if(_loc3_.var_1441 == param1)
            {
               if(_loc3_.var_631 != 0)
               {
                  _loc2_ = _loc2_ + this.method_1309(_loc3_);
                  _loc2_ = _loc2_ + class_133.method_2170(_loc3_.var_631,_loc3_.name_7);
                  _loc2_ = _loc2_ + "\n";
               }
               else
               {
                  _loc2_ = _loc2_ + this.method_1309(_loc3_);
                  _loc2_ = _loc2_ + this.method_1897(_loc3_);
                  _loc2_ = _loc2_ + "\n";
               }
            }
         }
         return _loc2_;
      }
      
      private final function method_1897(param1:class_590) : String
      {
         switch(param1.var_1487)
         {
            case class_1118.const_567:
               return class_47.method_37.method_32(class_88.const_291,"NONE");
            case class_1118.const_1680:
               return class_47.method_37.method_32(class_88.const_27,"PERISHABLEGOODS");
            case class_1118.const_98:
               return class_47.method_37.method_32(class_88.const_27,"NONPERISHABLEGOODS");
            case class_1118.const_1674:
               return class_47.method_37.method_32(class_88.const_27,"AMMO");
            case class_1118.const_33:
               return class_47.method_37.method_32(class_88.const_27,"SHIPS");
            case class_1118.const_677:
               return class_47.method_37.method_32(class_88.const_27,"SHIPDESIGN");
            case class_1118.const_87:
               return class_47.method_37.method_32(class_88.const_27,"SHIPEXTENSION");
            case class_1118.const_25:
               return class_47.method_37.method_32(class_88.const_27,"CREW");
            case class_1118.const_289:
               return class_47.method_37.method_32(class_88.const_27,"CANNON");
            case class_1118.const_257:
               return class_47.method_37.method_32(class_88.const_27,"HARPOONS");
            case class_1118.const_347:
               return class_47.method_37.method_32(class_88.const_27,"SAIL");
            case class_1118.const_61:
               return class_47.method_37.method_32(class_88.const_27,"PIRATE");
            case class_1118.const_16:
               return class_47.method_37.method_32(class_88.const_27,"PET");
            case class_1118.const_1125:
               return class_47.method_22.method_20("league");
            case class_1118.const_1676:
               return class_47.method_22.method_20("towers");
            case class_1118.const_41:
               return class_47.method_22.method_20("gems");
            case class_1118.const_63:
               return class_47.method_37.method_32(class_88.const_456,param1.var_631.toString());
            case class_1118.const_1299:
               return class_47.method_22.method_20("skilltree");
            case class_1118.const_55:
            case class_1118.const_96:
            case class_1118.const_1303:
            case class_1118.const_426:
            case class_1118.const_1867:
            case class_1118.const_292:
            case class_1118.const_1016:
            case class_1118.const_314:
            case class_1118.const_1347:
            case class_1118.const_1893:
            default:
               return "...";
         }
      }
      
      private final function method_1309(param1:class_590) : String
      {
         var _loc2_:* = "";
         _loc2_ = _loc2_ + (param1.name_19 < 0?"-":"+");
         _loc2_ = _loc2_ + (" " + param1.var_175 + "x ");
         _loc2_ = _loc2_ + class_13.method_688(Math.abs(param1.name_19));
         switch(param1.var_109)
         {
            case class_1119.const_164:
               _loc2_ = _loc2_ + " ";
               break;
            case class_1119.const_1475:
               if(param1.var_413 > 1)
               {
                  _loc2_ = _loc2_ + " ÷ ";
                  _loc2_ = _loc2_ + param1.var_413;
               }
               _loc2_ = _loc2_ + " = ";
               _loc2_ = _loc2_ + (param1.name_19 < 0?"-":"+");
               _loc2_ = _loc2_ + class_13.method_688(param1.var_175 * Math.abs(param1.name_19) / param1.var_413);
               _loc2_ = _loc2_ + " Ø ";
               break;
            case class_1119.const_173:
               _loc2_ = _loc2_ + "% ";
               break;
            case class_1119.const_1401:
               _loc2_ = _loc2_ + "%";
               if(param1.var_413 > 1)
               {
                  _loc2_ = _loc2_ + " ÷ ";
                  _loc2_ = _loc2_ + param1.var_413;
               }
               _loc2_ = _loc2_ + " = ";
               _loc2_ = _loc2_ + (param1.name_19 < 0?"-":"+");
               _loc2_ = _loc2_ + class_13.method_688(param1.var_175 * Math.abs(param1.name_19) / param1.var_413);
               _loc2_ = _loc2_ + "% Ø ";
         }
         return _loc2_;
      }
   }
}
