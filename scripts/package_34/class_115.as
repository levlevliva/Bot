package package_34
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuBar;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuSearchTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import com.greensock.core.PropTween;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.graphics.LinearGradient;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.event.class_707;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_871;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_101.class_779;
   import package_121.class_615;
   import package_121.class_814;
   import package_121.class_841;
   import package_123.class_1032;
   import package_14.class_47;
   import package_14.class_96;
   import package_157.class_896;
   import package_17.class_54;
   import package_18.class_748;
   import package_18.class_794;
   import package_18.class_916;
   import package_185.class_1136;
   import package_190.class_1168;
   import package_2.class_9;
   import package_214.class_1604;
   import package_32.class_64;
   import package_41.class_84;
   import package_41.class_89;
   import package_46.class_1224;
   import package_47.class_692;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_984;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   import package_54.class_162;
   import package_56.class_429;
   import package_69.class_978;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_97.class_986;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_115 extends class_69
   {
      
      private static var name_55:class_115;
      
      public static var var_2053:int;
      
      public static var var_2033:int;
      
      public static var var_2409:int;
       
      
      public function class_115()
      {
         super();
      }
      
      public static function get name_3() : class_115
      {
         if(name_55)
         {
            return name_55;
         }
         return name_55 = new class_115();
      }
      
      public final function method_1488() : void
      {
         if(false == class_429.name_3.method_1811())
         {
            return;
         }
         method_31(class_794.name_3);
      }
      
      public final function method_2568(param1:int, param2:int, param3:int, param4:int, param5:int = 1) : void
      {
         var _loc6_:class_916 = class_916.name_3;
         _loc6_.var_187 = param5;
         _loc6_.var_20 = param1;
         _loc6_.var_86 = param2;
         _loc6_.var_189.name_5 = param3;
         _loc6_.var_189.var_305 = param4;
         method_31(_loc6_);
      }
      
      public final function method_1805(param1:int, param2:int, param3:int) : void
      {
         var_2053 = param1;
         var_2033 = param2;
         var_2409 = param3;
      }
      
      public final function method_1325(param1:int, param2:int, param3:int, param4:int, param5:int = 1, param6:int = 0, param7:int = 100) : void
      {
         var _loc8_:class_748 = new class_748();
         _loc8_.name_16.var_187 = param5;
         _loc8_.name_16.var_20 = param1;
         _loc8_.name_16.var_86 = param2;
         _loc8_.name_16.var_189.name_5 = param3;
         _loc8_.name_16.var_189.var_305 = param4;
         _loc8_.name_34 = param6;
         _loc8_.var_131 = param7;
         method_31(_loc8_);
      }
      
      public final function method_907(param1:int, param2:class_84, param3:int = -1) : void
      {
         var _loc4_:class_707 = new class_707();
         _loc4_.name_4.name_4 = param2.name_4;
         _loc4_.name_4.var_6 = param2.var_6;
         _loc4_.var_549 = param3 < 0?int(class_986.const_8):int(param3);
         _loc4_.var_232 = param1;
         method_31(_loc4_);
      }
      
      public final function method_771(param1:Number, param2:int) : void
      {
         method_31(new class_779(param1,param2));
      }
      
      public final function method_944(param1:int, param2:int) : void
      {
         if(param2 > 0)
         {
            method_31(new class_814(param2));
         }
         else if(param1 > 0)
         {
            method_31(new class_615(param1));
         }
      }
      
      public final function method_2652() : void
      {
         method_31(new class_896());
      }
      
      public final function method_2060(param1:class_84) : void
      {
         method_31(new class_692(param1));
      }
   }
}
