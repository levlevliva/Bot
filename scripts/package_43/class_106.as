package package_43
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.texteditor.target;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_16.class_28;
   import package_169.class_977;
   import package_18.class_571;
   import package_34.class_1499;
   import package_5.class_123;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_106 extends class_78
   {
       
      
      private var var_1799:class_977;
      
      public function class_106(param1:class_273)
      {
         super();
         this.var_1799 = param1.var_1799;
         method_35(this.var_1799);
      }
      
      override protected function method_1182() : Object
      {
         return new Currencies_3671(this.var_1799.name_8);
      }
      
      public function get name_8() : Currencies_3671
      {
         return method_38() as Currencies_3671;
      }
   }
}

import flash.utils.Dictionary;
import package_104.class_448;
import package_104.class_641;
import package_41.class_103;

class Currencies_3671
{
    
   
   private var values:Dictionary;
   
   function Currencies_3671(param1:class_448)
   {
      var _loc2_:class_641 = null;
      super();
      this.values = new Dictionary();
      if(param1 == null)
      {
         return;
      }
      for each(_loc2_ in param1.name_9)
      {
         this.values[_loc2_.var_13] = _loc2_.var_10;
      }
   }
   
   public function getCurrencyAmount(param1:int) : Number
   {
      return !!this.values.hasOwnProperty("" + param1)?Number(this.values[param1]):Number(0);
   }
   
   public function get real() : Number
   {
      return this.getCurrencyAmount(class_103.name_32);
   }
   
   public function get gold() : Number
   {
      return this.getCurrencyAmount(class_103.name_36);
   }
   
   public function get mojos() : Number
   {
      return this.getCurrencyAmount(class_103.const_1110);
   }
   
   public function get crowns() : Number
   {
      return this.getCurrencyAmount(class_103.name_84);
   }
}
