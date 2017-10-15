package com.adobe.utils
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetsInventory;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_10.class_18;
   import package_10.class_38;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_94;
   import package_152.class_664;
   import package_171.class_1275;
   import package_26.class_1088;
   import package_34.class_1611;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_5.class_22;
   import package_5.class_984;
   import package_6.class_14;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class StringUtil
   {
       
      
      public function StringUtil()
      {
         super();
      }
      
      public static function beginsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(0,param2.length);
      }
      
      public static function trim(param1:String) : String
      {
         return StringUtil.ltrim(StringUtil.rtrim(param1));
      }
      
      public static function stringsAreEqual(param1:String, param2:String, param3:Boolean) : Boolean
      {
         if(param3)
         {
            return param1 == param2;
         }
         return param1.toUpperCase() == param2.toUpperCase();
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function rtrim(param1:String) : String
      {
         var _loc2_:Number = param1.length;
         var _loc3_:Number = _loc2_;
         while(_loc3_ > 0)
         {
            if(param1.charCodeAt(_loc3_ - 1) > 32)
            {
               return param1.substring(0,_loc3_);
            }
            _loc3_--;
         }
         return "";
      }
      
      public static function endsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - param2.length);
      }
      
      public static function stringHasValue(param1:String) : Boolean
      {
         return param1 != null && param1.length > 0;
      }
      
      public static function remove(param1:String, param2:String) : String
      {
         return StringUtil.replace(param1,param2,"");
      }
      
      public static function ltrim(param1:String) : String
      {
         var _loc2_:Number = param1.length;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1.charCodeAt(_loc3_) > 32)
            {
               return param1.substring(_loc3_);
            }
            _loc3_++;
         }
         return "";
      }
   }
}
