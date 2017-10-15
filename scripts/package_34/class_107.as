package package_34
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.submenus.charactermenu.DesignBonusPopUp;
   import com.greensock.core.PropTween;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundTransform;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_47;
   import package_14.class_49;
   import package_15.class_273;
   import package_17.class_54;
   import package_214.class_1559;
   import package_26.class_1102;
   import package_41.class_84;
   import package_42.class_1034;
   import package_5.class_123;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   import package_61.class_721;
   import package_61.class_724;
   import package_61.class_787;
   import package_9.class_91;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_107 extends class_69
   {
      
      private static var name_55:class_107;
       
      
      private var var_972:Dictionary;
      
      private var var_1841:Boolean = false;
      
      private var var_1616:class_49;
      
      private var var_1956:Boolean = false;
      
      public function class_107()
      {
         this.var_972 = new Dictionary();
         super();
      }
      
      public static function get name_3() : class_107
      {
         if(!name_55)
         {
            name_55 = new class_107();
            name_55.var_1616 = class_49.name_3;
         }
         return name_55;
      }
      
      public final function method_95(... rest) : void
      {
         this.method_569(Vector.<int>(rest));
      }
      
      public final function method_569(param1:Vector.<int>) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:class_787 = null;
         var _loc2_:int = param1.length;
         if(_loc2_ < 2 || _loc2_ % 2 != 0)
         {
            return;
         }
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = param1[++_loc4_];
            _loc7_ = this.var_1616.method_46(_loc5_);
            if(_loc7_ != _loc6_)
            {
               this.var_1616.method_95(_loc5_,_loc6_);
               _loc8_ = new class_787();
               _loc8_.var_369 = _loc5_;
               _loc8_.var_601 = _loc6_;
               this.var_972[_loc5_] = _loc6_;
               _loc3_ = true;
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            this.method_932();
         }
      }
      
      public final function method_932(param1:Dictionary = null) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:class_787 = null;
         var _loc2_:int = class_181.method_2052(param1);
         if(_loc2_ != 0)
         {
            this.var_972 = param1;
         }
         this.var_1956 = true;
         if(this.var_1841)
         {
            return;
         }
         this.var_1956 = false;
         this.var_1841 = true;
         var _loc3_:Vector.<class_787> = new Vector.<class_787>();
         for(_loc4_ in this.var_972)
         {
            _loc6_ = int(_loc4_);
            _loc7_ = int(this.var_972[_loc4_]);
            _loc8_ = new class_787();
            _loc8_.var_369 = _loc6_;
            _loc8_.var_601 = _loc7_;
            _loc3_.push(_loc8_);
         }
         for(_loc5_ in this.var_972)
         {
            delete this.var_972[_loc5_];
         }
         delay(1000,this.flushSettingstoServer,_loc3_);
      }
      
      private final function flushSettingstoServer(param1:Vector.<class_787>) : void
      {
         var _loc2_:class_721 = new class_721();
         _loc2_.var_283 = param1;
         var_125.method_31(_loc2_);
         this.var_1841 = false;
         if(this.var_1956)
         {
            delay(200,this.method_932);
         }
      }
      
      public final function method_102(... rest) : void
      {
         this.method_469(Vector.<int>(rest));
      }
      
      public final function method_469(param1:Vector.<int>) : void
      {
         var _loc5_:int = 0;
         var _loc2_:int = param1.length;
         if(_loc2_ < 1)
         {
            return;
         }
         var _loc3_:class_724 = class_724.name_3;
         _loc3_.var_890 = param1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = param1[_loc4_];
            if(_loc5_ != 0)
            {
               this.var_1616.method_102(_loc5_);
            }
            _loc4_++;
         }
         var_125.method_31(_loc3_);
      }
   }
}
