package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.ScrollCostWindow;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildTreasuryLogListItem;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentLowerLeft;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.ScrollCostPopupController;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.component.ScrollCostPopup;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.vo.ScrollCostPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleResizableWindowSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1310;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import org.osflash.signals.Signal;
   import package_101.class_511;
   import package_103.class_1029;
   import package_14.class_47;
   import package_14.class_51;
   import package_171.class_1275;
   import package_171.class_1309;
   import package_185.class_1136;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_2.class_9;
   import package_20.class_33;
   import package_36.class_100;
   import package_41.class_84;
   import package_43.class_106;
   import package_45.class_110;
   import package_5.class_123;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_974;
   import package_53.class_1101;
   import package_58.class_175;
   import package_6.class_14;
   import package_8.class_114;
   import spark.components.Button;
   import spark.components.Label;
   import spark.components.TitleWindow;
   
   public final class class_393 implements class_9
   {
       
      
      public var var_1298:Signal;
      
      public var var_887:Signal;
      
      private var var_2171:class_1309;
      
      public function class_393()
      {
         super();
         this.var_1298 = new Signal(int,Number);
         this.var_887 = new Signal(int,Number);
         this.var_2171 = class_1309.method_21();
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_496 = null;
         var _loc5_:class_874 = null;
         var _loc6_:class_175 = null;
         var _loc7_:class_874 = null;
         _loc2_ = param1 as class_496;
         var _loc3_:class_100 = class_47.method_29.method_44(_loc2_.name_4);
         var _loc4_:Boolean = class_177.method_52(_loc2_.name_4,class_51.var_21);
         if(_loc4_)
         {
            this.var_2171.method_55(param1);
         }
         if(null == _loc3_)
         {
            _loc6_ = class_47.method_165.method_268(_loc2_.name_4.name_4);
            if(_loc6_)
            {
               for each(_loc7_ in _loc2_.name_18)
               {
                  this.method_1846(_loc6_,_loc7_,_loc2_.var_326);
               }
            }
            else
            {
               Main.LOG.error("entity does not exist: " + _loc2_.name_4.name_4);
            }
            return;
         }
         if(null == _loc3_.method_33)
         {
            Main.LOG.error("entity does not have shipVO: " + _loc2_.name_4.name_4);
            return;
         }
         for each(_loc5_ in _loc2_.name_18)
         {
            this.method_34(_loc3_,_loc5_,_loc2_.var_326);
         }
      }
      
      private final function method_1846(param1:class_175, param2:class_874, param3:int) : void
      {
         var _loc4_:Number = param2.name_19;
         switch(param2.var_402)
         {
            case AmsAttributeType.HITPOINTS:
               if(param3 == class_1310.const_304)
               {
                  param1.method_128.var_101 = _loc4_;
               }
               else if(param3 == class_1310.const_285)
               {
                  param1.method_128.var_182 = _loc4_;
               }
               param1.method_89(param1.method_128.var_101);
         }
      }
      
      private final function method_34(param1:class_100, param2:class_874, param3:int) : void
      {
         var _loc7_:class_174 = null;
         var _loc4_:Number = param2.name_19;
         var _loc5_:Boolean = param1.method_33.method_52(class_51.var_21);
         var _loc6_:Boolean = class_378.name_3.method_2355(class_1029.const_788,param1.method_33.name_4);
         switch(param2.var_402)
         {
            case AmsAttributeType.BOARDINGATTACKCOMBATVALUE:
            case AmsAttributeType.BOARDINGDEFENSECOMBATVALUE:
            case AmsAttributeType.BOARDINGTHRESHOLD:
               if(_loc5_)
               {
                  this.method_599(param1.method_33 as class_174,param2,class_1181.const_850);
                  break;
               }
               break;
            case AmsAttributeType.CANNONDODGEDAMAGE:
            case AmsAttributeType.CANNONDODGEHITCHANCE:
            case AmsAttributeType.CANNONHITCHANCE:
            case AmsAttributeType.BOARDINGGOLDLOOTGAINPRECENTAGE:
               if(_loc5_)
               {
                  this.method_599(param1.method_33 as class_174,param2,class_1181.const_981);
                  break;
               }
               break;
            case AmsAttributeType.CANNONRELOADTIME:
               if(_loc5_)
               {
                  this.method_599(param1.method_33 as class_174,param2,class_1181.const_850);
                  break;
               }
               break;
            case AmsAttributeType.CANNONRANGE:
               if(_loc5_)
               {
                  _loc7_ = param1.method_33 as class_174;
                  _loc7_.var_1868 = _loc4_;
                  class_47.method_48.method_213();
                  this.method_599(_loc7_,param2,class_1181.const_850);
                  break;
               }
               break;
            case AmsAttributeType.HARPOONRANGE:
               param1.method_33.method_695 = _loc4_;
               if(_loc5_)
               {
                  class_47.method_48.method_213();
                  break;
               }
               break;
            case AmsAttributeType.VOODOOPOINTS:
               if(param3 == class_1310.const_304)
               {
                  param1.method_33.var_190 = _loc4_;
               }
               else
               {
                  if(param3 == class_1310.const_285)
                  {
                     param1.method_33.var_356 = _loc4_;
                  }
                  break;
               }
               if(class_47.method_24 && _loc5_)
               {
                  class_47.method_72.method_412(param1.method_33.var_190);
               }
               if(!_loc6_)
               {
                  param1.method_331(param1.method_33.var_190);
                  break;
               }
               break;
            case AmsAttributeType.HITPOINTS:
               if(param3 == class_1310.const_304)
               {
                  param1.method_33.var_101 = _loc4_;
               }
               else
               {
                  if(param3 == class_1310.const_285)
                  {
                     param1.method_33.var_182 = _loc4_;
                  }
                  break;
               }
               if(class_47.method_24 && _loc5_)
               {
                  class_47.method_72.method_377(param1.method_33.var_101);
                  class_47.method_72.method_379();
               }
               if(!_loc6_)
               {
                  param1.method_89(param1.method_33.var_101);
                  break;
               }
               break;
            case AmsAttributeType.SPEED:
               param1.method_680(_loc4_);
               break;
            case AmsAttributeType.ROCKETSHOTS:
               param1.method_2782(_loc4_);
               break;
            case AmsAttributeType.VIEWDISTANCE:
               if(_loc5_)
               {
                  (param1.method_33 as class_174).var_121 = _loc4_;
                  break;
               }
               break;
            case AmsAttributeType.FIGUREHEADSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_283,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.WEAPONSLOTS:
               this.method_208(param1.method_33,param3,class_1136.const_14,_loc4_);
               param1.method_34();
               break;
            case AmsAttributeType.PETSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_16,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.PETTRAINERSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_91,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.STRUCTURESLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_193,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.SAILSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_29,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.BOARDINGCREWSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_53,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.BOARDINGCOMMANDERSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_123,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.COMMONWEALTHOFFICERSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_117,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.ARMORSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_70,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.MELEEWEAPONSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_129,_loc4_);
                  break;
               }
               break;
            case AmsAttributeType.RANGEDWEAPONSLOTS:
               if(_loc5_)
               {
                  this.method_208(param1.method_33,param3,class_1136.const_142,_loc4_);
                  break;
               }
               break;
            default:
               Main.LOG.warn("Unhandled attribute id \"" + param2.var_402 + "\" with value: " + _loc4_);
         }
      }
      
      private final function method_208(param1:class_173, param2:int, param3:int, param4:int) : void
      {
         if(param2 == class_1310.const_285)
         {
            param1.name_59.method_805(param3,param4);
            this.var_1298.dispatch(param3,param4);
         }
         else if(param2 == class_1310.const_304)
         {
            param1.name_59.method_1792(param3,param4);
            this.var_1298.dispatch(param3,param4);
         }
      }
      
      private final function method_1923(param1:class_173, param2:class_874, param3:int) : void
      {
         param1.var_599.method_2062(param2.var_402,param2.name_19,param3);
      }
      
      private final function method_599(param1:class_174, param2:class_874, param3:int) : void
      {
         var _loc4_:int = param2.var_402;
         this.method_1923(param1,param2,param3);
         this.var_887.dispatch(_loc4_,param1.var_599.method_658(_loc4_));
      }
   }
}
