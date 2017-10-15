package package_166
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuDropdownButton;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.states.AddItems;
   import mx.states.State;
   import package_111.class_726;
   import package_111.class_774;
   import package_120.class_919;
   import package_14.class_1002;
   import package_14.class_47;
   import package_171.class_1276;
   import package_46.class_1356;
   import package_5.class_22;
   import package_54.class_159;
   import package_88.class_290;
   import package_92.class_336;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   use namespace mx_internal;
   
   public final class class_965 extends class_336 implements class_961
   {
       
      
      private var var_513:int;
      
      private var var_1940:int;
      
      private var var_1506:uint;
      
      public function class_965(param1:MovieClip, param2:String, param3:int = -1)
      {
         super(param1,param2,param3);
         this.var_1940 = class_209.const_251;
         this.var_1506 = class_209.const_178;
      }
      
      public function set name_7(param1:int) : void
      {
         this.var_513 = param1;
      }
      
      public function get name_7() : int
      {
         return this.var_513;
      }
      
      public function get method_1236() : int
      {
         return this.x;
      }
      
      public function get method_1275() : int
      {
         return this.y;
      }
      
      public function method_327(param1:int, param2:int = -1) : void
      {
         this.var_1940 = param1;
         this.var_1506 = param2;
      }
      
      public function method_1215() : int
      {
         return this.var_1940;
      }
      
      public function method_788() : uint
      {
         return this.var_1506;
      }
   }
}
