package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetStatsComponent;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.component.UpgradeCastleSlotPopup;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_104.class_448;
   import package_104.class_989;
   import package_111.class_696;
   import package_111.class_745;
   import package_114.class_551;
   import package_14.class_47;
   import package_157.class_896;
   import package_166.class_970;
   import package_190.class_1168;
   import package_215.class_1600;
   import package_41.class_84;
   import package_41.class_89;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_984;
   import package_50.class_141;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_51.class_1355;
   import package_54.class_162;
   import package_6.class_14;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_177
   {
       
      
      public function class_177()
      {
         super();
      }
      
      public static function method_52(param1:class_84, param2:class_84) : Boolean
      {
         if(!param1 || !param2)
         {
            return !param1 && !param2;
         }
         return param1.name_4 == param2.name_4 && param1.var_6 == param2.var_6;
      }
      
      public static function method_703(param1:class_89, param2:class_89) : Boolean
      {
         if(!param1 || !param2)
         {
            return !param1 && !param2;
         }
         return param1.name_20 == param2.name_20 && param1.var_6 == param2.var_6;
      }
      
      public static function method_812(param1:class_84, param2:class_84) : void
      {
         param2.name_4 = param1.name_4;
         param2.var_6 = param1.var_6;
      }
      
      public static function method_90(param1:class_84) : String
      {
         if(param1 == null)
         {
            return null;
         }
         return param1.var_6 + "/" + param1.name_4;
      }
      
      public static function method_1149(param1:class_89) : String
      {
         return param1.var_6 + "/" + param1.name_20;
      }
   }
}
