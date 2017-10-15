package package_14
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_111.class_741;
   import package_118.class_539;
   import package_123.class_1032;
   import package_123.class_837;
   import package_152.class_740;
   import package_212.class_1537;
   import package_32.class_64;
   import package_34.class_1526;
   import package_54.class_159;
   
   use namespace mx_internal;
   
   public final class class_1003 extends Event
   {
      
      public static const const_958:String = "SELECTION_IN_BOARDING_RANGE_EVENT";
       
      
      public var var_1789:Boolean;
      
      public function class_1003(param1:Boolean)
      {
         this.var_1789 = param1;
         super(const_958);
      }
   }
}
