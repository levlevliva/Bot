package com.bigpoint.seafight.view.popups.currencypopup
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_47;
   import package_140.class_540;
   import package_15.class_273;
   import package_15.class_48;
   import package_166.class_965;
   import package_170.class_979;
   import package_22.class_705;
   import package_39.class_1367;
   import package_39.class_973;
   import package_41.class_93;
   import package_42.class_98;
   import package_43.class_265;
   import package_46.class_1224;
   import package_6.class_14;
   import package_9.class_91;
   import package_92.class_944;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class CurrencyPopupController
   {
       
      
      private var query:class_265;
      
      private var view:CurrencyPopup;
      
      public function CurrencyPopupController(param1:CurrencyPopup)
      {
         super();
         this.view = param1;
         this.query = class_48.name_3.var_2315;
         this.query.addEventListener(Event.CHANGE,this.onCurrencyUpdateEvent);
         this.view.addEventListener(CurrencyItemRenderer.CURRENCY_BUY_EVENT,this.onCurrencyBuyEvent);
      }
      
      public final function update() : void
      {
         this.updateView();
      }
      
      public final function getView() : CurrencyPopup
      {
         return this.view;
      }
      
      private final function updateView() : void
      {
         this.view.data = this.query.name_8;
      }
      
      private final function onCurrencyUpdateEvent(param1:Event) : void
      {
         this.updateView();
      }
      
      private final function onCurrencyBuyEvent(param1:class_973) : void
      {
         var _loc2_:int = param1.name_19;
         class_154.method_562();
      }
      
      public final function destroy() : void
      {
         if(this.query)
         {
            this.query.removeEventListener(Event.CHANGE,this.onCurrencyUpdateEvent);
         }
         this.view.removeEventListener(CurrencyItemRenderer.CURRENCY_BUY_EVENT,this.onCurrencyBuyEvent);
      }
   }
}
