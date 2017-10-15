package package_52
{
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_17.class_54;
   import package_170.class_979;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   
   public final class class_168 extends class_167
   {
      
      public static const name_67:String = "options";
      
      public static const const_997:String = "switchAcceptInspectPrices";
      
      public static const const_790:String = "switchCloseOnLogout";
      
      public static const const_1048:String = "switchBlockGroupInvites";
      
      public static const const_1128:String = "switchDblClickAttack";
      
      public static const const_992:String = "effects";
      
      public static const const_1122:String = "ambient";
      
      public static const const_756:String = "fpsChange";
      
      public static const const_1228:String = "switchOnOffSmoothMap";
      
      public static const const_1017:String = "switchOnOffBadMapPreLoad";
      
      public static const const_658:String = "scrollVelocityChange";
      
      public static const const_698:String = "switchTooltips";
      
      public static const const_741:String = "switchScrollBars";
      
      public static const const_907:String = "switchOnOffReload";
      
      public static const const_874:String = "switchOnOffRepairInfo";
      
      public static const const_719:String = "switchOnOffEffects";
      
      public static const const_857:String = "switchOnOffEffectLeveUp";
      
      public static const const_736:String = "switchOnOffEffectQuest";
      
      public static const const_714:String = "switchOnOffEffectSinking";
      
      public static const const_753:String = "switchOnOffEffectBonusMap";
      
      public static const const_795:String = "switchOnOffEffectShip";
      
      public static const const_876:String = "switchOnOffMonsterAnimation";
      
      public static const const_678:String = "switchOnOffMyPet";
      
      public static const const_722:String = "switchOnOffTheirPet";
      
      public static const const_885:String = "switchOnOffBoost";
      
      public static const const_820:String = "switchOnOffClouds";
      
      public static const const_668:String = "switchOnOffFish";
      
      public static const const_926:String = "switchOnOffDolphins";
      
      public static const const_728:String = "switchOnOffWaves";
      
      public static const const_687:String = "switchOnOffBirds";
      
      public static const const_1039:String = "switchOnOffWater";
       
      
      private var var_1406:class_288;
      
      private var var_1146:class_153;
      
      private var var_1311:class_289;
      
      private var var_865:class_287;
      
      private var var_616:Array;
      
      private var var_1749:Array;
      
      private var var_2291:Array;
      
      private var var_1914:String;
      
      private var var_2433:String;
      
      private var var_999:Bitmap;
      
      public function class_168()
      {
         super();
      }
      
      override public function init(param1:XML, param2:StyleSheet, param3:SWFFinisher, param4:UserInterface) : void
      {
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:Object = null;
         var_102 = param4;
         var_18 = param1;
         var_48 = param3;
         var_85 = param2;
         this.var_999 = var_48.getEmbeddedBitmap("tabactive");
         var _loc5_:String = "tabinactive";
         addChild(var_48.getEmbeddedBitmap(param1.@gfx)).y = 21;
         addChild(var_48.getEmbeddedBitmap(_loc5_)).x = 0;
         addChild(var_48.getEmbeddedBitmap(_loc5_)).x = 119;
         addChild(var_48.getEmbeddedBitmap(_loc5_)).x = 237;
         addChild(var_48.getEmbeddedBitmap(_loc5_)).x = 355;
         addChild(this.var_999);
         this.var_1749 = new Array();
         this.var_2291 = new Array();
         for each(_loc6_ in var_18.categoryBtn)
         {
            this.method_2366(_loc6_);
         }
         for each(_loc7_ in var_18.globalBtn)
         {
            this.method_2563(_loc7_);
         }
         _loc8_ = var_85.getStyle(var_18.@style);
         this.scaleX = _loc8_.scale;
         this.scaleY = _loc8_.scale;
         this.alpha = _loc8_.alpha;
         this.method_132(_loc8_.visible == "true");
         this.x = var_18.@xPos;
         this.y = var_18.@yPos;
         this.var_616 = new Array();
         this.method_2135();
         this.method_77();
      }
      
      public final function method_77() : void
      {
         this.method_467(0);
         this.var_999.x = 0;
         this.var_1146.method_484(class_153.const_793);
      }
      
      private final function method_2366(param1:XML) : class_161
      {
         if(var_18.categoryBtnConfig[0])
         {
            this.var_1914 = var_18.categoryBtnConfig[0].@actStyle;
            this.var_2433 = var_18.categoryBtnConfig[0].@inactStyle;
         }
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.graphics.beginFill(16776960,0);
         _loc2_.graphics.drawRect(0,0,115,22);
         _loc2_.graphics.endFill();
         var _loc3_:class_1006 = new class_1006(_loc2_);
         _loc3_.x = param1.@xPos;
         _loc3_.y = param1.@yPos;
         _loc3_.method_251();
         _loc3_.method_162(param1.@onAction);
         _loc3_.method_106(var_112.method_28(param1.@labelRes));
         _loc3_.method_639(this.var_1914);
         _loc3_.addEventListener(class_148.const_13,class_54.method_21().method_129);
         this.var_1749.push(addChild(_loc3_));
         return _loc3_;
      }
      
      private final function method_2563(param1:XML) : class_161
      {
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.addChild(var_48.getEmbeddedBitmap(param1.@gfx));
         var _loc3_:class_1006 = new class_1006(_loc2_);
         _loc3_.x = param1.@xPos;
         _loc3_.y = param1.@yPos;
         _loc3_.method_162(param1.@onAction);
         _loc3_.method_106(var_112.method_28(param1.@labelRes));
         _loc3_.addEventListener(class_148.const_13,class_54.method_21().method_129);
         this.var_2291.push(addChild(_loc3_));
         return _loc3_;
      }
      
      public final function method_553(param1:String) : void
      {
         switch(param1)
         {
            case "general":
               this.var_999.x = 0;
               this.method_467(0);
               break;
            case "controls":
               this.var_999.x = 119;
               this.method_467(1);
               break;
            case "sounds":
               this.var_999.x = 237;
               this.method_467(2);
               break;
            case "graphics":
               this.var_999.x = 355;
               this.method_467(3);
         }
      }
      
      private final function method_467(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.var_616.length)
         {
            if(_loc2_ != param1 && this.var_616[_loc2_])
            {
               this.var_616[_loc2_].visible = false;
               (this.var_1749[_loc2_] as class_1006).method_639(this.var_2433);
            }
            else if(_loc2_ == param1 && this.var_616[_loc2_])
            {
               (this.var_1749[_loc2_] as class_1006).method_639(this.var_1914);
               this.var_616[_loc2_].visible = true;
            }
            _loc2_++;
         }
      }
      
      private final function method_2135() : void
      {
         var _loc1_:XML = var_18["general"][0];
         this.var_1406 = new class_288();
         this.var_1406.name_16(_loc1_,var_85,var_48);
         this.var_1406.method_503();
         this.var_616.push(addChild(this.var_1406));
         var _loc2_:XML = var_18["controls"][0];
         this.var_1146 = new class_153();
         this.var_1146.name_16(_loc2_,var_85,var_48);
         this.var_1146.method_503();
         this.var_616.push(addChild(this.var_1146));
         var _loc3_:XML = var_18["sounds"][0];
         this.var_1311 = new class_289();
         this.var_1311.name_16(_loc3_,var_85,var_48);
         this.var_1311.method_503();
         this.var_616.push(addChild(this.var_1311));
         var _loc4_:XML = var_18["graphics"][0];
         this.var_865 = new class_287(_loc4_["submenuConfig"][0]);
         this.var_865.method_546(_loc4_["display"][0],var_85,var_48);
         this.var_865.method_546(_loc4_["elements"][0],var_85,var_48);
         this.var_865.method_546(_loc4_["animations"][0],var_85,var_48);
         this.var_865.method_546(_loc4_["environment"][0],var_85,var_48);
         this.var_865.method_467(0);
         this.var_616.push(addChild(this.var_865));
      }
      
      public function get method_1180() : class_288
      {
         return this.var_1406;
      }
      
      public function get name_83() : class_153
      {
         return this.var_1146;
      }
      
      public function get method_136() : class_287
      {
         return this.var_865;
      }
      
      public function get method_633() : class_289
      {
         return this.var_1311;
      }
   }
}
