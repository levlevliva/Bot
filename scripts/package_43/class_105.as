package package_43
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_132.class_494;
   import package_132.class_605;
   import package_146.class_568;
   import package_15.class_273;
   import package_15.class_78;
   import package_168.class_976;
   import package_170.class_979;
   import package_185.class_1136;
   import package_47.class_930;
   import package_49.class_140;
   import package_5.class_133;
   import package_6.class_14;
   import package_72.class_203;
   import package_9.class_17;
   import package_9.class_76;
   import spark.components.HGroup;
   import spark.components.RadioButtonGroup;
   import spark.components.Scroller;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_105 extends class_78
   {
       
      
      private var var_2119:class_976;
      
      private var var_1992:class_568;
      
      public function class_105(param1:class_273)
      {
         super();
         method_35(this.var_2119 = param1.var_2156);
         method_35(this.var_1992 = param1.var_2058);
      }
      
      override protected function method_1182() : Object
      {
         if(this.var_1992.name_8)
         {
            return this.var_1992.name_8.var_143;
         }
         return !!this.var_2119.name_8?this.var_2119.name_8.var_143:null;
      }
      
      public final function method_2242() : Boolean
      {
         var _loc1_:class_17 = method_38() as class_17;
         return !!_loc1_?_loc1_.name_5 == class_76.const_462:false;
      }
      
      public final function method_940() : Boolean
      {
         var _loc1_:class_17 = method_38() as class_17;
         return !!_loc1_?_loc1_.name_5 != class_76.const_313:false;
      }
   }
}
