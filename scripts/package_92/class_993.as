package package_92
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPiecesGroup;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.FleetContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.QuestContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.TradingContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBoxButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxButtonSkin;
   import com.bit101.components.Style;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_641;
   import package_111.class_696;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_49;
   import package_205.class_1353;
   import package_216.class_1575;
   import package_27.class_53;
   import package_29.class_565;
   import package_29.class_57;
   import package_32.class_64;
   import package_34.class_107;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_1355;
   import package_59.class_180;
   import package_65.class_1046;
   import package_7.class_915;
   import package_72.class_203;
   import package_88.class_290;
   import package_89.class_299;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_993 extends Sprite
   {
       
      
      protected var var_284:Sprite;
      
      protected var var_1011:int;
      
      protected var var_530:int;
      
      protected var var_674:int;
      
      protected var var_652:int;
      
      protected var var_1759:BitmapData;
      
      protected var var_1828:Sprite;
      
      protected var var_1829:Bitmap;
      
      protected var var_1765:Bitmap;
      
      protected var var_2073:Bitmap;
      
      protected var var_1941:Bitmap;
      
      protected var var_1760:Number = 0.4;
      
      protected var var_1408:int = 16777215;
      
      public function class_993(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.var_1011 = param1;
         this.var_530 = param2;
         this.var_674 = param3;
         this.var_652 = param4;
         this.var_1759 = new BitmapData(5,5,false,this.var_1408);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.addChild(this.var_284 = new Sprite());
      }
      
      public static function method_2868(param1:Boolean) : void
      {
      }
      
      public final function method_400(param1:Boolean = false) : void
      {
         this.var_1828 = this.method_2399(this.var_1828);
         this.var_2073 = this.method_681(this.var_2073,0,-this.var_530,this.var_674,this.var_530,param1);
         this.var_1941 = this.method_681(this.var_1941,0,this.var_652,this.var_674,this.var_530,param1);
         this.var_1829 = this.method_681(this.var_1829,-this.var_1011,-this.var_530,this.var_1011,this.var_530 * 2 + this.var_652,param1);
         this.var_1765 = this.method_681(this.var_1765,this.var_674,-this.var_530,this.var_1011,this.var_530 * 2 + this.var_652,param1);
      }
      
      public final function method_34(param1:int = 0, param2:int = 0) : void
      {
         param1 = param1 - this.var_674 * 0.5;
         param2 = param2 - this.var_652 * 0.5;
         if(param1 > this.var_1011 || param1 < -this.var_674)
         {
            param1 = this.var_1011;
         }
         if(param2 > this.var_530 || param2 < -this.var_652)
         {
            param2 = this.var_530;
         }
         this.var_284.x = param1;
         this.var_284.y = param2;
      }
      
      protected final function method_2399(param1:Sprite) : Sprite
      {
         var _loc2_:Sprite = param1 || new Sprite();
         var _loc3_:Graphics = _loc2_.graphics;
         var _loc4_:Matrix = new Matrix();
         var _loc5_:int = this.var_674;
         var _loc6_:int = this.var_652;
         _loc4_.createGradientBox(_loc5_,_loc6_,0,0,0);
         _loc3_.clear();
         _loc3_.beginGradientFill(GradientType.RADIAL,[this.var_1408,this.var_1408],[0,this.var_1760],[150,255],_loc4_);
         _loc3_.moveTo(0,0);
         _loc3_.lineTo(_loc5_,0);
         _loc3_.lineTo(_loc5_,_loc6_);
         _loc3_.lineTo(0,_loc6_);
         _loc3_.lineTo(0,0);
         _loc3_.endFill();
         _loc2_.cacheAsBitmap = true;
         if(param1 == null)
         {
            this.var_284.addChild(_loc2_);
         }
         return _loc2_;
      }
      
      protected final function method_681(param1:Bitmap, param2:int, param3:int, param4:int, param5:int, param6:Boolean) : Bitmap
      {
         var _loc7_:Bitmap = null;
         if(!param1 || param6)
         {
            _loc7_ = new Bitmap(this.var_1759);
         }
         else
         {
            _loc7_ = param1;
         }
         _loc7_.width = param4;
         _loc7_.height = param5;
         _loc7_.x = param2;
         _loc7_.y = param3;
         _loc7_.alpha = this.var_1760;
         if(param1 == null)
         {
            this.var_284.addChild(_loc7_);
         }
         return _loc7_;
      }
      
      public final function method_54() : void
      {
         if(this.var_284)
         {
            while(this.var_284.numChildren > 0)
            {
               this.var_284.removeChildAt(0);
            }
            this.var_1828 = null;
            this.var_2073 = null;
            this.var_1941 = null;
            this.var_1829 = null;
            this.var_1765 = null;
         }
      }
      
      public final function method_2283(param1:int = 2, param2:int = 16777215, param3:Number = 0.4) : void
      {
         this.var_1760 = param3;
         this.var_1408 = param2;
         this.var_1759 = new BitmapData(5,5,false,this.var_1408);
         this.method_54();
         this.method_400(true);
      }
      
      public function set method_2367(param1:int) : void
      {
         this.var_1011 = param1;
      }
      
      public function set method_2680(param1:int) : void
      {
         this.var_530 = param1;
      }
      
      public function set method_786(param1:int) : void
      {
         this.var_674 = param1;
      }
      
      public function set method_1163(param1:int) : void
      {
         this.var_652 = param1;
      }
      
      public function get method_786() : int
      {
         return this.var_674;
      }
      
      public function get method_1163() : int
      {
         return this.var_652;
      }
   }
}
