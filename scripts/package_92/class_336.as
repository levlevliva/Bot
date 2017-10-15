package package_92
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bit101.components.ListItem;
   import com.bit101.components.Style;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import package_14.class_47;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public class class_336 extends BitmapClip implements class_335
   {
       
      
      protected var var_998:int;
      
      public function class_336(param1:MovieClip, param2:String, param3:int = -1, param4:int = 30, param5:Boolean = false, param6:Boolean = false, param7:int = 1, param8:int = -1)
      {
         super(param1,param2,param4,param5,param6,param7,param8);
         this.var_998 = param3;
      }
      
      public final function method_161() : Array
      {
         return super.bitmapDataPlayList;
      }
      
      public function set name_5(param1:int) : void
      {
         this.var_998 = param1;
      }
      
      public function get name_5() : int
      {
         return this.var_998;
      }
   }
}
