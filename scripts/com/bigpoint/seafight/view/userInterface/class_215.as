package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowRanksTab;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_147.class_572;
   import package_167.class_1022;
   import package_216.class_1575;
   import package_29.class_57;
   import package_34.class_1499;
   import package_41.class_93;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_53.class_1100;
   import package_53.class_1101;
   import spark.components.VGroup;
   
   public final class class_215 extends class_149
   {
      
      private static const const_80:ILogger = Log.getLogger("MessageBoxContainer");
       
      
      private var var_18:XML;
      
      private var var_102:UserInterface;
      
      private var var_429:Array;
      
      private var var_85:StyleSheet;
      
      private var var_2482:class_1101;
      
      public function class_215(param1:UserInterface)
      {
         const_80.info("CONSTRUCTING");
         super();
         this.var_102 = param1;
         this.name_16();
      }
      
      public final function method_252(param1:Array, param2:Array) : class_1100
      {
         var _loc5_:int = 0;
         if(!param1 || param1.length > this.var_18.messageBox[0].@maxBtnCnt)
         {
            const_80.error("ERROR while processing MsgBoxCreation");
            return null;
         }
         var _loc3_:ScaleBitmap = new ScaleBitmap(getSWFFinisher(class_123.const_21).getEmbeddedBitmapData("messageboxbg"));
         var _loc4_:class_1100 = new class_1100(_loc3_);
         _loc5_ = this.var_429.length * 5;
         _loc3_.scale9Grid = new Rectangle(35,35,250,100);
         _loc4_.name_16(this.var_18.messageBox[0],this.var_85,param1,param2);
         if(class_12.var_104 == class_12.const_15)
         {
            _loc4_.x = (class_47.method_49.stageWidth - _loc4_.width) * 0.5;
            _loc4_.y = (class_47.method_49.stageHeight - _loc4_.height) * 0.5;
         }
         else
         {
            _loc4_.x = (class_51.var_39 - _loc4_.width) * 0.5 + class_47.method_24.method_122.x;
            _loc4_.y = (class_51.var_40 - _loc4_.height) * 0.5 + class_47.method_24.method_122.y;
         }
         _loc4_.x = _loc4_.x + _loc5_;
         _loc4_.y = _loc4_.y + _loc5_;
         this.var_429.push(this.addChild(_loc4_));
         return _loc4_;
      }
      
      public final function method_2655(param1:DisplayObject) : void
      {
         this.var_429.push(this.addChild(param1));
         param1.x = class_51.var_39 / 2 - param1.width / 2 + this.var_429.length * 5;
         param1.y = class_51.var_40 / 2 - param1.height / 2 + this.var_429.length * 5;
         param1.x = param1.x + class_47.method_24.method_122.x;
         param1.y = param1.y + class_47.method_24.method_122.y;
      }
      
      public final function method_348(param1:DisplayObject, param2:Class = null) : void
      {
         this.method_2559(param1);
         if(param2 == null)
         {
            (param1 as class_1100).method_1021();
         }
         else
         {
            param2(param1).removeListener();
         }
         this.removeChild(param1);
      }
      
      public final function method_1517() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_429.length)
         {
            this.var_429[_loc1_].removeListener();
            this.removeChild(this.var_429[_loc1_]);
            _loc1_++;
         }
         this.var_429.splice(0);
      }
      
      private final function name_16() : void
      {
         this.var_18 = this.var_102.getUIConfig().messageBoxContainer[0];
         this.var_85 = this.var_102.getStyleSheet();
         this.var_429 = new Array();
         this.var_2482 = new class_1101();
      }
      
      private final function method_2559(param1:DisplayObject) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.var_429.length)
         {
            if(this.var_429[_loc2_].name == param1.name)
            {
               this.var_429.splice(_loc2_,1);
            }
            _loc2_++;
         }
      }
   }
}
