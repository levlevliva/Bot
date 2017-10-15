package package_14
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.GemHolderSelectionVList;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_566;
   import package_107.class_693;
   import package_118.class_1445;
   import package_118.class_539;
   import package_15.class_48;
   import package_16.class_193;
   import package_166.class_1345;
   import package_17.class_151;
   import package_17.class_54;
   import package_170.class_979;
   import package_171.class_1325;
   import package_190.class_1168;
   import package_20.class_33;
   import package_20.class_982;
   import package_205.class_1353;
   import package_208.class_1585;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_23.class_42;
   import package_26.class_218;
   import package_28.class_56;
   import package_34.class_107;
   import package_34.class_115;
   import package_34.class_1499;
   import package_45.class_110;
   import package_48.class_132;
   import package_48.class_1534;
   import package_49.class_140;
   import package_5.class_1012;
   import package_5.class_123;
   import package_5.class_176;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_52.class_1083;
   import package_52.class_1085;
   import package_52.class_1087;
   import package_52.class_167;
   import package_52.class_306;
   import package_52.class_313;
   import package_54.class_160;
   import package_54.class_162;
   import package_54.class_163;
   import package_54.class_319;
   import package_56.class_368;
   import package_69.class_1104;
   import package_69.class_1105;
   import package_69.class_978;
   import package_72.class_203;
   import package_86.class_278;
   import package_88.class_290;
   import package_89.class_1011;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_9.class_76;
   import package_90.class_316;
   import package_92.class_336;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_226 extends EventDispatcher
   {
      
      private static const const_80:ILogger = Log.getLogger("PlayerManager");
      
      private static const const_1412:int = 120;
      
      private static const const_1759:int = 121;
       
      
      private var var_112:class_87;
      
      private var var_371:Object;
      
      private var var_312:Object;
      
      private var var_531:int = -1;
      
      private var var_690:int = -1;
      
      private var var_1643:Boolean = false;
      
      private var var_1532:Boolean = false;
      
      private var var_1257:int = -1;
      
      private var var_1435:class_1104;
      
      private var var_1708:class_1105;
      
      private var var_1037:class_278;
      
      public var var_1974:int;
      
      public var var_1034:Boolean = true;
      
      public var var_2181:Boolean = false;
      
      public var var_2353:Boolean = false;
      
      private var var_1246:class_193;
      
      public function class_226()
      {
         this.var_112 = class_47.method_22;
         super();
         const_80.info("CONSTRUCTING");
         this.var_371 = new Object();
         this.var_312 = new Object();
         this.var_1037 = class_48.name_3.var_2027;
         this.var_1037.addEventListener(Event.CHANGE,this.method_2583);
         class_58.method_21().method_82("init player manager");
         CentralEventUnit.addEventListener(class_56.const_51,this.method_1311);
         this.var_1246 = class_33.name_12.method_441;
      }
      
      public final function name_16() : void
      {
         this.var_1435 = new class_1104();
         this.var_1708 = new class_1105();
         this.var_1435.addEventListener(class_978.const_4,this.method_2762);
         this.var_1708.addEventListener(class_978.const_4,this.method_2631);
      }
      
      private final function method_1311(param1:class_56) : void
      {
         this.var_1034 = true;
      }
      
      private final function method_2762(param1:Event) : void
      {
         this.method_917();
         this.method_2306();
         this.method_2594(this.var_1034);
      }
      
      private final function method_2631(param1:Event) : void
      {
         this.method_917();
         this.method_2288();
         this.method_2449(this.var_1034);
      }
      
      private final function method_2583(param1:Event = null) : void
      {
         var _loc2_:Dictionary = this.var_1037.method_898();
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:class_1083 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_38) as class_1083;
         _loc3_.method_2099 = this.var_1037;
         _loc3_.method_55();
         this.method_614();
         class_47.method_24.var_12.removeEmptyQuickButtons();
         class_220.method_479(class_220.const_1137);
      }
      
      private final function method_917() : void
      {
         if(!this.var_1435.method_784 || !this.var_1708.method_784)
         {
            return;
         }
         this.var_1034 = false;
      }
      
      private final function method_2594(param1:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = this.var_531;
         if(this.var_371[_loc2_] > 0)
         {
            if(!param1)
            {
               this.method_689(_loc2_);
               return;
            }
         }
         else if(class_47.method_29.method_75)
         {
            class_47.method_29.method_75.method_1117();
         }
         _loc2_ = class_49.method_46(class_43.const_742);
         if(this.var_371[_loc2_] > 0)
         {
            this.method_689(_loc2_);
            return;
         }
         for(_loc3_ in this.var_371)
         {
            if(this.var_371[_loc3_] != undefined && this.var_371[_loc3_] > 0)
            {
               if(int(_loc3_) != 120)
               {
                  if(int(_loc3_) != 0)
                  {
                     _loc2_ = int(_loc3_);
                  }
               }
            }
         }
         if(this.var_371[_loc2_] == undefined || this.var_371[_loc2_] < 1)
         {
            if(this.var_1643 || !this.var_2181)
            {
               return;
            }
            this.var_1643 = true;
            return;
         }
         this.method_689(_loc2_);
      }
      
      private final function method_2449(param1:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = this.var_690;
         if(this.var_312[_loc2_] > 0)
         {
            if(!param1)
            {
               this.method_682(_loc2_);
               return;
            }
         }
         else if(class_47.method_29.method_75)
         {
            class_47.method_29.method_75.method_1150();
         }
         _loc2_ = class_49.method_46(class_43.const_847);
         if(this.var_312[_loc2_] > 0)
         {
            this.method_682(_loc2_);
            return;
         }
         for(_loc3_ in this.var_312)
         {
            if(this.var_312[_loc3_] != undefined && this.var_312[_loc3_] > 0)
            {
               _loc2_ = int(_loc3_);
            }
         }
         if(this.var_312[_loc2_] == undefined || this.var_312[_loc2_] < 1)
         {
            if(this.var_1532 || !this.var_2353)
            {
               return;
            }
            this.var_1532 = true;
            return;
         }
         this.method_682(_loc2_);
      }
      
      public final function method_2282(param1:int) : int
      {
         return this.var_371[param1];
      }
      
      public final function method_982() : int
      {
         return this.var_371[this.var_531];
      }
      
      public final function method_689(param1:int) : void
      {
         var swfFin:SWFFinisher = null;
         var mc:MovieClip = null;
         var ballID:int = param1;
         if(!this.var_1034 && ballID == this.var_531)
         {
            if(!this.var_1643)
            {
               return;
            }
         }
         this.var_531 = ballID;
         swfFin = getSWFFinisher(class_123.const_21);
         mc = new MovieClip();
         try
         {
            mc.addChild(swfFin.getEmbeddedBitmap("ballBtn_" + this.var_531));
         }
         catch(e:Error)
         {
            mc.addChild(swfFin.getEmbeddedBitmap(class_167.const_220));
         }
         var bmData:BitmapData = new BitmapData(mc.width,mc.height);
         bmData.draw(mc);
         var actionBtn:class_162 = class_47.method_24.var_12.actionsBar.method_69(class_150.const_109);
         actionBtn.method_1537(bmData);
         actionBtn.method_162(class_150.const_109,this.var_531);
         actionBtn.method_209(this.var_371[this.var_531],false,class_47.method_29.method_56.var_297 > 1);
         this.var_1246.method_1328(this.var_531);
         this.var_1643 = false;
      }
      
      public final function method_2229() : int
      {
         return this.var_531;
      }
      
      public final function method_1264() : Boolean
      {
         return this.var_531 == const_1412 || this.var_531 == const_1759;
      }
      
      public final function method_2837(param1:int) : int
      {
         return this.var_312[param1];
      }
      
      public final function method_1549() : int
      {
         return this.var_312[this.var_690];
      }
      
      public final function method_682(param1:int) : void
      {
         var swfFin:SWFFinisher = null;
         var name:String = null;
         var mc:MovieClip = null;
         var harpoonID:int = param1;
         if(!this.var_1034 && this.var_690 == harpoonID)
         {
            if(!this.var_1532)
            {
               return;
            }
         }
         this.var_690 = harpoonID;
         swfFin = getSWFFinisher(class_123.const_21);
         name = "harpBtn_";
         mc = new MovieClip();
         try
         {
            mc.addChild(swfFin.getEmbeddedBitmap(name + this.var_690));
         }
         catch(e:Error)
         {
            mc.addChild(swfFin.getEmbeddedBitmap(name + 75));
         }
         var bmData:BitmapData = new BitmapData(mc.width,mc.height);
         bmData.draw(mc);
         var actionBtn:class_162 = class_47.method_24.var_12.actionsBar.method_69(class_150.const_113);
         actionBtn.method_1537(bmData);
         actionBtn.method_162(class_150.const_113,this.var_690);
         actionBtn.method_209(this.var_312[this.var_690],false,class_47.method_29.method_56.var_297 > 1);
         this.var_1246.method_998(this.var_690);
         this.var_1532 = false;
      }
      
      public final function method_1877() : int
      {
         return this.var_690;
      }
      
      public final function method_1420() : void
      {
         if(class_47.method_29.method_56 == null)
         {
            return;
         }
         this.method_1088();
         class_151.method_21().method_481();
         this.method_807();
         this.method_870();
         this.method_377();
         this.method_379();
         this.method_917();
         class_47.method_48.method_213();
         class_47.method_24.var_12.subMenuContainer.placeSubMenBtn();
      }
      
      public final function method_1088() : void
      {
         this.method_1382();
         this.method_600();
         this.method_614();
      }
      
      private final function method_2306() : void
      {
         var _loc8_:Ammo_VO = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc1_:class_174 = class_47.method_29.method_56;
         var _loc2_:* = _loc1_.var_297 > 1;
         var _loc3_:UserInterface = class_47.method_24.var_12;
         var _loc4_:class_1087 = _loc3_.subMenuContainer.getMenu(class_214.const_69) as class_1087;
         var _loc5_:class_162 = _loc3_.actionsBar.method_69(class_150.const_109);
         var _loc6_:Array = [];
         var _loc7_:Vector.<Ammo_VO> = this.var_1435.method_1798();
         for each(_loc8_ in _loc7_)
         {
            _loc9_ = _loc8_.itemID;
            _loc10_ = _loc8_.amount;
            _loc6_.push(_loc9_);
            if(this.var_371[_loc9_] != _loc10_)
            {
               this.var_371[_loc9_] = _loc10_;
               if(_loc5_.method_58().name_7 == _loc9_)
               {
                  _loc5_.method_209(_loc10_,false,_loc2_);
               }
            }
         }
         if(_loc4_)
         {
            _loc4_.method_2155(_loc6_);
         }
         _loc4_.method_34(_loc7_);
         this.method_366();
      }
      
      private final function method_2288() : void
      {
         var _loc6_:* = null;
         var _loc7_:Vector.<Harpoon_VO> = null;
         var _loc8_:Harpoon_VO = null;
         var _loc9_:int = 0;
         var _loc1_:class_174 = class_47.method_29.method_56;
         var _loc2_:* = _loc1_.var_297 > 1;
         var _loc3_:UserInterface = class_47.method_24.var_12;
         var _loc4_:class_162 = _loc3_.actionsBar.method_69(class_150.const_113);
         var _loc5_:class_1085 = _loc3_.subMenuContainer.getMenu(class_214.const_17) as class_1085;
         for(_loc6_ in this.var_312)
         {
            this.var_312[_loc6_] = 0;
         }
         _loc7_ = this.var_1708.method_1704();
         for each(_loc8_ in _loc7_)
         {
            this.var_312[_loc8_.itemID] = _loc8_.amount;
         }
         _loc9_ = _loc4_.method_58().name_7;
         _loc4_.method_209(this.var_312[_loc9_],false,_loc2_);
         _loc5_.method_34(_loc7_);
         this.method_366();
      }
      
      public final function method_1382() : void
      {
         var _loc3_:class_163 = null;
         var _loc1_:UserInterface = class_47.method_24.var_12;
         var _loc2_:class_313 = _loc1_.subMenuContainer.getMenu(class_214.const_26) as class_313;
         for each(_loc3_ in _loc2_.method_502)
         {
            this.method_631(_loc3_);
         }
         this.method_366();
      }
      
      public final function method_600() : void
      {
         var _loc3_:Vector.<class_319> = null;
         var _loc4_:class_319 = null;
         var _loc1_:UserInterface = class_47.method_24.var_12;
         var _loc2_:class_306 = _loc1_.subMenuContainer.getMenu(class_214.const_23) as class_306;
         _loc2_.method_34();
         if(_loc2_)
         {
            _loc3_ = _loc2_.method_502;
            for each(_loc4_ in _loc3_)
            {
               this.method_631(_loc4_);
            }
         }
         this.method_366();
      }
      
      public final function method_614() : void
      {
         var _loc2_:class_319 = null;
         this.var_1037.method_898();
         var _loc1_:class_1083 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_38) as class_1083;
         if(_loc1_)
         {
            for each(_loc2_ in _loc1_.method_502)
            {
               this.method_631(_loc2_);
            }
         }
         this.method_366();
      }
      
      public final function method_366() : void
      {
         var _loc2_:class_155 = null;
         var _loc4_:class_163 = null;
         var _loc1_:UserInterface = class_47.method_24.var_12;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.quickBelt.length)
         {
            _loc2_ = _loc1_.quickBelt[_loc3_];
            for each(_loc4_ in _loc2_.method_788)
            {
               this.method_631(_loc4_);
            }
            _loc3_++;
         }
      }
      
      public final function method_1491(param1:Boolean) : void
      {
         var _loc2_:UserInterface = class_47.method_24.var_12;
         var _loc3_:class_306 = _loc2_.subMenuContainer.getMenu(class_214.const_23) as class_306;
         var _loc4_:class_1083 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_38) as class_1083;
         _loc4_.method_2747(param1);
         _loc3_.method_594(class_317.const_690,param1);
         _loc3_.method_594(class_317.const_1099,param1);
         _loc3_.method_594(class_317.const_1661,param1);
         _loc3_.method_594(class_317.const_1515,param1);
         this.method_614();
         this.method_600();
      }
      
      public final function method_377(param1:int = -1) : void
      {
         var _loc2_:class_216 = class_47.method_24.var_12.globalDisplayContainer;
         var _loc3_:class_290 = _loc2_.method_101(class_290.const_134);
         var _loc4_:class_174 = class_47.method_29.method_56;
         this.var_1257 = param1 > -1?int(param1):int(_loc4_.var_101);
         var _loc5_:String = class_22.const_83 + this.var_1257 + class_22.const_202 + _loc4_.var_182;
         _loc3_.method_34(this.var_1257,_loc4_.var_182);
         _loc3_.method_694(this.var_112.method_28("status_hp") + _loc5_);
      }
      
      public final function method_870() : void
      {
         var _loc1_:class_216 = class_47.method_24.var_12.globalDisplayContainer;
         var _loc2_:class_290 = _loc1_.method_101(class_290.const_206);
         var _loc3_:class_174 = class_47.method_29.method_56;
         var _loc4_:String = class_22.const_83 + _loc3_.var_1483 + class_22.const_202 + _loc3_.var_1553;
         _loc2_.method_34(_loc3_.var_1483,_loc3_.var_1553);
         _loc2_.method_694(this.var_112.method_28("status_ep") + _loc4_);
      }
      
      public final function method_412(param1:int = -1) : void
      {
         var _loc2_:class_216 = class_47.method_24.var_12.globalDisplayContainer;
         var _loc3_:class_290 = _loc2_.method_101(class_290.const_174);
         var _loc4_:class_174 = class_47.method_29.method_56;
         var _loc5_:int = param1 > -1?int(param1):int(_loc4_.var_190);
         var _loc6_:String = class_22.const_83 + _loc5_ + class_22.const_202 + _loc4_.var_356;
         _loc3_.method_34(_loc5_,_loc4_.var_356);
         _loc3_.method_694(this.var_112.method_28("status_vsp") + _loc6_);
      }
      
      public final function method_807() : void
      {
         var _loc1_:class_216 = class_47.method_24.var_12.globalDisplayContainer;
         var _loc2_:class_290 = _loc1_.method_101(class_290.const_250);
         var _loc3_:class_174 = class_47.method_29.method_56;
         var _loc4_:String = class_22.const_83 + _loc3_.var_1501 + class_22.const_202 + _loc3_.var_1736;
         _loc2_.method_34(_loc3_.var_1501,_loc3_.var_1736);
         _loc2_.method_694(this.var_112.method_28("status_bp") + _loc4_);
      }
      
      public final function method_379() : void
      {
         var _loc3_:int = 0;
         var _loc1_:class_162 = class_47.method_24.var_12.actionsBar.method_69(class_150.const_264);
         var _loc2_:class_174 = class_47.method_29.method_56;
         if(_loc2_.var_1625 > class_176.const_8)
         {
            if(_loc1_.method_1550)
            {
               _loc1_.method_333(class_47.method_22.method_28("tooltip_actBar_repair",true,false),class_47.method_22.method_28("tooltip_actBar_repair_stop",true,false));
            }
            _loc3_ = this.var_1257 > -1?int(this.var_1257):int(_loc2_.var_101);
            if(_loc3_ >= _loc2_.var_182 || _loc3_ < 1000 && !_loc2_.var_1352)
            {
               _loc1_.method_123(false);
            }
            else if(_loc3_ / _loc2_.var_182 < 0.9 && class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_700))
            {
               if(_loc1_.method_471 == class_160.const_233)
               {
                  return;
               }
               _loc1_.method_123(true);
               _loc1_.method_167(class_160.const_233);
               _loc1_.method_191();
               _loc1_.method_251();
            }
            else
            {
               if(_loc1_.method_471 == class_160.const_146)
               {
                  return;
               }
               _loc1_.method_123(true);
               _loc1_.method_167(class_160.const_146);
            }
         }
         else
         {
            _loc1_.method_123(false);
            _loc1_.method_333(class_47.method_22.method_28("tooltip_actBar_repair_no_maat",true,false),class_47.method_22.method_28("tooltip_actBar_repair_no_maat",true,false));
         }
      }
      
      private final function method_631(param1:class_163) : void
      {
         var _loc2_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:class_317 = null;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:Boolean = false;
         var _loc14_:int = 0;
         var _loc15_:class_316 = null;
         if(param1.method_58() == null)
         {
            return;
         }
         _loc2_ = param1.method_58().name_7;
         var _loc3_:class_232 = class_47.method_51;
         var _loc4_:Boolean = _loc3_.method_141(class_76.const_191);
         var _loc5_:Boolean = _loc3_.method_141(class_76.const_225);
         var _loc6_:Boolean = _loc3_.method_141(class_76.const_733);
         var _loc7_:Boolean = _loc3_.method_489();
         switch(param1.method_58().var_1295)
         {
            case class_206.const_1260:
               param1.method_209(-1,false,false);
               param1.name_26 = true;
               param1.method_123(param1.name_26);
               break;
            case class_206.const_768:
               _loc8_ = this.var_371[_loc2_];
               param1.method_209(_loc8_,false,class_47.method_29.method_56.var_297 > 1);
               param1.name_26 = _loc8_ > 0;
               param1.method_123(param1.name_26);
               break;
            case class_206.const_257:
               _loc9_ = this.var_312[_loc2_];
               param1.method_209(_loc9_,false,class_47.method_29.method_56.var_297 > 1);
               param1.name_26 = _loc9_ > 0;
               param1.method_123(param1.name_26);
               break;
            case class_206.const_218:
               if(param1.method_2642)
               {
                  param1.method_34();
                  break;
               }
               _loc10_ = class_368.name_9[_loc2_] as class_317;
               if(!_loc10_)
               {
                  break;
               }
               _loc11_ = false;
               _loc12_ = _loc10_.var_10;
               _loc13_ = _loc10_.var_10 > 0 || _loc10_.var_353;
               _loc11_ = _loc13_ && param1.method_58().var_895;
               if(_loc4_ && (!param1.method_855(class_1012.const_1055) || param1.method_372) || _loc5_ && !param1.method_855(class_1012.const_225) || _loc6_ && !param1.method_855(class_1012.const_527))
               {
                  _loc11_ = false;
               }
               param1.method_209(!!_loc10_.method_396?-1:int(_loc12_));
               param1.name_26 = _loc11_;
               param1.method_123(_loc11_);
               break;
            case class_206.const_38:
               _loc14_ = this.var_1037.method_2666(_loc2_);
               param1.method_209(_loc14_);
               param1.name_26 = param1.method_58().var_895 && (param1.method_372 && _loc7_?false:_loc14_ > 0);
               param1.method_123(param1.name_26);
               break;
            case class_206.const_26:
               _loc15_ = class_368.name_9[_loc2_] as class_316;
               if(_loc15_ != null)
               {
                  param1.method_209(_loc15_.var_10);
                  if(_loc15_.var_10 > 0)
                  {
                     break;
                  }
                  param1.method_123(false);
                  param1.name_26 = false;
                  break;
               }
               param1.method_123(false);
               param1.name_26 = false;
               break;
         }
      }
   }
}
