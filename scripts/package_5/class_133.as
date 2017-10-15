package package_5
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import mx.binding.BindingManager;
   import package_104.class_988;
   import package_104.class_989;
   import package_14.class_225;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_23.class_42;
   import package_49.class_140;
   
   public final class class_133
   {
       
      
      public function class_133()
      {
         super();
      }
      
      public static function method_27(param1:int, param2:int = -1) : String
      {
         switch(param1)
         {
            case class_140.const_375:
               return "void";
            case class_140.const_28:
               return method_57(class_88.const_19,param2.toString());
            case class_140.const_518:
               return method_57(class_88.const_228,"ElitePoints");
            case class_140.const_441:
               return method_57(class_88.const_228,"ExperiencePoints");
            case class_140.const_23:
               return method_57(class_88.const_153,param2.toString());
            case class_140.const_212:
               return method_57(class_88.const_45,param2.toString());
            case class_140.const_36:
               return method_57(class_88.const_205,param2.toString());
            case class_140.const_633:
               return method_57(class_88.const_263,param2.toString());
            case class_140.const_100:
               return method_57(class_88.const_50,param2.toString());
            case class_140.const_17:
               return method_57(class_88.const_65,param2.toString());
            case class_140.const_155:
               return method_57(class_88.const_260,param2.toString());
            case class_140.const_528:
               return class_47.method_22.method_20("mappiece").replace("%MAP%",class_139.method_27(param2));
            case class_140.const_29:
               return method_57(class_88.const_111,param2.toString());
            case class_140.const_419:
               return method_57(class_88.const_296,param2.toString());
            case class_140.const_68:
               return method_57(class_88.const_358,param2.toString());
            case class_140.const_31:
               return method_57(class_88.const_93,param2.toString());
            case class_140.const_190:
               return method_57(class_88.const_456,param2.toString());
            case class_140.const_777:
               return method_20("admiralpoints");
            case class_140.const_16:
               return method_57(class_88.const_294,param2.toString());
            case class_140.const_71:
               return method_20("dayspremium");
            case class_140.const_55:
               return method_57(class_88.const_845,param2.toString());
            case class_140.const_906:
               return method_20("battlepoints");
            case class_140.const_1046:
               return method_20("extendabledesign");
            case class_140.const_713:
               return method_20("eventpuzzle");
            case class_140.const_1175:
               return method_20("increasedhp");
            case class_140.const_1021:
               return method_20("decreasedhp");
            case class_140.const_595:
               return method_57(class_88.const_434,param2.toString());
            case class_140.const_555:
               return method_57(class_88.const_380,"Level");
            case class_140.const_41:
               return method_57(class_88.const_374,param2.toString());
            case class_140.const_363:
               return class_47.method_22.method_20("tickerReputation") + " " + method_57(class_88.const_88,param2.toString());
            case class_140.const_1701:
               return method_20("arenapoints");
            case class_140.const_82:
               return method_57(class_88.const_385,"" + param2);
            default:
               return "unknown [type=" + param1 + "][id=" + param2 + "]";
         }
      }
      
      public static function method_1423(param1:int, param2:int = -1) : String
      {
         switch(param1)
         {
            case class_989.const_705:
               return method_27(class_140.const_23,param2);
            case class_989.const_748:
               return method_27(class_140.const_100,param2);
            case class_989.const_31:
               return method_27(class_140.const_31,param2);
            case class_989.const_28:
               return method_27(class_140.const_28,param2);
            case class_989.const_25:
               return method_27(class_140.const_68,param2);
            case class_989.const_89:
               return method_27(class_140.const_419,param2);
            case class_989.const_925:
               return method_27(class_140.const_41,param2);
            case class_989.const_717:
               return method_27(class_140.const_133,param2);
            case class_989.const_17:
               return method_27(class_140.const_17,param2);
            case class_989.const_115:
               return method_27(class_140.const_212,param2);
            case class_989.const_61:
               return method_27(class_140.const_61,param2);
            case class_989.const_29:
               return method_27(class_140.const_29,param2);
            case class_989.const_297:
               return method_27(class_140.const_16,param2);
            case class_989.const_36:
               return method_27(class_140.const_36,param2);
            default:
               return class_989 + "[" + param1 + "]";
         }
      }
      
      public static function method_2170(param1:int, param2:int = -1) : String
      {
         switch(param1)
         {
            case class_988.const_705:
               return method_27(class_140.const_23,param2);
            case class_988.const_100:
               return method_27(class_140.const_100,param2);
            case class_988.const_31:
               return method_27(class_140.const_31,param2);
            case class_988.const_28:
               return method_27(class_140.const_28,param2);
            case class_988.const_25:
               return method_27(class_140.const_68,param2);
            case class_988.const_89:
               return method_27(class_140.const_419,param2);
            case class_988.const_925:
               return method_27(class_140.const_41,param2);
            case class_988.const_717:
               return method_27(class_140.const_133,param2);
            case class_988.const_17:
               return method_27(class_140.const_17,param2);
            case class_988.const_1715:
               return method_27(class_140.const_212,param2);
            case class_988.const_61:
               return method_27(class_140.const_61,param2);
            case class_988.const_29:
               return method_27(class_140.const_29,param2);
            case class_988.const_297:
               return method_27(class_140.const_16,param2);
            case class_988.const_36:
               return method_27(class_140.const_36,param2);
            case class_988.const_82:
               return method_27(class_140.const_82,param2);
            case class_988.const_190:
               return method_27(class_140.const_190,param2);
            default:
               return class_988 + "[" + param1 + "]";
         }
      }
      
      public static function method_961(param1:int, param2:int = -1) : String
      {
         switch(param1)
         {
            case class_140.const_375:
               return "void-description";
            case class_140.const_28:
               return method_93(class_94.const_19,param2.toString());
            case class_140.const_518:
               return method_57(class_88.const_228,"ElitePoints");
            case class_140.const_441:
               return method_93(class_94.const_19,class_225.const_1391.toString());
            case class_140.const_23:
               return method_93(class_94.const_244,param2.toString());
            case class_140.const_212:
               return method_93(class_94.const_399,param2.toString());
            case class_140.const_36:
               return method_93(class_94.const_205,param2.toString());
            case class_140.const_633:
               return method_93(class_94.const_765,param2.toString());
            case class_140.const_100:
               return method_93(class_94.const_50,param2.toString());
            case class_140.const_17:
               return method_93(class_94.const_65,param2.toString());
            case class_140.const_155:
               return method_57(class_88.const_260,param2.toString());
            case class_140.const_528:
               return class_47.method_22.method_20("mappiece").replace("%MAP%",class_139.method_27(param2));
            case class_140.const_29:
               return method_93(class_94.const_111,param2.toString());
            case class_140.const_419:
               return method_93(class_94.const_438,param2.toString());
            case class_140.const_68:
               return method_93(class_94.const_468,param2.toString());
            case class_140.const_31:
               return method_93(class_94.const_93,param2.toString());
            case class_140.const_190:
               return method_93(class_94.const_932,param2.toString());
            case class_140.const_777:
               return method_20("admiralpoints");
            case class_140.const_16:
               return method_93(class_94.const_497,param2.toString());
            case class_140.const_71:
               return method_20("dayspremium");
            case class_140.const_55:
               return method_93(class_94.const_326,param2.toString());
            case class_140.const_906:
               return method_20("battlepoints");
            case class_140.const_1046:
               return method_20("extendabledesign");
            case class_140.const_713:
               return method_20("eventpuzzle");
            case class_140.const_1175:
               return method_20("increasedhp");
            case class_140.const_1021:
               return method_20("decreasedhp");
            case class_140.const_595:
               return method_57(class_88.const_434,param2.toString());
            case class_140.const_555:
               return method_57(class_88.const_380,"Level");
            case class_140.const_41:
               return method_57(class_88.const_374,param2.toString());
            case class_140.const_363:
               return method_57(class_88.const_88,param2.toString());
            default:
               return "unknown item description [type=" + param1 + "][id=" + param2 + "]";
         }
      }
      
      public static function method_312(param1:int, param2:int = -1, param3:Boolean = false) : String
      {
         var _loc4_:String = !!param3?"small":"large";
         switch(param1)
         {
            case class_140.const_375:
               return null;
            case class_140.const_28:
               return method_94("images/merchant/","currency",_loc4_,param2);
            case class_140.const_518:
            case class_140.const_441:
               return null;
            case class_140.const_23:
               return method_94("images/merchant/","actionitems",_loc4_,param2);
            case class_140.const_212:
               return method_94("images/merchant/","nonperishablegoods",_loc4_,param2);
            case class_140.const_36:
               return class_42.method_47("images/items/questitems/" + _loc4_ + "/" + param2 + class_984.const_9);
            case class_140.const_633:
               return method_94("images/merchant/","shipdesigns",_loc4_,param2);
            case class_140.const_100:
               return method_94("images/merchant/","ammunition",_loc4_,param2);
            case class_140.const_17:
               return method_94("images/merchant/","harpoons",_loc4_,param2);
            case class_140.const_155:
            case class_140.const_528:
               return class_42.method_47("images/maps/" + _loc4_ + "/" + param2 + class_984.const_9);
            case class_140.const_29:
               return method_94("images/merchant/","sails",_loc4_,param2);
            case class_140.const_419:
               return method_94("images/merchant/","shipextensions",_loc4_,param2);
            case class_140.const_68:
               return method_94("images/merchant/","crew",_loc4_,param2);
            case class_140.const_31:
               return method_94("images/merchant/","weapons",_loc4_,param2);
            case class_140.const_190:
               return method_94("images/merchant/","buff",_loc4_,param2);
            case class_140.const_777:
               return null;
            case class_140.const_16:
               return method_94("images/merchant/","pet",_loc4_,param2);
            case class_140.const_71:
               return method_94("images/merchant/","premium",_loc4_,param2);
            case class_140.const_55:
               return method_94("images/merchant/","subscriptions",_loc4_,param2);
            case class_140.const_41:
               return method_94("images/merchant/","gems",_loc4_,param2);
            default:
               Main.LOG.warn(class_133 + ": Unhandled " + class_140 + "=" + param1 + " with id=" + param2);
               return "Undefined";
         }
      }
      
      private static function method_94(param1:String, param2:String, param3:String, param4:int) : String
      {
         return class_42.method_47(param1 + param2 + "/" + param3 + "/gfx_" + param2 + "_" + param3 + "_" + param4 + class_984.const_9);
      }
      
      private static function method_20(param1:String) : String
      {
         var _loc2_:String = class_47.method_22.method_28(param1);
         return !!_loc2_?_loc2_:param1;
      }
      
      private static function method_57(param1:String, param2:String) : String
      {
         var _loc3_:String = class_47.method_37.method_121(param1,param2);
         return !!_loc3_?_loc3_:param1 + ":" + param2;
      }
      
      private static function method_93(param1:String, param2:String) : String
      {
         var _loc3_:String = class_47.method_108.method_121(param1,param2);
         return !!_loc3_?_loc3_:param1 + ":" + param2;
      }
   }
}
