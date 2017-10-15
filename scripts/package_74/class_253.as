package package_74
{
   import com.adobe.utils.StringUtil;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.gems.class_925;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import package_10.class_202;
   import package_104.class_641;
   import package_15.class_273;
   import package_15.class_78;
   import package_190.class_1168;
   import package_22.class_36;
   import package_29.class_57;
   import package_39.class_973;
   import package_41.class_93;
   import package_6.class_14;
   import package_80.class_1169;
   import spark.primitives.Rect;
   
   public final class class_253 extends class_78
   {
       
      
      private var var_2348:class_1169;
      
      public function class_253(param1:class_273, param2:int)
      {
         super();
         method_35(this.var_2348 = param1.method_2176(param2));
      }
      
      override protected function method_1182() : Object
      {
         var _loc3_:class_1170 = null;
         var _loc5_:class_637 = null;
         var _loc6_:class_599 = null;
         var _loc1_:class_925 = this.var_2348.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:DataVo_2478 = new DataVo_2478();
         var _loc4_:int = _loc1_.var_730.length - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = _loc1_.var_730[_loc4_];
            _loc3_ = new class_1170(_loc5_.var_54,_loc1_.var_114);
            for each(_loc6_ in _loc5_.var_82)
            {
               _loc3_.method_2537(_loc6_.var_119,class_1168.name_3.method_222(_loc6_.var_97));
            }
            _loc3_.var_126 = _loc5_.var_126;
            _loc2_.holders.push(_loc3_);
            _loc4_--;
         }
         _loc2_.holders = _loc2_.holders.sort(this.method_1589);
         for each(_loc3_ in _loc2_.holders)
         {
            if(_loc3_.var_126)
            {
               _loc2_.favorites.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private final function method_1589(param1:class_1170, param2:class_1170) : int
      {
         if(param1.name_7 < param2.name_7)
         {
            return 1;
         }
         if(param1.name_7 > param2.name_7)
         {
            return -1;
         }
         return 0;
      }
      
      public final function method_1419(param1:int) : class_1170
      {
         var _loc3_:class_1170 = null;
         var _loc2_:DataVo_2478 = method_38() as DataVo_2478;
         for each(_loc3_ in _loc2_.holders)
         {
            if(_loc3_.name_7 == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function get method_343() : Vector.<class_1170>
      {
         var _loc1_:DataVo_2478 = method_38() as DataVo_2478;
         return !!_loc1_?_loc1_.holders:null;
      }
      
      public function get method_720() : Vector.<class_1170>
      {
         var _loc1_:DataVo_2478 = method_38() as DataVo_2478;
         return !!_loc1_?_loc1_.favorites:null;
      }
      
      public final function method_2080(param1:int, param2:Boolean) : void
      {
         var _loc4_:class_1170 = null;
         var _loc3_:DataVo_2478 = method_38() as DataVo_2478;
         if(_loc3_ == null)
         {
            return;
         }
         for each(_loc4_ in _loc3_.holders)
         {
            if(_loc4_.name_7 == param1)
            {
               _loc4_.var_126 = param2;
            }
         }
         _loc3_.favorites.length = 0;
         for each(_loc4_ in _loc3_.holders)
         {
            if(_loc4_.var_126)
            {
               _loc3_.favorites.push(_loc4_);
            }
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public final function method_2231(param1:int) : Boolean
      {
         var _loc4_:class_1170 = null;
         var _loc2_:DataVo_2478 = method_38() as DataVo_2478;
         var _loc3_:Vector.<class_1170> = !!_loc2_?_loc2_.holders:null;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name_7 == param1)
            {
               return _loc4_.var_126;
            }
         }
         return false;
      }
   }
}

import com.bigpoint.seafight.model.vo.class_1170;

class DataVo_2478
{
    
   
   public var holders:Vector.<class_1170>;
   
   public var favorites:Vector.<class_1170>;
   
   function DataVo_2478()
   {
      this.holders = new Vector.<class_1170>();
      this.favorites = new Vector.<class_1170>();
      super();
   }
}
