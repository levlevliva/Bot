package package_3
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.class_1307;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildPendingMemberListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1308;
   import net.bigpoint.seafight.com.module.ship.class_371;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_17.class_326;
   import package_170.class_979;
   import package_171.class_1325;
   import package_175.class_1548;
   import package_2.class_9;
   import package_202.class_1238;
   import package_22.class_655;
   import package_30.class_1013;
   import package_30.class_62;
   import package_36.class_100;
   import package_39.class_973;
   import package_41.class_84;
   import package_47.class_930;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_69.class_1614;
   import package_69.class_978;
   import package_72.class_203;
   import package_92.class_1278;
   import package_92.class_336;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_384 implements class_9
   {
      
      public static const const_3:ILogger = Log.getLogger("CmdEvent");
      
      public static const const_1576:int = 100;
      
      public static const const_1708:int = 101;
      
      public static const const_1594:int = 102;
      
      public static const const_1649:int = 105;
      
      public static const const_1812:int = 106;
       
      
      public function class_384()
      {
         super();
      }
      
      protected static function method_1349(param1:String) : class_1307
      {
         var _loc2_:class_1307 = new class_1307();
         _loc2_.method_1604(param1);
         return _loc2_;
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_371 = null;
         var _loc5_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         _loc2_ = param1 as class_371;
         var _loc3_:class_84 = _loc2_.name_4;
         var _loc4_:int = _loc2_.name_5;
         _loc5_ = _loc2_.var_1577;
         var _loc6_:class_100 = class_47.method_29.method_44(_loc3_);
         switch(_loc4_)
         {
            case class_1308.const_182:
               _loc7_ = parseInt(_loc5_);
               if(class_177.method_52(_loc3_,class_51.var_21))
               {
                  (class_47.method_29.method_75.method_33 as class_174).var_297 = _loc7_;
               }
               if(class_326.method_557)
               {
                  this.method_235(class_123.const_182,class_123.method_27(class_123.const_182),class_22.const_176,_loc6_,"levelUpMsg",[_loc7_]);
                  break;
               }
               break;
            case class_1308.const_924:
               if(class_326.method_674)
               {
                  this.method_235(class_123.const_266,class_123.method_27(class_123.const_266),class_22.const_165,_loc6_,"questCompleteMsg");
                  break;
               }
               break;
            case class_1308.const_1760:
               this.method_235(class_123.const_290,class_123.method_27(class_123.const_290),class_22.const_165,_loc6_);
               break;
            case class_1308.const_73:
               break;
            case class_1308.const_1359:
               if(class_326.method_577 == false)
               {
                  return;
               }
               _loc9_ = method_1349(_loc5_).method_2110("tp");
               switch(_loc9_)
               {
                  case const_1812:
                     _loc8_ = class_123.const_378;
                     break;
                  case const_1576:
                     _loc8_ = class_123.const_346;
                     break;
                  case const_1708:
                     _loc8_ = class_123.const_405;
                     break;
                  case const_1594:
                     _loc8_ = class_123.const_362;
                     break;
                  case const_1649:
                     _loc8_ = class_123.const_348;
                     break;
                  default:
                     _loc8_ = class_123.const_251;
               }
               this.method_235(_loc8_,class_123.method_27(_loc8_),class_22.const_176,_loc6_,"bmCompleteMsg");
               break;
            case class_1308.const_1767:
            case class_1308.const_1657:
               this.method_235(class_123.const_329,class_123.method_27(class_123.const_329),class_22.const_176,_loc6_);
               break;
            case class_1308.const_1815:
               this.method_235(class_123.const_327,class_123.method_27(class_123.const_327),class_22.const_176,_loc6_);
               break;
            case class_1308.const_169:
               this.method_235(class_123.const_169,class_123.method_27(class_123.const_169),class_22.const_46,_loc6_);
               break;
            case class_1308.const_701:
               this.method_850(_loc2_.name_4,parseInt(_loc5_),SoundEffectType.ASKLEPIOS_TALENT);
               break;
            case class_1308.const_1302:
               this.method_850(_loc2_.name_4,parseInt(_loc5_),SoundEffectType.HEAL_IMPACT);
               break;
            case class_1308.const_1547:
               if(!getSWFFinisher(class_123.const_118,this.method_248,param1))
               {
                  return;
               }
               this.method_235(class_123.const_268,class_123.method_27(class_123.const_268),class_22.const_165,_loc6_);
               class_203.name_21(SoundEffectType.HEAL_IMPACT);
               _loc10_ = parseInt(_loc5_);
               class_1238.method_150(_loc6_,0,_loc10_,0,true);
               if(_loc3_ == class_51.var_21)
               {
                  class_47.method_72.method_412();
                  break;
               }
               _loc6_.method_331(_loc6_.method_33.var_190 + _loc10_);
               break;
            case class_1308.const_1850:
               this.method_235(class_123.const_293,class_123.method_27(class_123.const_293),class_22.const_46,_loc6_);
               break;
            default:
               const_3.warn("Unhandled animation type: " + _loc4_);
         }
      }
      
      private final function method_850(param1:class_84, param2:int, param3:int) : void
      {
         if(!getSWFFinisher(class_123.const_118,this.method_850,param1,param2,param3))
         {
            return;
         }
         var _loc4_:class_100 = class_47.method_29.method_44(param1);
         this.method_235(class_123.const_118,class_123.method_27(class_123.const_118),class_22.const_165,_loc4_);
         class_203.name_21(param3);
         class_1238.method_150(_loc4_,param2,0,0,true);
         if(class_177.method_52(param1,class_51.var_21))
         {
            class_47.method_72.method_377();
         }
         else
         {
            _loc4_.method_89(_loc4_.method_33.var_101 + param2);
         }
      }
      
      protected final function method_235(param1:int, param2:String, param3:int, param4:class_100, param5:String = null, param6:Array = null) : void
      {
         var _loc10_:String = null;
         var _loc11_:TextField = null;
         if(class_326.method_696 == false)
         {
            return;
         }
         var _loc7_:SWFFinisher = getSWFFinisher(param1,this.method_235,param1,param2,param3,param4,param5,param6);
         if(_loc7_ == null)
         {
            return;
         }
         var _loc8_:MovieClip = _loc7_.getEmbeddedMovieClip(param2);
         if(param5 != null)
         {
            _loc10_ = class_13.method_78(param5,param6);
            _loc11_ = _loc8_["textHolder"]["textField"] as TextField;
            _loc11_.wordWrap = false;
            _loc11_.autoSize = TextFieldAutoSize.CENTER;
            _loc11_.htmlText = _loc10_;
         }
         var _loc9_:class_336 = new class_336(_loc8_,_loc8_.name);
         _loc9_.fps = param3;
         _loc9_.removeAfterPlay = true;
         param4.method_134().addChild(_loc9_);
         _loc9_.play();
      }
   }
}
