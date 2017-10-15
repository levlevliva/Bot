package package_34
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.greensock.TweenMax;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_111.class_1176;
   import package_111.class_790;
   import package_14.class_47;
   import package_14.class_51;
   import package_216.class_1575;
   import package_23.class_42;
   import package_41.class_84;
   import package_42.class_959;
   import package_42.class_98;
   import package_46.class_1224;
   import package_5.class_123;
   import package_5.class_945;
   import package_7.class_614;
   import spark.primitives.Rect;
   
   public final class class_333 extends class_69
   {
       
      
      private var var_728:class_1244;
      
      public function class_333()
      {
         super();
      }
      
      public final function name_23(param1:int) : void
      {
         if(null == this.var_728)
         {
            this.var_728 = new class_1244(param1);
            this.var_728.addEventListener(TimerEvent.TIMER,this.method_2707);
         }
         this.var_728.method_77();
         this.var_728.name_23();
      }
      
      public final function method_64() : void
      {
         if(this.var_728)
         {
            this.var_728.method_64();
         }
      }
      
      private final function method_2707(param1:TimerEvent) : void
      {
         class_614.name_3.name_17 = class_614.const_1720;
         class_614.name_3.var_201 = new Date().getTime();
         var_125.method_31(class_614.name_3);
      }
   }
}
