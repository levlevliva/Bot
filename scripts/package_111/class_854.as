package package_111
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_Label;
   import com.bigpoint.seafight.view.popups.common.SmallGreenAcceptButtonSkin;
   import com.bigpoint.seafight.view.popups.common.StartProgressButton;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsTableColumnHeaderRenderer;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.filters.BevelFilter;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_130.class_663;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_153.class_931;
   import package_171.class_1057;
   import package_183.class_1454;
   import package_188.class_1195;
   import package_190.class_1181;
   import package_36.class_1417;
   import package_42.class_959;
   import package_46.class_975;
   import package_5.class_214;
   import package_52.class_1083;
   import package_6.class_14;
   import package_72.class_1442;
   import package_89.class_1378;
   import package_91.class_414;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.gridClasses.GridColumn;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.Rect;
   
   public final class class_854 implements class_14
   {
      
      public static const name_3:class_854 = new class_854();
       
      
      private var var_646:int = 0;
      
      public function class_854()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 10891;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10891);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
      }
   }
}
