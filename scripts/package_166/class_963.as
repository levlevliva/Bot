package package_166
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_143.class_933;
   import package_171.class_1268;
   import package_213.class_1522;
   import package_27.class_53;
   import package_29.class_166;
   import package_41.class_93;
   import package_46.class_1356;
   import package_5.class_43;
   import package_5.class_940;
   import package_54.class_1089;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_120;
   import package_92.class_335;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.core.SpriteVisualElement;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public class class_963 extends class_962 implements class_961
   {
      
      private static const const_1604:String = "defaultFX";
       
      
      protected var var_1267:int;
      
      protected var var_1097:int;
      
      protected var var_1172:int;
      
      protected var var_1498:int;
      
      protected var var_174:Sprite;
      
      protected var var_1062:Number;
      
      protected var var_1198:Boolean;
      
      private var var_2030:Boolean;
      
      public function class_963()
      {
         super(!!class_49.method_42(class_43.const_321)?int(class_944.const_454):int(class_944.const_56));
      }
      
      public final function method_193(param1:int, param2:Number, param3:int = 16777215, param4:Boolean = false) : void
      {
         this.name_25 = param1;
         this.var_1267 = param3;
         this.var_2030 = param4;
         this.var_1062 = param2;
         this.method_1398();
      }
      
      public function set name_25(param1:int) : void
      {
         this.var_1498 = param1;
         this.var_1097 = this.var_1498 * class_940.const_312;
         this.var_1172 = this.var_1498 * class_940.const_402;
      }
      
      public final function method_34() : void
      {
         if(this.var_174 == null)
         {
            return;
         }
         this.var_174.x = -this.var_1097;
         this.var_174.y = -this.var_1172;
         this.var_174.width = this.var_1097 * 2;
         this.var_174.height = this.var_1172 * 2;
      }
      
      protected function method_1398() : void
      {
         this.method_36();
         this.var_174 = new Sprite();
         this.var_174.name = const_1604;
         this.var_174.graphics.beginFill(this.var_1267,this.var_1062);
         this.var_174.graphics.drawEllipse(-this.var_1097,-this.var_1172,this.var_1097 * 2,this.var_1172 * 2);
         this.var_174.graphics.endFill();
         this.addChild(this.var_174);
      }
      
      public function method_327(param1:int, param2:int = -1) : void
      {
      }
      
      public function method_1215() : int
      {
         return class_209.const_172;
      }
      
      public function method_788() : uint
      {
         return this.var_1267;
      }
      
      public function get method_1236() : int
      {
         return this.x;
      }
      
      public function get method_1275() : int
      {
         return this.y;
      }
      
      public function get method_2819() : int
      {
         return this.var_1498;
      }
      
      public function get name_61() : Boolean
      {
         return this.var_2030;
      }
      
      public function set name_61(param1:Boolean) : void
      {
         this.var_2030 = param1;
      }
      
      public function get method_2488() : Number
      {
         return this.var_1062;
      }
      
      public function set method_2488(param1:Number) : void
      {
         this.var_1062 = param1;
      }
      
      public function get name_98() : Boolean
      {
         return this.var_1198;
      }
      
      public function method_36() : void
      {
         if(this.var_174 && this.var_174.parent)
         {
            this.var_174.parent.removeChild(this.var_174);
         }
      }
   }
}
