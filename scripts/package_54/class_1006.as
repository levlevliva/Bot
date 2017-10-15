package package_54
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuCrewTabVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.CollectionEventKind;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.ship.class_431;
   import package_107.class_1467;
   import package_108.class_596;
   import package_121.class_841;
   import package_136.class_926;
   import package_14.class_47;
   import package_14.class_87;
   import package_15.class_273;
   import package_154.class_632;
   import package_171.class_1059;
   import package_184.class_1135;
   import package_184.class_1583;
   import package_185.class_1136;
   import package_201.thiz;
   import package_41.class_89;
   import package_41.class_93;
   import package_45.class_110;
   import package_5.class_139;
   import package_56.class_170;
   import package_6.class_14;
   import package_88.class_290;
   import package_92.class_962;
   import package_95.class_341;
   import package_98.class_346;
   import package_98.class_777;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_1006 extends class_161
   {
      
      protected static const const_1809:String = ".labeledBtn";
      
      protected static const const_2313:String = ".defaultGoldText";
      
      protected static const const_2071:String = ".defaultBlueText";
       
      
      protected var var_85:StyleSheet;
      
      protected var var_203:TextField;
      
      public function class_1006(param1:MovieClip, param2:Rectangle = null, param3:int = 0, param4:int = 0)
      {
         var _loc5_:BitmapData = null;
         var _loc6_:ScaleBitmap = null;
         if(param2)
         {
            _loc5_ = new BitmapData(param1.width,param1.height,true,0);
            _loc5_.draw(param1);
            _loc6_ = new ScaleBitmap(_loc5_);
            _loc6_.scale9Grid = param2;
            _loc6_.width = param3;
            _loc6_.height = param4;
            param1 = new MovieClip();
            param1.addChild(_loc6_);
         }
         super(param1);
      }
      
      public final function method_106(param1:String, param2:String = null) : void
      {
         if(!this.var_203)
         {
            this.method_2601(param2);
         }
         this.var_203.htmlText = param1;
         this.var_203.x = Math.round(var_130.width / 2 - this.var_203.width / 2);
         this.var_203.y = Math.round(var_130.height / 2 - this.var_203.height / 2);
         var_130.addChild(this.var_203);
      }
      
      public final function method_3016(param1:int, param2:int) : void
      {
         this.var_203.x = param1;
         this.var_203.y = param2;
      }
      
      private final function method_2601(param1:String) : void
      {
         this.var_85 = class_47.method_24.method_289();
         var _loc2_:Object = this.var_85.getStyle(!!param1?param1:const_1809);
         this.var_203 = new TextField();
         this.var_203.multiline = _loc2_["multiline"] == "true";
         this.var_203.selectable = _loc2_["selectable"] == "true";
         this.var_203.mouseEnabled = _loc2_["mouseEnabled"] == "true";
         this.var_203.autoSize = _loc2_["autoSize"];
         this.var_203.visible = _loc2_["visible"] == "true";
         this.var_203.scaleX = _loc2_["scale"];
         this.var_203.scaleY = _loc2_["scale"];
         this.var_203.alpha = _loc2_["alpha"];
         this.var_203.defaultTextFormat = this.var_85.transform(_loc2_);
      }
      
      public final function method_618(param1:String) : void
      {
         this.var_203.setTextFormat(this.var_85.transform(this.var_85.getStyle(param1)));
      }
      
      public function get name_66() : TextField
      {
         return this.var_203;
      }
   }
}
