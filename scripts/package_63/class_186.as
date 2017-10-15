package package_63
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.target;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import package_143.class_1040;
   import package_143.class_887;
   import package_17.class_54;
   import package_171.class_1043;
   import package_171.class_1044;
   import package_176.class_1045;
   import package_20.class_109;
   import package_20.class_33;
   import package_41.class_93;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   import package_69.class_194;
   import package_69.class_978;
   import package_7.class_1039;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_186 extends class_109
   {
       
      
      private var var_784:class_1044;
      
      private var var_2009:int = 0;
      
      private var var_1898:class_1043;
      
      private var var_2401:class_194;
      
      public function class_186()
      {
         super();
         this.var_784 = class_1044.method_21();
         this.var_1898 = class_1043.method_21();
         this.var_784.method_63(this);
         this.var_2401 = class_33.name_12.method_697;
         this.var_2401.addEventListener(class_978.const_4,this.method_2169);
         class_33.name_12.method_127.method_233(this,new <int>[class_1039.const_63]);
         this.method_96([class_1039.const_63]);
      }
      
      public final function method_1211(param1:class_174) : void
      {
         var _loc3_:ItemVO = null;
         var _loc4_:int = 0;
         var _loc2_:Vector.<ItemVO> = this.var_1898.var_14;
         _loc2_ = Vector.<ItemVO>(method_186(Vector.<IInventory_VO>(_loc2_)));
         param1.var_1225 = false;
         param1.var_1424 = false;
         param1.var_1371 = false;
         param1.var_1210 = false;
         param1.var_1332 = false;
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.default_VO.itemID;
            switch(_loc4_)
            {
               case class_1045.const_1703:
                  param1.var_1225 = true;
                  continue;
               case class_1045.const_1749:
                  param1.var_1424 = true;
                  continue;
               case class_1045.const_1622:
                  param1.var_1371 = true;
                  continue;
               case class_1045.const_1706:
                  param1.var_1210 = true;
                  continue;
               case class_1045.const_1833:
                  param1.var_1332 = true;
                  continue;
               case 142:
                  param1.var_1458 = true;
                  continue;
               default:
                  continue;
            }
         }
      }
      
      private final function method_2169(param1:Event) : void
      {
         if(this.var_784.var_25 || this.var_1898.var_25)
         {
            method_34(-1);
         }
         else
         {
            this.var_2009++;
         }
      }
      
      override public function method_357() : void
      {
         if(this.var_2009 > 0)
         {
            method_34(-1);
         }
      }
      
      override public function method_96(param1:Array) : void
      {
         super.method_96(param1);
         class_33.name_12.method_371.method_389(new class_887(class_1040.const_235));
      }
   }
}
