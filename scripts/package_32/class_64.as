package package_32
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.type.Gem_Model;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.RankingModuleSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemGeneralVO;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_14.class_47;
   import package_29.class_166;
   import package_6.class_14;
   import package_97.class_752;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_64
   {
      
      private static var name_55:class_64;
      
      private static const const_1405:String = ".toolTip";
       
      
      private var var_1018:Array;
      
      private var var_2204:int;
      
      public var var_1927:Boolean = true;
      
      private var var_1204:TextFormat;
      
      public function class_64(param1:Function)
      {
         this.var_1204 = new TextFormat();
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
         class_58.method_21().method_82("init tooltip control");
         this.name_16();
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_64
      {
         if(name_55 == null)
         {
            name_55 = new class_64(method_976);
         }
         return name_55;
      }
      
      private final function name_16() : void
      {
         this.var_1018 = new Array();
      }
      
      public final function method_2388(param1:StyleSheet) : void
      {
         var _loc2_:Object = param1.getStyle(const_1405);
         this.var_1204 = param1.transform(_loc2_);
         this.var_1204.color = 13421772;
         this.var_1204.size = 10;
         this.var_2204 = 0;
         class_338.method_2834(this.var_1204,this.var_2204);
      }
      
      public final function method_84(param1:InteractiveObject, param2:String, param3:Stage = null, param4:int = -1) : class_338
      {
         return this.method_1039(param1,param2,null,param3,param4);
      }
      
      public final function method_1039(param1:InteractiveObject, param2:String, param3:String, param4:Stage = null, param5:int = -1) : class_338
      {
         if(param2 == null || param2.length < 1)
         {
            return null;
         }
         var _loc6_:class_338 = new class_338(param1,param2,param3,param4,param5);
         this.var_1018.push(_loc6_);
         return _loc6_;
      }
      
      public final function method_287(param1:InteractiveObject) : void
      {
         var _loc4_:class_338 = null;
         var _loc2_:int = this.var_1018.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.var_1018[_loc3_] as class_338;
            if(_loc4_)
            {
               if(_loc4_.method_1348() == param1)
               {
                  _loc4_.method_1781();
                  this.var_1018.splice(_loc3_,1);
               }
            }
            _loc3_++;
         }
      }
      
      public final function method_901(param1:InteractiveObject) : class_338
      {
         var _loc4_:class_338 = null;
         var _loc2_:int = this.var_1018.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.var_1018[_loc3_] as class_338;
            if(_loc4_)
            {
               if(_loc4_.method_1348() == param1)
               {
                  return _loc4_;
               }
            }
            _loc3_++;
         }
         return null;
      }
   }
}
