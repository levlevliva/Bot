package package_51
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.ISimplePopupHandler;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import package_130.class_1143;
   import package_14.class_47;
   import package_14.class_51;
   import package_179.mc;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_8.class_16;
   import package_91.class_414;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_974 extends Event
   {
      
      public static const const_7:String = "simplePopupCreate";
       
      
      private var var_1783:class_332;
      
      private var var_1905:ISimplePopupHandler;
      
      public function class_974(param1:String, param2:class_332, param3:ISimplePopupHandler = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_1783 = param2;
         this.var_1905 = param3;
      }
      
      override public function clone() : Event
      {
         return new class_974(this.type,this.var_1783,this.var_1905,this.bubbles,this.cancelable);
      }
      
      public function get method_1529() : ISimplePopupHandler
      {
         return this.var_1905;
      }
      
      public function get name_8() : class_332
      {
         return this.var_1783;
      }
   }
}
