package package_17
{
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLibScale9;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.lootpopup.component.target;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_635;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_10.class_38;
   import package_105.class_369;
   import package_105.class_529;
   import package_107.class_693;
   import package_14.class_47;
   import package_140.class_540;
   import package_26.class_960;
   import package_29.class_166;
   import package_39.class_1367;
   import package_41.class_84;
   import package_42.class_98;
   import package_45.class_110;
   import package_5.class_123;
   import package_50.class_219;
   import package_6.class_14;
   import package_88.class_1093;
   import package_92.class_1278;
   import spark.effects.Move;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_224
   {
      
      private static var name_55:class_224;
       
      
      private var var_1943:class_219;
      
      private var var_2400:Number;
      
      private var var_2303:Date;
      
      private var var_2018:Boolean = false;
      
      public function class_224(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_224
      {
         if(name_55 == null)
         {
            name_55 = new class_224(method_976);
         }
         return name_55;
      }
      
      public final function name_16(param1:class_219) : void
      {
         this.var_1943 = param1;
      }
      
      private final function setTime(param1:Number) : void
      {
         if(this.var_1943 == null)
         {
            return;
         }
         this.var_2400 = param1;
         this.var_2303 = new Date();
         this.var_1943.method_2285(param1);
         if(param1 < 1000)
         {
            return;
         }
         if(this.var_2018)
         {
            return;
         }
         this.var_2018 = true;
         TweenLite.to(this,1,{"onComplete":this.handleCounter});
      }
      
      private final function handleCounter() : void
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.time - this.var_2303.time;
         var _loc3_:Number = this.var_2400 - _loc2_;
         this.var_2018 = false;
         this.setTime(_loc3_);
      }
   }
}
