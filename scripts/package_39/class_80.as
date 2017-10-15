package package_39
{
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import flash.events.Event;
   import flash.text.TextField;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import package_127.class_753;
   import package_14.class_47;
   import package_23.class_42;
   import package_28.class_56;
   import package_34.class_1099;
   import package_48.class_1534;
   import package_5.class_984;
   import spark.components.DataGroup;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   
   public final class class_80 extends Event
   {
       
      
      public var name_19:String;
      
      public function class_80(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.name_19 = param2;
      }
      
      override public function clone() : Event
      {
         return new class_80(type,this.name_19,bubbles,cancelable);
      }
   }
}
