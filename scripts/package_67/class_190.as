package package_67
{
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.LinearGradient;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_177.class_1049;
   import package_2.*;
   import package_20.class_109;
   import package_42.class_98;
   import package_5.class_1047;
   import package_50.class_1120;
   import package_50.class_141;
   import package_52.class_168;
   import package_6.class_14;
   import package_88.class_1093;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.Line;
   
   public final class class_190 extends class_109
   {
       
      
      private var var_930:class_1049;
      
      private var var_1876:class_232;
      
      private var var_1346:int;
      
      private var var_1704:int;
      
      private var var_1646:int;
      
      public function class_190()
      {
         super();
         this.var_1876 = class_47.method_51;
         this.var_1346 = -1;
      }
      
      public final function method_1188() : void
      {
         if(this.var_1876.method_175() == this.var_1346)
         {
            this.method_2697();
         }
         else
         {
            this.method_566();
         }
      }
      
      public final function method_1912(param1:int, param2:int, param3:int) : void
      {
         if(param1 == this.var_1346 && param2 == this.var_1704 && param3 == this.var_1646)
         {
            return;
         }
         this.var_1346 = param1;
         this.var_1704 = param2;
         this.var_1646 = param3;
         this.method_1188();
      }
      
      public final function method_724() : void
      {
         this.var_1346 = -1;
         this.method_566();
      }
      
      public final function method_1638(param1:int, param2:int) : void
      {
         if(param1 == this.var_1704 && param2 == this.var_1646)
         {
            this.method_566();
         }
         var _loc3_:String = param1 + "x" + param2;
         class_47.method_267.method_2006(_loc3_);
      }
      
      private final function method_2697() : void
      {
         if(this.var_930)
         {
            this.method_566();
         }
         var _loc1_:class_1048 = new class_1048();
         _loc1_.var_61 = this.var_1704;
         _loc1_.var_63 = this.var_1646;
         _loc1_.var_586 = class_1047.const_1312;
         this.var_930 = class_47.method_267.method_790(_loc1_);
      }
      
      private final function method_566() : void
      {
         if(this.var_930 == null)
         {
            return;
         }
         var _loc1_:Sprite = this.var_930.method_134();
         if(_loc1_ && _loc1_.parent)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
         this.var_930.method_378();
         this.var_930.suicide(false);
         this.var_930 = null;
      }
   }
}
