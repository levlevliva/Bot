package package_14
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.class_1069;
   import com.bigpoint.seafight.tools.class_1066;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.XMLSocket;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.PropertyChangeEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_10.class_18;
   import package_10.class_38;
   import package_103.class_1029;
   import package_111.class_742;
   import package_121.class_841;
   import package_123.class_837;
   import package_15.class_48;
   import package_17.class_307;
   import package_17.class_37;
   import package_17.class_376;
   import package_17.class_54;
   import package_179.class_1064;
   import package_20.class_33;
   import package_214.class_1559;
   import package_23.class_42;
   import package_26.class_1061;
   import package_26.class_1070;
   import package_34.class_169;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_1065;
   import package_42.class_959;
   import package_42.class_98;
   import package_43.class_106;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_48.class_1534;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_945;
   import package_5.class_984;
   import package_54.class_1006;
   import package_56.class_170;
   import package_57.class_1062;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_15;
   import package_76.class_279;
   import package_8.class_114;
   import package_88.class_290;
   import package_9.class_120;
   import package_9.class_76;
   import package_98.class_777;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   public final class class_200 extends EventDispatcher
   {
      
      private static const const_3:ILogger = Log.getLogger("ShipManager");
      
      private static var var_676:class_174;
       
      
      private var var_2105:class_279;
      
      private var var_333:Object;
      
      private var var_466:Object;
      
      private var var_1249:Timer;
      
      private var var_245:class_100;
      
      private var var_2334:Point;
      
      private var var_2003:Boolean;
      
      public function class_200()
      {
         this.var_333 = new Object();
         this.var_466 = new Object();
         this.var_1249 = new Timer(1000);
         super();
         class_58.method_21().method_82("init ship manager");
         const_3.info("CONSTRUCTING");
         this.init();
         this.var_1249.addEventListener(TimerEvent.TIMER,this.method_2255);
         var_676 = new class_174();
         var_676.name_4 = class_51.var_21;
         var_676.name_14 = class_945.const_325;
         this.createActiveShip(var_676);
      }
      
      public static function method_876() : int
      {
         return class_47.method_29.method_56.var_297;
      }
      
      public static function method_802(param1:class_1023) : class_171
      {
         return class_47.method_29.createActivePet(param1);
      }
      
      public static function method_323(param1:class_173) : class_100
      {
         var _loc2_:class_200 = class_47.method_29;
         param1.var_1190 = _loc2_.method_608(param1.name_20);
         return _loc2_.createActiveShip(param1);
      }
      
      private final function init() : void
      {
         this.var_2105 = class_48.name_3.var_1121;
         this.var_2105.addEventListener(Event.CHANGE,this.method_2273);
      }
      
      public final function method_491(param1:Boolean = false) : void
      {
         var _loc3_:class_100 = null;
         var _loc4_:class_171 = null;
         var _loc2_:* = null;
         for(_loc2_ in this.var_333)
         {
            _loc3_ = this.var_333[_loc2_] as class_100;
            if(param1 || !_loc3_.method_33.method_52(class_51.var_21))
            {
               delete this.var_333[_loc2_];
               _loc3_.suicide(false);
            }
         }
         for(_loc2_ in this.var_466)
         {
            _loc4_ = this.var_466[_loc2_] as class_171;
            if(_loc4_ == null || _loc4_.method_67 == null)
            {
               const_3.error("FIXME: For some unknown reason petVO is sometimes null for Snowman: " + _loc4_);
            }
            else if(param1 || !class_177.method_52(_loc4_.method_67.var_88,class_51.var_21))
            {
               delete this.var_466[_loc2_];
               _loc4_.suicide(false);
            }
         }
      }
      
      public final function method_403(param1:String) : Boolean
      {
         if(!this.var_333[param1])
         {
            return false;
         }
         delete this.var_333[param1];
         return true;
      }
      
      public final function method_602(param1:class_84) : Boolean
      {
         var _loc2_:String = this.method_243(param1);
         var _loc3_:class_100 = this.var_333[_loc2_] as class_100;
         if(null == _loc3_)
         {
            return false;
         }
         delete this.var_333[_loc2_];
         return true;
      }
      
      public final function method_44(param1:class_84) : class_100
      {
         return this.var_333[this.method_243(param1)] as class_100;
      }
      
      public final function method_2147(param1:int) : class_100
      {
         var _loc2_:class_100 = null;
         var _loc3_:class_1067 = null;
         for each(_loc2_ in this.var_333)
         {
            _loc3_ = _loc2_.method_33 as class_1067;
            if(_loc3_ && _loc3_.var_16 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public final function method_282() : Object
      {
         return this.var_333;
      }
      
      public final function method_1724() : Array
      {
         var _loc2_:class_100 = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.var_333)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public final function method_880(param1:Boolean = false) : Array
      {
         var _loc3_:class_100 = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.var_333)
         {
            if(param1)
            {
               if(this.var_245 == _loc3_)
               {
                  continue;
               }
            }
            if(_loc3_.method_1516(_loc3_.method_803(),_loc3_.method_938()))
            {
               if(_loc3_.method_33.name_14 != class_945.const_43)
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get method_56() : class_174
      {
         return var_676;
      }
      
      public final function method_1393() : void
      {
         dispatchEvent(new class_1070());
      }
      
      public function get method_75() : class_100
      {
         if(!this.var_245)
         {
            const_3.fatal("invalid design-id or missing " + class_13.method_668(class_15));
         }
         return this.var_245;
      }
      
      public final function method_1839(param1:class_14) : void
      {
         var _loc2_:class_15 = param1 as class_15;
         if(_loc2_.name_14 <= 0)
         {
            const_3.fatal(class_13.method_668(class_15) + ": invalid design-id: " + _loc2_.name_14);
            return;
         }
         if(class_41.name_3.name_17 == class_41.const_449)
         {
            class_41.name_3.name_17 = class_41.const_103;
         }
         this.var_245 = class_47.method_29.method_44(_loc2_.name_4);
         this.var_245.method_77();
         var _loc3_:class_174 = var_676;
         _loc3_.name_4 = _loc2_.name_4;
         _loc3_.name_14 = _loc2_.name_14;
         _loc3_.var_743 = _loc2_.var_34;
         _loc3_.var_61 = _loc2_.name_6.var_9;
         _loc3_.var_63 = _loc2_.name_6.var_8;
         _loc3_.var_44 = _loc2_.name_13;
         _loc3_.name_20 = _loc2_.name_20;
         _loc3_.var_154 = _loc2_.var_92;
         _loc3_.var_101 = _loc2_.var_179.var_146;
         _loc3_.var_190 = _loc2_.var_179.var_107;
         _loc3_.var_1501 = _loc2_.var_292;
         _loc3_.var_1736 = _loc2_.var_303;
         _loc3_.var_545 = false;
         _loc3_.var_2086 = false;
         _loc3_.var_983 = _loc2_.var_60;
         _loc3_.var_383 = null;
         _loc3_.var_2023 = false;
         _loc3_.var_1483 = _loc2_.var_682;
         _loc3_.var_1553 = _loc2_.var_717;
         _loc3_.var_1245 = int(_loc2_.var_648);
         _loc3_.var_665 = _loc2_.var_26;
         _loc3_.var_1625 = _loc2_.var_158;
         _loc3_.var_1352 = _loc2_.var_704;
         _loc3_.var_297 = _loc2_.name_10;
         _loc3_.var_1190 = this.method_608(_loc2_.name_20);
         if(_loc2_.name_10 <= 0)
         {
            const_3.error("Invalid level: " + _loc2_.name_10);
            _loc3_.var_297 = 1;
         }
         _loc3_.var_712 = _loc2_.var_694;
         var _loc4_:int = class_51.var_1486;
         var _loc5_:int = class_51.var_1486 = _loc2_.name_14;
         if(_loc4_ != _loc5_)
         {
            CentralEventUnit.dispatchEvent(new class_1061(class_1061.const_34,_loc5_));
         }
         var _loc6_:Boolean = class_47.method_51.method_141(class_76.const_136);
         if(false == this.var_2003)
         {
            this.method_1843();
         }
         else if(_loc4_ != _loc3_.name_14 || this.var_245.method_1414() || _loc6_)
         {
            this.method_602(_loc3_.name_4);
            this.var_245.suicide(false);
            this.var_245 = method_323(var_676);
            class_37.method_21().method_525(this.var_245.name_6);
            class_47.method_48.method_767(this.var_245);
         }
         this.method_1393();
         var _loc7_:class_226 = class_47.method_72;
         _loc7_.method_377();
         _loc7_.method_412();
         _loc7_.method_807();
         _loc7_.method_870();
         this.var_245.method_749(_loc3_);
         this.var_245.method_184();
         this.var_245.method_670(_loc3_.var_2025);
         switch(_loc4_)
         {
            case class_945.const_553:
               class_47.method_72.method_1491(true);
         }
         switch(_loc2_.name_14)
         {
            case class_945.const_553:
               class_47.method_72.method_1491(false);
         }
      }
      
      private final function method_2273(param1:Event) : void
      {
         var _loc2_:class_100 = null;
         var _loc3_:class_173 = null;
         for each(_loc2_ in this.var_333)
         {
            _loc3_ = _loc2_.method_33;
            _loc3_.var_1190 = this.method_608(_loc3_.name_20);
            _loc2_.method_2304();
         }
      }
      
      private final function method_2406(param1:Event) : void
      {
         var _loc2_:class_174 = this.var_245.method_33 as class_174;
         class_33.name_12.method_911.method_1211(_loc2_);
         this.var_245.method_34();
      }
      
      private final function method_1843() : void
      {
         var _loc1_:class_174 = var_676;
         this.method_602(_loc1_.name_4);
         this.var_245.suicide(false);
         this.var_245 = method_323(_loc1_);
         class_58.method_21().method_82("init ship");
         class_47.method_48.method_767(this.var_245);
         class_37.method_21().method_525(this.var_245.name_6);
         class_1066.method_1720(3,class_47.method_24.method_1838);
         class_41.name_3.name_17 = class_41.const_103;
         class_58.method_21().method_750();
         class_58.method_21().var_2425 = false;
         class_47.var_1427.name_23(true);
         class_307.method_21().method_2179(class_47.method_51.method_175());
         class_37.method_21().method_665();
         class_220.method_479(class_220.const_214);
         class_220.method_479(class_220.const_1013);
         class_220.method_479(class_220.const_1235);
         this.var_2334 = new Point(_loc1_.var_61,_loc1_.var_63);
         this.var_2003 = true;
         class_38.method_173(class_18.const_1429,{"val":1});
         class_33.name_12.method_911.addEventListener(class_978.const_4,this.method_2406);
         delay(6000,class_220.method_2246);
      }
      
      public final function method_1753() : void
      {
         var _loc1_:Point = class_37.method_21().method_2156();
         var _loc2_:int = _loc1_.x;
         var _loc3_:int = _loc1_.y;
         var _loc4_:* = !class_47.method_51.method_362(_loc2_,_loc3_);
         if(class_47.method_24.method_39.method_1258(_loc2_,_loc3_,_loc4_) && _loc4_)
         {
            class_169.name_3.method_627(_loc2_,_loc3_);
         }
      }
      
      private final function createActivePet(param1:class_1023) : class_171
      {
         var _loc2_:class_171 = null;
         switch(param1.name_5)
         {
            case class_1023.const_322:
               _loc2_ = new class_1062(param1);
               break;
            case class_1023.const_121:
            case class_1023.const_355:
            default:
               _loc2_ = new class_171(param1);
         }
         this.var_466[this.method_243(param1.var_88) + class_22.const_54 + param1.name_5] = _loc2_;
         if((param1.var_234 > 0 || param1.var_424 > 0) && !this.var_1249.running)
         {
            this.var_1249.start();
         }
         return _loc2_;
      }
      
      public final function method_314(param1:class_84, param2:int = 1) : class_171
      {
         return this.var_466[this.method_243(param1) + class_22.const_54 + param2];
      }
      
      public final function method_482(param1:class_84) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:class_171 = null;
         var _loc2_:Array = [];
         for each(_loc3_ in class_1023.const_275)
         {
            _loc4_ = this.method_314(param1,_loc3_);
            if(_loc4_ != null)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public final function method_518(param1:class_84, param2:int = -1) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0)
         {
            for each(_loc3_ in class_1023.const_275)
            {
               this.method_724(param1,_loc3_);
            }
         }
         else
         {
            this.method_724(param1,param2);
         }
      }
      
      private final function method_724(param1:class_84, param2:int) : void
      {
         var _loc3_:class_171 = this.method_314(param1,param2);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.suicide(true);
         delete this.var_466[this.method_243(param1) + class_22.const_54 + param2];
      }
      
      public final function method_1640(param1:int = -1) : void
      {
         var value:int = 0;
         var type:int = param1;
         var fadeOutPet:Function = function(param1:int):void
         {
            var _loc2_:class_171 = var_466[method_243(class_51.var_21) + class_22.const_54 + param1] as class_171;
            if(_loc2_ != null)
            {
               _loc2_.method_391();
               _loc2_.method_879();
            }
         };
         if(type < 0)
         {
            for each(value in class_1023.const_275)
            {
               fadeOutPet(value);
            }
         }
         else
         {
            fadeOutPet(type);
         }
      }
      
      public final function method_819(param1:int = -1) : void
      {
         var value:int = 0;
         var type:int = param1;
         var fadeInPet:Function = function(param1:int):void
         {
            var _loc2_:class_171 = var_466[method_243(class_51.var_21) + class_22.const_54 + param1] as class_171;
            if(_loc2_ != null)
            {
               _loc2_.method_409();
               _loc2_.method_867();
            }
         };
         if(class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_428) == false)
         {
            return;
         }
         if(type < 0)
         {
            for each(value in class_1023.const_275)
            {
               fadeInPet(value);
            }
         }
         else
         {
            fadeInPet(type);
         }
      }
      
      public final function method_2037() : void
      {
         var _loc1_:class_171 = null;
         for each(_loc1_ in this.var_466)
         {
            if(!class_177.method_52(_loc1_.method_67.var_88,class_51.var_21))
            {
               _loc1_.method_391();
               _loc1_.method_879();
            }
         }
      }
      
      public final function method_949(param1:int = -1) : void
      {
         var _loc2_:class_100 = null;
         var _loc3_:class_171 = null;
         if(class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_585) == false)
         {
            return;
         }
         for each(_loc3_ in this.var_466)
         {
            if(_loc3_.method_67)
            {
               if(!(class_177.method_52(_loc3_.method_67.var_88,class_51.var_21) || param1 > -1 && param1 != _loc3_.method_67.name_5))
               {
                  _loc2_ = class_47.method_29.method_44(_loc3_.method_67.var_88);
                  _loc3_.method_144(_loc2_.name_6.x,_loc2_.name_6.y,_loc2_.method_247(),false);
                  _loc3_.method_409();
                  _loc3_.method_867();
               }
            }
         }
      }
      
      public final function method_608(param1:class_89) : int
      {
         return this.var_2105.method_2077(param1);
      }
      
      private final function createActiveShip(param1:class_173) : class_100
      {
         class_1068.name_3.method_2791(param1);
         var _loc2_:class_100 = class_1065.method_193(param1);
         var _loc3_:String = this.method_243(param1.name_4);
         if(!_loc3_ || param1.name_4.name_4 <= 0)
         {
            _loc3_ = param1.var_44;
         }
         this.var_333[_loc3_] = _loc2_;
         if(_loc2_ is class_1064 && class_376.name_3 && class_376.name_3.method_2085.length > 0)
         {
            dispatchEvent(new class_1069(class_1069.const_802,param1.name_4));
         }
         return _loc2_;
      }
      
      protected final function method_2255(param1:TimerEvent) : void
      {
         var _loc4_:int = 0;
         var _loc5_:class_171 = null;
         var _loc3_:Boolean = false;
         for each(_loc5_ in this.var_466)
         {
            if(_loc5_.method_67)
            {
               _loc4_ = _loc5_.method_67.var_234;
               if(_loc4_ > 0)
               {
                  _loc4_ = _loc4_ - 1;
                  if(_loc4_ <= 0)
                  {
                     _loc4_ = 0;
                     this.method_518(_loc5_.method_67.var_88,_loc5_.method_67.name_5);
                     continue;
                  }
                  _loc5_.method_67.var_234 = _loc4_;
                  _loc3_ = true;
               }
               if(_loc5_.method_67.var_424 > 0)
               {
                  _loc5_.method_67.var_424 = _loc5_.method_67.var_424 - 1;
                  _loc5_.method_1828.method_34(1);
                  _loc3_ = true;
                  if(_loc5_.method_67.var_424 <= 0 && _loc5_.method_67.var_88 == class_51.var_21)
                  {
                     class_170.method_188("petbuffexpired");
                  }
               }
            }
         }
         if(_loc3_ == false)
         {
            this.var_1249.stop();
         }
      }
      
      private final function method_243(param1:class_84) : String
      {
         return class_177.method_90(param1);
      }
      
      public function get method_2963() : Point
      {
         return this.var_2334;
      }
   }
}
