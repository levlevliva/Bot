package package_3
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.net.FileReference;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.utils.LinkedList;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_10.class_18;
   import package_10.class_38;
   import package_104.class_641;
   import package_14.class_47;
   import package_14.class_51;
   import package_152.class_852;
   import package_158.class_703;
   import package_16.class_28;
   import package_17.class_323;
   import package_18.class_748;
   import package_22.class_36;
   import package_26.class_101;
   import package_28.class_56;
   import package_41.class_93;
   import package_5.class_22;
   import package_56.class_170;
   import package_6.class_14;
   import package_7.class_1039;
   import package_7.class_441;
   import package_7.class_443;
   import package_7.class_55;
   import package_88.class_1014;
   import package_9.class_872;
   import package_91.class_686;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   
   public final class class_387 extends class_10
   {
       
      
      public function class_387()
      {
         super();
         this.name_16();
      }
      
      public static function method_636(param1:String, param2:int, param3:Array = null) : void
      {
         class_323.method_21().method_547(param2,param1,param3);
         if(ExternalInterface.available)
         {
            ExternalInterface.call("onMapEvent","msgbox",param1,param3 != null?param3.join(","):"");
         }
      }
      
      private final function name_16() : void
      {
         method_23(class_443.name_3,this.method_2046);
         method_23(class_441.name_3,this.method_2133);
      }
      
      private final function method_2046(param1:class_14) : void
      {
         param1 = null;
         method_636("paymentpearls",class_323.const_1053);
      }
      
      private final function method_2133(param1:class_14) : void
      {
         var _loc2_:class_441 = null;
         var _loc3_:Vector.<String> = null;
         _loc2_ = param1 as class_441;
         _loc3_ = _loc2_.var_246.name_18;
         var _loc4_:int = _loc3_.length;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = _loc5_.concat(_loc3_[_loc6_].split(class_22.const_1371));
            _loc6_++;
         }
         if(_loc2_.var_1584)
         {
            class_170.method_188(_loc2_.var_246.var_246,_loc5_);
         }
         else
         {
            method_636(_loc2_.var_246.var_246,class_323.const_1211,_loc5_);
         }
      }
   }
}
