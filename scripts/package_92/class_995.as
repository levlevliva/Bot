package package_92
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.ShipEquipmentWindow;
   import com.bigpoint.seafight.view.mainmenu.MainMenuDropdownButton;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildRankIcon;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.ShipEquipmentPopupNaviController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipEquipmentNaviPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentNaviPopupVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_149;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_710;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_511;
   import package_104.class_448;
   import package_104.class_989;
   import package_125.class_497;
   import package_130.class_663;
   import package_14.class_1126;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_143.class_887;
   import package_16.class_28;
   import package_17.class_54;
   import package_17.class_990;
   import package_170.class_979;
   import package_185.class_1136;
   import package_20.class_33;
   import package_23.class_42;
   import package_26.class_52;
   import package_29.class_166;
   import package_3.class_26;
   import package_34.class_107;
   import package_34.class_1272;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1493;
   import package_49.class_880;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_974;
   import package_53.class_1100;
   import package_54.class_319;
   import package_58.class_175;
   import package_6.class_14;
   import package_7.class_1039;
   import package_72.class_203;
   import package_9.class_120;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_995 extends Sprite
   {
      
      public static const const_3:ILogger = Log.getLogger("LiveItemsRenderer");
      
      public static const const_208:Number = 2.5;
      
      public static var var_1175:Array = [];
       
      
      protected var var_284:Sprite;
      
      protected var var_1015:Array;
      
      protected var var_1587:int;
      
      protected var var_633:Number;
      
      public function class_995()
      {
         super();
         this.var_1587 = class_944.const_935;
         this.var_1015 = [];
         this.var_633 = 1;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1587)
         {
            var_1175.push(_loc1_);
            this.var_1015[_loc1_] = 0;
            _loc1_++;
         }
         super.addChild(this.var_284 = new Sprite());
         super.mouseEnabled = false;
         super.mouseChildren = true;
         this.var_284.addEventListener(Event.ADDED,this.method_1339);
         this.var_284.addEventListener(Event.REMOVED,this.method_1339);
         this.var_284.cacheAsBitmap = false;
      }
      
      protected final function method_1339(param1:Event) : void
      {
         var _loc5_:class_943 = null;
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         var _loc3_:* = param1.type == Event.ADDED;
         var _loc4_:int = !!_loc3_?1:-1;
         if(_loc2_.parent == this.var_284)
         {
            this.method_1897((_loc2_ as class_335).name_5,_loc4_);
            if(_loc3_)
            {
               _loc5_ = new class_943(class_943.const_645);
               _loc5_.method_117 = this.var_633;
               CentralEventUnit.dispatchEvent(_loc5_);
            }
         }
      }
      
      public final function method_34(param1:int, param2:int) : void
      {
         this.var_284.x = param1;
         this.var_284.y = param2;
      }
      
      public final function method_323(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            param1.alpha = 0;
            TweenLite.to(param1,const_208,{"alpha":1});
         }
         this.var_284.addChildAt(param1,this.method_2294((param1 as class_335).name_5));
      }
      
      public final function method_1603(param1:DisplayObject, param2:Boolean = true) : void
      {
         var clip:DisplayObject = param1;
         var fadeOut:Boolean = param2;
         if(fadeOut)
         {
            if(!clip)
            {
               return;
            }
            TweenLite.to(clip,const_208,{
               "alpha":0,
               "onComplete":function():void
               {
                  if(clip.parent)
                  {
                     clip.parent.removeChild(clip);
                  }
               }
            });
         }
         else
         {
            this.var_284.removeChild(clip);
         }
      }
      
      public final function method_270() : int
      {
         return this.var_284.mouseX;
      }
      
      public final function method_260() : int
      {
         return this.var_284.mouseY;
      }
      
      public final function method_2108() : int
      {
         return this.var_284.x;
      }
      
      public final function method_2429() : int
      {
         return this.var_284.y;
      }
      
      protected final function method_2294(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc4_ < this.var_1587)
         {
            _loc3_ = var_1175[_loc4_];
            if(param1 != _loc3_)
            {
               _loc2_ = _loc2_ + this.var_1015[_loc3_];
               _loc4_++;
               continue;
            }
            break;
         }
         return _loc2_;
      }
      
      protected final function method_1897(param1:int, param2:int = 0) : void
      {
         this.var_1015[param1] = this.var_1015[param1] + param2;
      }
      
      public final function method_2880(param1:Bitmap) : void
      {
         var _loc2_:BitmapData = param1.bitmapData;
         _loc2_.lock();
         _loc2_.fillRect(param1.bitmapData.rect,0);
         _loc2_.draw(this,null,null,null,new Rectangle(0,0,param1.width,param1.height));
         _loc2_.unlock();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         if(!(param1 is class_335))
         {
            throw new Error("DEPRECATED!");
         }
         return this.method_323(param1,false) as DisplayObject;
      }
      
      public final function method_1544(param1:int = -1) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         if(param1 < 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.var_1587)
            {
               _loc2_ = _loc2_ + this.var_1015[var_1175[_loc3_]];
               _loc3_++;
            }
         }
         else
         {
            _loc2_ = this.var_1015[var_1175[param1]];
         }
         return _loc2_;
      }
      
      public function set method_117(param1:Number) : void
      {
         this.var_633 = param1;
         this.var_284.scaleX = this.var_633;
         this.var_284.scaleY = this.var_633;
      }
      
      public final function method_1641() : Point
      {
         return new Point(-this.var_284.x,-this.var_284.y);
      }
   }
}
