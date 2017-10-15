package package_17
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsList;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import package_103.class_1029;
   import package_112.class_622;
   import package_122.class_428;
   import package_122.class_634;
   import package_136.class_926;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_51;
   import package_171.class_1059;
   import package_211.class_1369;
   import package_216.class_1575;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_12;
   import package_5.class_123;
   import package_53.class_1100;
   import package_9.class_120;
   import package_9.class_91;
   import package_92.class_1368;
   import package_99.class_853;
   import package_99.class_889;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   
   use namespace mx_internal;
   
   public final class class_990
   {
       
      
      private var var_1318:Vector.<class_1369>;
      
      private var var_2491:int;
      
      private var var_2128:class_1368;
      
      private var var_2490:class_1126;
      
      public function class_990(param1:Vector.<class_120>, param2:class_1126)
      {
         var _loc5_:class_120 = null;
         var _loc6_:class_1369 = null;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         super();
         this.var_2490 = param2;
         this.var_2491 = param2.var_2370;
         this.var_2128 = new class_1368(param2.var_1306,-1,0,0);
         this.var_1318 = new Vector.<class_1369>();
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = new class_1369();
            _loc7_ = _loc5_.var_235;
            _loc6_.name_7 = _loc7_;
            _loc6_.var_9 = _loc5_.var_9;
            _loc6_.var_8 = _loc5_.var_8;
            _loc8_ = param2.method_256(_loc7_);
            if(null == _loc8_)
            {
               Main.LOG.error("no bitmap for tile id " + _loc7_);
               _loc8_ = param2.var_1306;
            }
            _loc6_.var_1138 = _loc8_;
            this.var_1318.push(_loc6_);
            _loc4_++;
         }
      }
      
      public final function method_2137(param1:int, param2:int) : void
      {
         var _loc3_:class_1369 = null;
         for each(_loc3_ in this.var_1318)
         {
            if(_loc3_.name_7 == param1)
            {
               _loc3_.name_7 = param2;
               _loc3_.var_1138 = class_47.method_51.method_1928(_loc3_.name_7);
            }
         }
      }
      
      public final function method_2112(param1:int) : class_1369
      {
         var _loc2_:class_1369 = null;
         for each(_loc2_ in this.var_1318)
         {
            if(_loc2_.name_7 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public final function method_256(param1:int, param2:int) : class_1369
      {
         var _loc3_:class_1369 = null;
         for each(_loc3_ in this.var_1318)
         {
            if(_loc3_.var_9 == param1 && _loc3_.var_8 == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public final function method_738() : class_1368
      {
         return this.var_2128;
      }
   }
}
