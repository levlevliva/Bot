package package_130
{
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getClass;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.groupmap.roleselection.component.target;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_101.class_1549;
   import package_111.class_696;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_158.class_703;
   import package_184.class_1135;
   import package_186.class_1137;
   import package_186.class_1465;
   import package_212.class_1537;
   import package_26.class_204;
   import package_41.class_84;
   import package_46.class_1224;
   import package_47.class_129;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_309;
   import package_6.class_14;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   
   use namespace mx_internal;
   
   public final class class_893 implements class_14
   {
      
      public static const name_3:class_893 = new class_893();
       
      
      private var var_646:int = 0;
      
      public function class_893()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 15512;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15512);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
      }
   }
}
