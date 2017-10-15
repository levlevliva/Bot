package package_74
{
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_47;
   import package_15.class_273;
   import package_55.class_1009;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_283
   {
       
      
      private var var_66:class_273;
      
      private var var_1803:Dictionary;
      
      public function class_283(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1803 = new Dictionary();
      }
      
      public final function method_470(param1:int) : class_236
      {
         var _loc2_:class_236 = this.var_1803[param1] as class_236;
         if(_loc2_)
         {
            return _loc2_;
         }
         this.var_1803[param1] = _loc2_ = new class_236(this.var_66,param1);
         return _loc2_;
      }
   }
}
