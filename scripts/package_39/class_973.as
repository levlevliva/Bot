package package_39
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.skins.windowbuttonbar.WindowButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.LockTitleWindowToggleButtonSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import package_145.class_1161;
   import package_145.class_567;
   import package_145.class_569;
   import package_146.class_1209;
   import package_146.class_1223;
   import package_146.class_568;
   import package_16.class_28;
   import package_166.class_971;
   import package_168.class_1142;
   import package_168.class_1165;
   import package_168.class_976;
   import package_169.class_1130;
   import package_169.class_1131;
   import package_169.class_1133;
   import package_169.class_1134;
   import package_169.class_1152;
   import package_169.class_1153;
   import package_169.class_1154;
   import package_169.class_1155;
   import package_169.class_1156;
   import package_169.class_1190;
   import package_169.class_1213;
   import package_169.class_1216;
   import package_169.class_977;
   import package_187.class_1164;
   import package_188.class_1144;
   import package_188.class_1149;
   import package_188.class_1151;
   import package_188.class_1201;
   import package_188.class_1203;
   import package_188.class_1215;
   import package_191.class_1171;
   import package_191.class_1173;
   import package_191.class_1174;
   import package_191.class_1175;
   import package_191.class_1177;
   import package_192.class_1172;
   import package_195.class_1188;
   import package_197.class_1197;
   import package_198.class_1202;
   import package_198.class_1204;
   import package_198.class_1206;
   import package_198.class_1207;
   import package_198.class_1208;
   import package_198.class_1211;
   import package_198.class_1214;
   import package_198.class_1218;
   import package_198.class_1221;
   import package_199.class_1220;
   import package_200.class_1222;
   import package_41.class_84;
   import package_80.class_1166;
   import package_80.class_1167;
   import package_80.class_1210;
   import package_80.class_1212;
   import package_80.class_261;
   import spark.components.Group;
   import spark.components.ToggleButton;
   
   public final class class_973 extends Event
   {
       
      
      public var name_19:int;
      
      public function class_973(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.name_19 = param2;
      }
      
      override public function clone() : Event
      {
         return new class_973(type,this.name_19,bubbles,cancelable);
      }
   }
}
