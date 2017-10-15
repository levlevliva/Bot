package package_91
{
   import com.bigpoint.seafight.model.nonpersistent.GroupQueueModel;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ShipEquipmentTargetList;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.MysteryChestTooltip;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.class_208;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_211;
   import com.bigpoint.seafight.view.userInterface.class_212;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.class_221;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.GemItemToolTip;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.graphics.LinearGradientStroke;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import org.apache.flex.collections.VectorCollection;
   import package_104.class_641;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_17.class_224;
   import package_170.class_979;
   import package_171.class_1057;
   import package_26.class_218;
   import package_27.class_53;
   import package_34.class_107;
   import package_40.class_83;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1493;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_50.class_219;
   import package_54.class_1006;
   import package_6.class_14;
   import package_65.class_1046;
   import package_69.class_978;
   import package_89.class_299;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_807 implements class_14
   {
      
      public static const name_3:class_807 = new class_807();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_103:int = 0;
      
      public function class_807(param1:class_84 = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_103 = param2;
      }
      
      public function method_16() : int
      {
         return -7533;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 9 % 16 | (65535 & this.name_4.var_6) << 16 - 9 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_103 = param1.readShort();
         this.var_103 = 65535 & ((65535 & this.var_103) >>> 6 % 16 | (65535 & this.var_103) << 16 - 6 % 16);
         this.var_103 = this.var_103 > 32767?int(this.var_103 - 65536):int(this.var_103);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7533);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 9 % 16 | (65535 & this.name_4.var_6) >>> 16 - 9 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(65535 & ((65535 & this.var_103) << 6 % 16 | (65535 & this.var_103) >>> 16 - 6 % 16));
      }
   }
}
