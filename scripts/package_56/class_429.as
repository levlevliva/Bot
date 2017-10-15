package package_56
{
   import com.bigpoint.seafight.view.popups.event.component.ContentLayoutComponent;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.MinigameContentVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMinigameWindow;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import package_105.class_369;
   import package_105.class_529;
   import package_116.class_405;
   import package_121.class_424;
   import package_123.class_432;
   import package_123.class_498;
   import package_14.class_286;
   import package_17.class_54;
   import package_18.class_30;
   import package_18.class_392;
   import package_18.class_40;
   import package_18.class_530;
   import package_20.class_33;
   import package_206.class_1567;
   import package_3.class_10;
   import package_34.class_115;
   import package_45.class_110;
   import package_46.class_975;
   import package_5.class_12;
   import package_51.class_148;
   import package_6.class_14;
   import package_7.class_104;
   import package_8.class_114;
   import package_95.class_341;
   import package_95.class_382;
   import package_96.class_342;
   import package_97.class_343;
   import package_97.class_344;
   import package_97.class_409;
   import package_98.class_346;
   import package_99.class_348;
   import package_99.class_374;
   import package_99.class_386;
   import package_99.class_389;
   import package_99.class_399;
   import package_99.class_410;
   import package_99.class_449;
   import package_99.class_458;
   import package_99.class_475;
   import package_99.class_493;
   import package_99.class_550;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_429 extends class_10
   {
      
      private static var name_55:class_429;
       
      
      private var var_1644:Boolean;
      
      private var var_628:class_110;
      
      private var var_533:String;
      
      public function class_429()
      {
         super();
         this.var_1644 = false;
         this.var_628 = class_33.name_12.method_41;
         method_23(class_40.name_3,this.method_2863);
         method_23(class_30.name_3,this.method_2768);
         method_23(class_392.name_3,this.method_1690);
         method_23(class_530.name_3,this.method_2383);
         method_23(class_382.name_3,this.method_139);
         method_23(class_348.name_3,this.method_139);
         method_23(class_346.name_3,this.method_139);
         method_23(class_399.name_3,this.method_139);
         method_23(class_405.name_3,this.method_139);
         method_23(class_342.name_3,this.method_139);
         method_23(class_409.name_3,this.method_139);
         method_23(class_344.name_3,this.method_139);
         method_23(class_343.name_3,this.method_139);
         method_23(class_374.name_3,this.method_139);
         method_23(class_458.name_3,this.method_139);
         method_23(class_550.name_3,this.method_139);
         method_23(class_449.name_3,this.method_139);
         method_23(class_493.name_3,this.method_139);
         method_23(class_475.name_3,this.method_139);
         method_23(class_389.name_3,this.method_139);
         method_23(class_432.name_3,this.method_139);
         method_23(class_498.name_3,this.method_139);
         method_23(class_386.name_3,this.method_139);
         method_23(class_410.name_3,this.method_139);
         method_23(class_424.name_3,this.method_1829);
         method_23(class_104.name_3,this.method_1854);
      }
      
      public static function get name_3() : class_429
      {
         if(name_55 == null)
         {
            name_55 = new class_429();
         }
         return name_55;
      }
      
      private final function method_1690(param1:class_14) : void
      {
         if(this.var_533 != class_110.const_458 && this.var_628.method_45(this.var_533))
         {
            this.var_628.method_133(this.var_533);
         }
         if(!this.var_628.method_45(class_110.const_458))
         {
            StatelessCMD.invoke(CmdSL_OpenEventWindow);
         }
         this.var_533 = class_110.const_458;
         class_975.name_3.method_2029(param1 as class_392);
      }
      
      private final function method_2383(param1:class_14) : void
      {
         var _loc2_:class_530 = param1 as class_530;
         var _loc3_:MinigameContentVo = new MinigameContentVo();
         _loc3_.characterId = _loc2_.var_198;
         if(this.var_533 != class_110.const_394 && this.var_628.method_45(this.var_533))
         {
            this.var_628.method_133(this.var_533);
         }
         if(!this.var_628.method_45(class_110.const_394))
         {
            StatelessCMD.invoke(CmdSL_OpenMinigameWindow,_loc3_);
         }
         this.var_533 = class_110.const_394;
         class_975.name_3.method_1703(_loc2_);
      }
      
      private final function method_1829(param1:class_424) : void
      {
         var _loc2_:class_424 = param1 as class_424;
         class_114.name_3.method_1875(_loc2_);
      }
      
      private final function method_1854(param1:class_104) : void
      {
         var _loc2_:class_104 = param1 as class_104;
         class_114.name_3.method_116(_loc2_.name_5);
      }
      
      private final function method_139(param1:class_341) : void
      {
         if(param1.var_86 <= 0)
         {
            const_3.warn("missing event type in " + param1);
            param1.var_86 = class_115.var_2053;
         }
         if(param1.var_189.name_5 <= 0)
         {
            const_3.warn("missing module type in " + param1);
            param1.var_189.name_5 = class_115.var_2033;
         }
         var _loc2_:WindowController = this.var_628.method_896(this.var_533);
         var _loc3_:ContentLayoutComponent = !!_loc2_?_loc2_.viewComponent as ContentLayoutComponent:null;
         if(_loc3_)
         {
            _loc3_.updateModule(param1);
         }
      }
      
      private final function method_2863(param1:class_14) : void
      {
         this.var_1644 = true;
      }
      
      private final function method_2768(param1:class_14) : void
      {
         this.var_1644 = false;
         if(this.var_628.method_45(this.var_533))
         {
            this.var_628.method_133(this.var_533);
         }
      }
      
      public final function method_1811() : Boolean
      {
         return this.var_1644;
      }
   }
}
