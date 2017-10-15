package package_165
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingLogListItemVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.ResizeEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_126.class_1341;
   import package_14.class_47;
   import package_14.class_51;
   import package_16.class_28;
   import package_166.class_1344;
   import package_166.class_1345;
   import package_166.class_1348;
   import package_166.class_1349;
   import package_166.class_1350;
   import package_17.class_29;
   import package_17.class_31;
   import package_17.class_37;
   import package_17.class_54;
   import package_23.class_42;
   import package_26.class_969;
   import package_31.class_63;
   import package_32.class_64;
   import package_4.class_11;
   import package_40.class_800;
   import package_41.class_89;
   import package_46.class_1224;
   import package_5.class_1047;
   import package_5.class_1463;
   import package_50.class_141;
   import package_72.class_203;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   
   public class class_956 extends class_952 implements class_953
   {
       
      
      protected var var_1482:class_1345;
      
      protected var name_24:class_1348;
      
      protected var var_665:class_1350;
      
      protected var var_1031:class_1349;
      
      public function class_956(param1:class_173)
      {
         super(param1);
         this.name_24 = new class_1348();
         this.var_665 = new class_1350();
         this.var_665.method_1035 = true;
         this.var_1031 = new class_1349();
         this.var_1031.y = 15;
         this.var_1482 = method_588();
         this.var_1482.y = 32;
         var_116.y = 35;
         this.method_34(param1);
         this.var_665.y = var_472.y + var_472.height * 0.5;
         addChild(this.var_1482);
         addChild(this.name_24);
         addChild(this.var_665);
         addChild(this.var_1031);
      }
      
      override public function method_34(param1:class_172) : void
      {
         var _loc2_:class_173 = null;
         super.method_34(param1);
         _loc2_ = param1 as class_173;
         this.name_24.name_24 = _loc2_.var_994;
         this.var_665.name_7 = _loc2_.var_665;
         this.var_665.visible = _loc2_.var_665 > 0;
         this.var_1031.method_34(_loc2_.name_4);
         this.method_593(_loc2_.var_44,_loc2_.var_154,class_1344.const_980);
      }
      
      public function method_2582(param1:int) : void
      {
         this.var_1482.method_733(param1);
      }
      
      override protected function method_593(param1:String, param2:String = null, param3:int = 0) : void
      {
         super.method_593(param1,param2,param3);
         var _loc4_:class_173 = var_228 as class_173;
         var _loc5_:int = class_1345.const_756 * 0.5;
         var _loc6_:int = (var_472.width > this.var_1031.width?var_472.width:this.var_1031.width) * 0.5;
         var _loc7_:int = _loc6_ > _loc5_?int(_loc6_):int(_loc5_);
         var _loc8_:int = -_loc7_;
         if(_loc4_.var_994 > 0)
         {
            _loc8_ = _loc8_ - this.name_24.width;
         }
         this.name_24.x = _loc8_;
         this.var_665.x = _loc7_;
      }
      
      override protected function method_884(param1:String) : String
      {
         param1 = super.method_884(param1);
         param1 = method_692(param1);
         return param1;
      }
   }
}
