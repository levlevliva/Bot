package package_3
{
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronRitualsVo;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameScoreScreenModule;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameRewardParamVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMinigameRewardWindow;
   import com.bit101.components.Label;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.minigame.class_1339;
   import net.bigpoint.seafight.com.module.minigame.class_470;
   import net.bigpoint.seafight.com.module.minigame.class_535;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_225;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_158.class_703;
   import package_158.class_728;
   import package_16.class_28;
   import package_162.class_835;
   import package_204.class_1338;
   import package_36.class_100;
   import package_41.class_93;
   import package_5.class_123;
   import package_53.class_1101;
   import package_56.class_170;
   import package_59.class_180;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_547 extends class_10
   {
       
      
      public function class_547()
      {
         super();
         method_23(class_470.name_3,this.method_2079);
         method_23(class_535.name_3,this.method_2157);
      }
      
      private final function method_2079(param1:class_14) : void
      {
         var _loc2_:class_470 = param1 as class_470;
         switch(_loc2_.var_468)
         {
            case class_1339.const_276:
               this.method_510(_loc2_,1);
               break;
            case class_1339.const_1607:
               this.method_510(_loc2_,2);
               break;
            case class_1339.const_1471:
               this.method_510(_loc2_,3);
               break;
            case class_1339.const_991:
               this.method_510(_loc2_,0);
               break;
            case class_1339.const_965:
               this.method_510(_loc2_,0);
         }
      }
      
      private final function method_510(param1:class_470, param2:int) : void
      {
         delay(2000,this.method_2658,"mgamedone" + param2,param1);
         if(param1.var_468 == class_1339.const_991)
         {
            return;
         }
         this.method_2328(MiniGameScoreScreenModule.getScore(param1.var_56));
         if(param1.var_468 == class_1339.const_965)
         {
            return;
         }
         this.method_2369();
      }
      
      private final function method_2658(param1:String, param2:class_470) : void
      {
         var _loc3_:class_87 = class_47.method_22;
         var _loc4_:MinigameRewardParamVo = new MinigameRewardParamVo();
         if(param2.var_468 == 0)
         {
            _loc4_.text = _loc3_.method_28("minigamefailed");
         }
         else
         {
            _loc4_.text = _loc3_.method_28(param1);
         }
         _loc4_.mingametype = param2.var_468 == 0?-1:int(param2.var_1540);
         _loc4_.score = param2.var_56.var_56;
         _loc4_.characterId = param2.var_1675;
         StatelessCMD.invoke(CmdSL_OpenMinigameRewardWindow,_loc4_);
      }
      
      private final function method_2369() : void
      {
         var _loc1_:class_100 = class_47.method_29.method_44(class_51.var_21);
         _loc1_.method_225().addChild(new class_1338());
      }
      
      private final function method_2328(param1:String) : void
      {
         var t:Text = null;
         var score:String = param1;
         t = new Text();
         t.y = 70;
         t.setSize(60);
         t.setBold(true);
         if(score == MiniGameScoreScreenModule.EMPTY_SCORE)
         {
            score = "...";
         }
         t.text = score;
         t.setColor(Text.YELLOW);
         t.horizontalCenter = 0;
         class_47.method_24.var_12.notifierContainer.general.addElement(t);
         delay(3000,function():void
         {
            TweenLite.to(t,5,{
               "alpha":0,
               "onComplete":function():void
               {
                  (t.parent as Group).removeElement(t);
               }
            });
         });
      }
      
      private final function method_2157(param1:class_14) : void
      {
         getSWFFinisher(class_123.const_67);
      }
   }
}
