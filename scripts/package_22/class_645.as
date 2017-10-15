package package_22
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_132.class_494;
   import package_132.class_605;
   import package_14.class_47;
   import package_190.class_1168;
   import package_32.class_64;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_6.class_14;
   import package_69.class_978;
   import package_88.class_1093;
   import package_89.class_1378;
   import package_9.class_76;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_645 extends class_644
   {
      
      public static const name_3:class_645 = new class_645();
       
      
      private var var_646:int = 0;
      
      public var var_89:int = 0;
      
      public function class_645(param1:int = 0)
      {
         super();
         this.var_89 = param1;
      }
      
      override public function method_16() : int
      {
         return 10038;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_89 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10038);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_89);
      }
   }
}
