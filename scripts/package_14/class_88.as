package package_14
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_15.class_273;
   import package_29.class_166;
   import package_41.class_93;
   import spark.components.Group;
   
   public class class_88 extends class_87
   {
      
      public static const const_2:String = "seafight.labels.";
      
      public static const const_19:String = const_2 + "Currency";
      
      public static const const_93:String = const_2 + "Weapons";
      
      public static const const_50:String = const_2 + "Ammunition";
      
      public static const const_85:String = const_2 + "Event";
      
      public static const const_243:String = const_2 + "GroupMapTypeEventTicker";
      
      public static const const_65:String = const_2 + "Harpoons";
      
      public static const const_153:String = const_2 + "ActionItems";
      
      public static const const_1160:String = const_2 + "ShipDecks";
      
      public static const const_614:String = const_2 + "EventPuzzle";
      
      public static const const_201:String = const_2 + "Pirates";
      
      public static const const_1129:String = const_2 + "Ships";
      
      public static const const_263:String = const_2 + "ShipDesigns";
      
      public static const const_358:String = const_2 + "CrewMembers";
      
      public static const const_45:String = const_2 + "NonPerishableGoods";
      
      public static const const_205:String = const_2 + "QuestItems";
      
      public static const const_1081:String = const_2 + "NonPerishableGoodsGroups";
      
      public static const const_258:String = const_2 + "Monsters";
      
      public static const const_308:String = const_2 + "NPCs";
      
      public static const const_296:String = const_2 + "ShipExtensions";
      
      public static const const_111:String = const_2 + "Sails";
      
      public static const const_228:String = const_2 + "UserAssets";
      
      public static const const_1080:String = const_2 + "ShipAssets";
      
      public static const const_260:String = const_2 + "Maps";
      
      public static const const_380:String = const_2 + "user";
      
      public static const const_672:String = const_2 + "GuildLogbook";
      
      public static const const_849:String = const_2 + "buttons";
      
      public static const const_27:String = const_2 + "FilterGroups";
      
      public static const const_947:String = const_2 + "SystemTeasers";
      
      public static const const_1002:String = const_2 + "Payment";
      
      public static const const_326:String = const_2 + "Subscriptions";
      
      public static const const_845:String = const_2 + "subscriptions";
      
      public static const const_1109:String = const_2 + "Logbook";
      
      public static const const_1242:String = const_2 + "Screenshots";
      
      public static const const_1188:String = const_2 + "Crafts";
      
      public static const const_1047:String = const_2 + "fontsizes";
      
      public static const const_294:String = const_2 + "pet";
      
      public static const const_1087:String = const_2 + "petRarity";
      
      public static const const_987:String = const_2 + "petType";
      
      public static const const_249:String = const_2 + "LeagueName";
      
      public static const const_620:String = const_2 + "MinigameType";
      
      public static const const_446:String = const_2 + "GroupMapType";
      
      public static const const_884:String = const_2 + "BattlePoints";
      
      public static const const_456:String = const_2 + "Buff";
      
      public static const const_434:String = const_2 + "Badge";
      
      public static const const_291:String = const_2 + "AmsCheckTypes";
      
      public static const const_30:String = const_2 + "AmsAttribute";
      
      public static const const_911:String = const_2 + "AmsDestroyStates";
      
      public static const const_374:String = const_2 + "Gems";
      
      public static const const_88:String = const_2 + "Factions";
      
      public static const const_361:String = const_2 + "premium";
      
      public static const const_646:String = const_2 + "CraftingMaterials";
      
      public static const const_693:String = const_2 + "GroupMapRoleType";
      
      public static const const_674:String = const_2 + "UserActionFailedReason";
      
      public static const const_934:String = const_2 + "GuildIslandType";
      
      public static const const_739:String = const_2 + "FleetTierType";
      
      public static const const_807:String = const_2 + "BoxType";
      
      public static const const_806:String = const_2 + "MonthNames";
      
      public static const const_385:String = const_2 + "CastleBoosters";
      
      public static const const_628:String = const_2 + "CastleNames";
      
      public static const const_985:String = const_2 + "SubtractReason";
       
      
      public function class_88(param1:String, param2:String, param3:Function)
      {
         super(param1,param2,param3);
         class_58.method_21().method_82("Loading labels resources");
      }
      
      public static function method_32(param1:String, param2:String) : String
      {
         return class_47.method_37.method_32(param1,param2);
      }
      
      override protected function method_620(param1:Event) : void
      {
         var categoryElement:XML = null;
         var category:String = null;
         var itemElement:XML = null;
         var type:String = null;
         var event:Event = param1;
         try
         {
            var_1091 = new XML(var_354.data);
            var_554 = new Dictionary();
            for each(categoryElement in var_1091["category"])
            {
               category = categoryElement.@name;
               var_554[category] = new Dictionary();
               for each(itemElement in categoryElement["item"])
               {
                  type = itemElement.@name;
                  var_554[category][type] = itemElement.toString();
               }
            }
         }
         catch(e:Error)
         {
            const_3.error("Error parsing labels resource");
            return;
         }
         var_1494();
      }
      
      override public function method_28(param1:String, param2:Boolean = true, param3:Boolean = true) : String
      {
         const_3.error("use getMsgFromInsideCategory instead of getMsgFromRes: " + param2 + ":" + param3);
         return param1;
      }
      
      public final function method_121(param1:String, param2:String) : String
      {
         var _loc3_:Dictionary = var_554[param1];
         if(null == _loc3_)
         {
            return null;
         }
         return _loc3_[param2];
      }
      
      public final function method_32(param1:String, param2:String) : String
      {
         var _loc3_:String = null;
         var _loc4_:Dictionary = var_554[param1];
         if(null == _loc4_)
         {
            const_3.warn(this + ": unknown labels resource category: " + param1);
            return param1 + ":" + param2;
         }
         _loc3_ = _loc4_[param2];
         if(null == _loc3_)
         {
            const_3.warn(this + ": undefined labels resource item \"" + param2 + "\" in category " + param1);
            return param1 + ":" + param2;
         }
         switch(var_2060)
         {
            case "ja":
            case "ko":
            case "zh":
               _loc3_ = _loc3_.replace("<b>","").replace("</b>","");
            default:
               _loc3_ = _loc3_.replace("<b>","").replace("</b>","");
         }
         if(null == _loc3_)
         {
            _loc3_ = "";
         }
         return _loc3_;
      }
   }
}
