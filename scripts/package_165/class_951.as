package package_165
{
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.model.inventory.vo.cannon.DefaultCannon_VO;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.core.TweenCore;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_461;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_101.class_357;
   import package_101.class_388;
   import package_101.class_483;
   import package_101.class_495;
   import package_101.class_511;
   import package_101.class_549;
   import package_107.class_693;
   import package_109.class_385;
   import package_109.class_626;
   import package_126.class_453;
   import package_126.class_488;
   import package_126.class_508;
   import package_132.class_605;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_166.class_1345;
   import package_17.class_151;
   import package_170.class_979;
   import package_210.class_1364;
   import package_216.class_1575;
   import package_26.class_1128;
   import package_26.class_942;
   import package_26.class_960;
   import package_26.class_969;
   import package_34.class_1127;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_5.class_1028;
   import package_5.class_945;
   import package_55.class_1228;
   import package_6.class_14;
   import package_61.class_787;
   import package_7.class_74;
   import package_9.class_404;
   import package_9.class_426;
   import package_9.class_836;
   import package_98.class_777;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   
   public class class_951 extends class_950
   {
       
      
      protected var var_228:class_172;
      
      protected var var_116:class_1345;
      
      protected var var_1690:Boolean;
      
      protected var var_1822:Boolean;
      
      public function class_951(param1:class_172)
      {
         super();
         this.var_228 = param1;
         this.var_116 = new class_1345();
         this.var_116.y = 21;
         this.var_1690 = false;
         this.var_1822 = true;
         addChild(this.var_116);
      }
      
      public final function method_1578(param1:Boolean, param2:Boolean) : void
      {
         this.var_1690 = param1;
         this.var_1822 = param2;
      }
      
      public function method_34(param1:class_172) : void
      {
         this.var_228 = param1;
      }
      
      public final function method_1100(param1:int) : void
      {
         this.var_116.method_733(param1);
      }
      
      protected final function method_588() : class_1345
      {
         var _loc1_:class_1345 = new class_1345(8978644);
         _loc1_.y = 18;
         return _loc1_;
      }
      
      override protected function method_593(param1:String, param2:String = null, param3:int = 0) : void
      {
         param1 = this.method_884(param1);
         super.method_593(param1,param2,param3);
      }
      
      protected function method_884(param1:String) : String
      {
         if(class_51.var_696)
         {
            param1 = param1 + (" [" + this.var_228.method_2086() + "]");
         }
         if(this.var_1690)
         {
            param1 = param1 + (" HP: " + (!!this.var_1822?this.var_228.var_101.toString():"????"));
         }
         return param1;
      }
      
      protected final function method_692(param1:String) : String
      {
         if(this.var_1690)
         {
            param1 = param1 + (" VP: " + (this.var_228 as class_173).var_190);
         }
         return param1;
      }
   }
}
