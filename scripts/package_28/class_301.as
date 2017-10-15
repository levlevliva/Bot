package package_28
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_10.class_18;
   import package_10.class_38;
   import package_101.class_562;
   import package_14.class_51;
   import package_152.class_664;
   import package_166.class_1344;
   import package_5.class_984;
   import package_6.class_14;
   
   public final class class_301 extends Event
   {
      
      public static const const_1191:String = "CANNON_AMMO_CHANGED";
       
      
      public function class_301(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_1191,param1,param2);
      }
   }
}
