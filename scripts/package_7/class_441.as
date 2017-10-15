package package_7
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointBar;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_100.class_1471;
   import package_14.class_47;
   import package_143.class_542;
   import package_148.class_606;
   import package_152.class_937;
   import package_154.class_632;
   import package_158.class_703;
   import package_18.class_571;
   import package_18.class_855;
   import package_26.class_969;
   import package_29.class_57;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_1054;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_90.class_811;
   import package_92.class_336;
   import package_92.class_944;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_441 implements class_14
   {
      
      public static const name_3:class_441 = new class_441();
       
      
      private var var_646:int = 0;
      
      public var var_246:class_915;
      
      public var var_1584:Boolean = false;
      
      public function class_441(param1:Boolean = false, param2:class_915 = null)
      {
         super();
         if(param2 == null)
         {
            this.var_246 = new class_915();
         }
         else
         {
            this.var_246 = param2;
         }
         this.var_1584 = param1;
      }
      
      public function method_16() : int
      {
         return -30869;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_246 = class_915(class_93.method_26().method_25(param1.readShort()));
         this.var_246.method_15(param1);
         this.var_1584 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30869);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         this.var_246.method_14(param1);
         param1.writeBoolean(this.var_1584);
      }
   }
}
