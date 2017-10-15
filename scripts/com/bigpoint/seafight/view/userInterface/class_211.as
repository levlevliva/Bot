package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModuleController;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_107.class_693;
   import package_14.class_47;
   import package_216.class_1575;
   import package_32.class_64;
   import package_34.class_117;
   import package_41.class_84;
   import package_5.class_43;
   import package_52.class_168;
   import package_6.class_14;
   import package_7.class_15;
   import package_88.class_1093;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_211 extends class_149
   {
      
      private static const const_80:ILogger = Log.getLogger("BattleInfoContainer");
       
      
      private var var_18:XML;
      
      private var var_102:UserInterface;
      
      private var var_216:Array;
      
      private var var_640:Number = 0;
      
      private var var_85:StyleSheet;
      
      public function class_211(param1:UserInterface)
      {
         super(class_47.method_22.method_28("battle_info_edit_mode_label",false,false),true);
         const_80.info("CONSTRUCTING");
         this.var_102 = param1;
         var_37 = class_43.const_597;
         var_46 = class_43.const_589;
         this.name_16();
      }
      
      private final function name_16() : void
      {
         var _loc1_:Object = null;
         this.var_216 = new Array();
         this.var_18 = this.var_102.getUIConfig().battleInfoContainer[0];
         this.var_85 = this.var_102.getStyleSheet();
         _loc1_ = this.var_85.getStyle(this.var_18.@style);
         this.scaleX = _loc1_.scale;
         this.scaleY = _loc1_.scale;
         this.alpha = _loc1_.alpha;
         this.visible = _loc1_.visible == "true";
         this.x = this.var_18.@xPos;
         this.y = this.var_18.@yPos;
      }
      
      public final function method_2542(param1:class_84, param2:String, param3:int, param4:int, param5:int, param6:int) : class_1093
      {
         var _loc7_:class_1093 = new class_1093();
         _loc7_.alpha = 0;
         _loc7_.visible = false;
         _loc7_.name_16(this.var_18.battleInfo[0],this.var_85,param1,param2,param3,param4,param5,param6);
         this.var_216.push(this.addChild(_loc7_));
         class_64.method_21().method_84(_loc7_,class_13.method_78(this.var_18.@tooltipKey));
         this.method_705();
         return _loc7_;
      }
      
      private final function method_705() : void
      {
         var _loc8_:int = 0;
         var _loc2_:int = this.var_18.@maxBattleInfos;
         var _loc3_:int = this.var_640 + 1;
         var _loc4_:int = this.var_18.@battleInfoSpacer;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:class_1093 = this.var_216[this.var_640];
         if(this.var_640 < this.var_216.length && this.var_640 < _loc2_)
         {
            _loc5_ = Math.round(_loc3_ / 1);
            _loc6_ = Math.floor(_loc3_ / _loc5_);
            _loc8_ = this.var_640 - 1;
            if(_loc8_ < 0)
            {
               _loc7_.x = 0;
               _loc7_.y = 0;
            }
            else
            {
               _loc7_.x = (this.var_216[this.var_640 - 1].width + _loc4_) * (_loc6_ - 1);
               _loc7_.y = (this.var_216[this.var_640 - 1].height + _loc4_) * (_loc5_ - 1);
            }
            _loc7_.visible = true;
            this.var_640++;
            this.method_705();
         }
         else
         {
            this.var_640 = 0;
         }
      }
      
      private final function method_2575(param1:class_1093) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.var_216.length)
         {
            if(this.var_216[_loc2_].name == param1.name)
            {
               this.var_216.splice(_loc2_,1);
            }
            _loc2_++;
         }
      }
      
      public final function method_1073(param1:class_1093) : void
      {
         this.method_2575(param1);
         if(param1.parent != null)
         {
            class_64.method_21().method_287(param1);
            param1.parent.removeChild(param1);
         }
         if(this.var_216.length > 0)
         {
            this.method_705();
         }
      }
      
      public final function method_2939() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_216.length)
         {
            this.removeChild(this.var_216[_loc1_]);
            _loc1_++;
         }
         this.var_216.splice(0);
      }
      
      public final function method_2890(param1:class_1093) : void
      {
         var _loc2_:int = 0;
         var _loc6_:class_1093 = null;
         if(this.var_216.length < 2)
         {
            return;
         }
         if(this.var_216[0] == param1)
         {
            return;
         }
         while(_loc2_ < this.var_216.length)
         {
            _loc6_ = this.var_216[_loc2_];
            if(_loc6_ == param1)
            {
               break;
            }
            _loc2_++;
         }
         var _loc3_:class_1093 = this.var_216[0];
         this.var_216[_loc2_] = this.var_216[0];
         this.var_216[0] = param1;
         var _loc4_:int = _loc3_.x;
         var _loc5_:int = _loc3_.y;
         if(param1.parent == null || !param1.visible)
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.x = param1.x;
            _loc3_.y = param1.y;
         }
         param1.x = _loc4_;
         param1.y = _loc5_;
         param1.visible = true;
      }
   }
}
