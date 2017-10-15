package package_17
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1234;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopupController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_152.class_668;
   import package_20.class_33;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_975;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_1080;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.VScrollBar;
   import spark.primitives.Rect;
   
   public final class class_322
   {
       
      
      private const const_2195:int = 500;
      
      private var var_2189:Function;
      
      private var var_2308:int = 0;
      
      private var var_2283:int = 0;
      
      private var var_1446:Vector.<class_320>;
      
      private var var_963:TweenMax;
      
      private var var_1871:class_320;
      
      public function class_322()
      {
         super();
         this.var_1446 = new Vector.<class_320>();
      }
      
      public final function method_2549(param1:class_320, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         if(this.var_1871)
         {
            _loc3_ = class_1234.method_508(this.var_1871,param1);
         }
         if(_loc3_)
         {
            return;
         }
         this.var_1871 = param1;
         this.var_2189 = param2;
         this.var_1446.push(param1);
         var _loc4_:int = getTimer();
         this.var_2283 = _loc4_ - this.var_2308;
         if(this.var_2283 > 500)
         {
            this.check(_loc4_);
         }
         else if(!this.var_963)
         {
            this.var_963 = TweenMax.delayedCall(500 / 1000,this.check,[_loc4_]);
         }
      }
      
      private final function check(param1:int) : void
      {
         if(this.var_963)
         {
            this.var_963.kill();
         }
         this.var_963 = null;
         this.var_2189(this.var_1446.pop());
         this.var_1446 = new Vector.<class_320>();
         this.var_2308 = param1;
      }
   }
}
