package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.msg;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_132.class_494;
   import package_132.class_605;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_20.class_33;
   import package_214.class_1559;
   import package_26.class_52;
   import package_35.class_70;
   import package_36.class_100;
   import package_41.class_84;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_35;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class class_332
   {
      
      public static const const_12:int = -1;
      
      public static const const_552:int = 0;
      
      public static const const_842:int = 1;
      
      public static const const_1250:int = 2;
      
      public static const const_423:int = 3;
      
      public static const const_843:int = 4;
       
      
      public var var_30:ContentVo;
      
      public var var_28:Class;
      
      public var var_27:Class;
      
      public var var_51:Class;
      
      public var var_74:Class;
      
      public var var_67:String;
      
      public var name_13:String;
      
      public var name_56:int;
      
      public var var_493:String;
      
      public var var_1479:Vector.<String>;
      
      public var var_2290:Boolean;
      
      public var var_171:Vector.<int>;
      
      public var name_5:int;
      
      public var var_36:int = 310;
      
      public var var_31:int = 155;
      
      public var var_72:Boolean;
      
      public function class_332(param1:int = 0)
      {
         super();
         this.name_5 = param1;
         this.var_1479 = new Vector.<String>();
         this.var_2290 = true;
         this.var_171 = new Vector.<int>();
         this.var_72 = true;
      }
      
      public static function method_1941(param1:String, param2:Boolean = true) : class_332
      {
         var _loc3_:class_332 = new class_332(const_552);
         _loc3_.var_72 = param2;
         _loc3_.setOkPrompt();
         _loc3_.method_185(param1);
         return _loc3_;
      }
      
      public static function method_2787(param1:String) : class_332
      {
         var _loc2_:class_332 = new class_332(const_423);
         _loc2_.setYesNoPrompt();
         _loc2_.method_185(param1);
         return _loc2_;
      }
      
      public static function method_2940(param1:String) : class_332
      {
         var _loc2_:class_332 = new class_332(const_1250);
         _loc2_.setOkCancelPrompt();
         _loc2_.method_185(param1);
         return _loc2_;
      }
      
      private final function setOkPrompt() : void
      {
         this.var_171.push(PopupResponseType.OK);
      }
      
      private final function setOkCancelPrompt() : void
      {
         this.var_171.push(PopupResponseType.OK);
         this.var_171.push(PopupResponseType.CANCEL);
      }
      
      private final function setYesNoPrompt() : void
      {
         this.var_171.push(PopupResponseType.YES);
         this.var_171.push(PopupResponseType.NO);
      }
      
      public final function method_185(param1:String) : void
      {
         this.var_1479.push(param1);
      }
   }
}
