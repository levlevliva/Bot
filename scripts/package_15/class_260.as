package package_15
{
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildNameItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyColumnCheckBoxRenderer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_102.class_359;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_16.class_28;
   import package_2.class_9;
   import package_28.class_56;
   import package_29.class_565;
   import package_41.class_84;
   import package_49.class_140;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_104;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   
   public class class_260 extends EventDispatcher implements class_9, class_77
   {
       
      
      private var var_125:class_28;
      
      private var var_1107:class_14;
      
      private var var_1820:class_14;
      
      private var var_2072:int;
      
      private var var_1709:int;
      
      private var var_1031:Boolean;
      
      public function class_260(param1:class_28, param2:int, param3:class_14, param4:int = -1)
      {
         super();
         this.var_125 = param1;
         if(param1 == null)
         {
            throw new Error("Set ConnectionProxy");
         }
         this.var_1820 = param3;
         this.var_1031 = false;
         this.var_2072 = param2;
         this.var_125.method_30(this.var_2072,this);
         this.var_1709 = param4;
         if(this.var_1709 != -1)
         {
            this.var_125.method_30(class_104.name_3.method_16(),this);
         }
         this.var_125.addEventListener(class_56.const_51,this.method_1183);
      }
      
      protected final function method_38() : class_14
      {
         if(this.var_1107)
         {
            return this.var_1107;
         }
         if(this.var_1820 && !this.var_1031 && this.var_125.name_99)
         {
            this.var_1031 = this.var_125.method_31(this.var_1820);
         }
         return null;
      }
      
      public final function method_248(param1:class_14) : void
      {
         var _loc2_:class_104 = param1 as class_104;
         if(_loc2_)
         {
            if(_loc2_.name_5 == this.var_1709)
            {
               this.var_1107 = null;
               this.var_1031 = false;
               dispatchEvent(new Event(Event.CHANGE));
            }
         }
         else if(this.method_1935(param1))
         {
            this.var_1107 = param1;
            this.var_1031 = false;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public final function method_36() : void
      {
         this.var_125.removeEventListener(class_56.const_51,this.method_1183);
         this.var_125.method_1478(this.var_2072,this);
         if(this.var_1709 != -1)
         {
            this.var_125.method_1478(class_104.name_3.method_16(),this);
         }
      }
      
      protected function method_1935(param1:class_14) : Boolean
      {
         throw new class_565();
      }
      
      private final function method_1183(param1:Event) : void
      {
         this.var_1107 = null;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public final function method_54() : void
      {
         this.var_1107 = null;
         this.var_1031 = false;
      }
   }
}
