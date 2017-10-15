package package_19
{
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TweenMax;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_170.class_979;
   import package_212.class_1537;
   import package_23.class_42;
   import package_34.class_107;
   import package_34.class_179;
   import package_41.class_93;
   import package_5.class_1028;
   import package_5.class_43;
   import package_51.class_148;
   import package_59.class_180;
   import package_60.class_183;
   import package_61.class_184;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   
   public final class class_32 extends EventDispatcher
   {
      
      private static var name_3:class_32;
      
      private static const const_1651:int = 600;
      
      private static const const_1291:int = 10;
       
      
      private var var_352:Vector.<class_183>;
      
      private var var_354:class_182;
      
      private var var_1900:Boolean = false;
      
      private var var_1973:int;
      
      public function class_32(param1:SingletonBlocker_4379)
      {
         super();
         if(param1 == null)
         {
            throw new Error("Error: Instantiation failed");
         }
      }
      
      public static function name_12() : class_32
      {
         if(name_3 == null)
         {
            name_3 = new class_32(new SingletonBlocker_4379());
            name_3.var_1973 = const_1291;
            name_3.var_352 = new Vector.<class_183>(0);
            name_3.var_352.push(new class_183(class_184.const_1570,"res/items/item_1.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1595,"res/items/item_48.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1780,"res/monster/monster_2.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1667,"res/monster/monster_19.swf",""));
            name_3.var_352.push(new class_183(class_184.const_42,"res/fx/projectiles.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1660,"res/effects/ammoheartbreaker.swf",""));
            name_3.var_352.push(new class_183(class_184.const_221,"res/effects/ammoshrapnel.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1578,"res/ships/boss_604.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1798,"res/sounds/ui.swf",""));
            name_3.var_352.push(new class_183(class_184.const_1552,"res/pet/pet_11.swf",""));
            name_3.method_1522();
            name_3.scheduleCheck();
         }
         return name_3;
      }
      
      private final function method_1021() : void
      {
         if(this.var_354 && this.var_354.hasEventListener(class_180.const_342))
         {
            this.var_354.removeEventListener(class_180.const_342,this.method_832);
         }
      }
      
      private final function initLoading(param1:String, param2:int) : void
      {
         var _loc3_:String = class_42.method_47(param1);
         if(!this.var_354)
         {
            this.var_354 = new class_182();
         }
         this.var_354.method_119();
         this.var_354.name_5 = param2;
         this.method_1021();
         this.var_354.addEventListener(class_180.const_342,this.method_832);
         this.var_354.load(new URLRequest(_loc3_));
      }
      
      private final function method_1522() : void
      {
         var _loc1_:class_183 = null;
         if(this.var_1900)
         {
            return;
         }
         for each(_loc1_ in this.var_352)
         {
            if(_loc1_.name_100 == false && _loc1_.var_327 == "")
            {
               this.initLoading(_loc1_.name_96,_loc1_.name_5);
               return;
            }
         }
         this.method_1021();
         this.var_1900 = true;
         this.var_354.method_119();
         this.var_354 = null;
      }
      
      private final function method_832(param1:class_180) : void
      {
         var _loc3_:class_183 = null;
         var _loc2_:class_180 = param1;
         for each(_loc3_ in this.var_352)
         {
            if(_loc3_.name_5 == _loc2_.var_2354)
            {
               _loc3_.var_327 = _loc2_.var_327;
               _loc3_.name_100 = true;
               break;
            }
         }
         if(_loc2_.var_1662.hasEventListener(class_180.const_342))
         {
            _loc2_.var_1662.removeEventListener(class_180.const_342,this.method_832);
         }
         _loc2_.var_1662.method_119();
         this.method_1522();
      }
      
      private final function scheduleCheck() : void
      {
         var _loc1_:class_183 = null;
         if(this.var_1900)
         {
            _loc1_ = this.var_352[class_181.method_2166(0,this.var_352.length - 1)];
            class_179.name_3.method_96(_loc1_.name_5,_loc1_.var_327);
            this.var_1973 = const_1651;
         }
         TweenMax.delayedCall(this.var_1973,this.scheduleCheck);
      }
   }
}

class SingletonBlocker_4379
{
    
   
   function SingletonBlocker_4379()
   {
      super();
   }
}
