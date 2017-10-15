package package_3
{
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.SoundChannel;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.sound.class_439;
   import package_131.class_573;
   import package_14.class_47;
   import package_163.class_884;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_137;
   import package_54.class_1089;
   import package_6.class_14;
   import package_72.class_203;
   import package_9.class_76;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_345 extends class_10
   {
       
      
      public function class_345()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_439.name_3,this.method_2021);
      }
      
      private final function method_2021(param1:class_14) : void
      {
         var _loc2_:class_439 = param1 as class_439;
         if(_loc2_.name_28)
         {
            class_203.name_21(_loc2_.name_5);
         }
         else
         {
            class_203.method_64(_loc2_.name_5);
         }
      }
   }
}
