package package_14
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuTreasuryTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuTreasuryTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Sine;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import package_41.class_84;
   import package_5.class_123;
   import package_51.class_1355;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.effects.easing.Linear;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class class_102
   {
      
      public static var var_1013:Rectangle = new Rectangle();
      
      public static var var_1274:Point = new Point();
      
      public static var var_699:Matrix = new Matrix();
      
      public static var var_707:Date = new Date();
       
      
      public function class_102()
      {
         super();
      }
      
      public static function method_399(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0) : Rectangle
      {
         var_1013.x = param1;
         var_1013.y = param2;
         var_1013.width = param3;
         var_1013.height = param4;
         return var_1013;
      }
      
      public static function method_210(param1:int = 0, param2:int = 0) : Point
      {
         var_1274.x = param1;
         var_1274.y = param2;
         return var_1274;
      }
      
      public static function method_276(param1:int = 0, param2:int = 0, param3:int = 1, param4:int = 0, param5:int = 0, param6:int = 1) : Matrix
      {
         var_699.tx = param1;
         var_699.ty = param2;
         var_699.a = param3;
         var_699.b = param4;
         var_699.c = param5;
         var_699.d = param6;
         return var_699;
      }
      
      public static function method_249(param1:Number) : Date
      {
         var_707.setTime(param1);
         return var_707;
      }
   }
}
