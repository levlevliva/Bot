package package_14
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.states.State;
   import package_2.class_65;
   import package_5.class_22;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_96 extends class_88
   {
      
      public static const const_2:String = "seafight.helptexts.";
      
      public static const const_923:String = const_2 + "infoicontips";
      
      public static const const_154:String = const_2 + "cauldronmenu";
      
      public static const const_171:String = const_2 + "questmenu";
      
      public static const const_583:String = const_2 + "eventexplanation";
      
      public static const const_666:String = const_2 + "eventdescription";
      
      public static const const_810:String = const_2 + "groupmapdescription";
      
      public static const const_851:String = const_2 + "minigamedescription";
      
      public static const const_277:String = const_2 + "deathscreen";
      
      public static const const_77:String = const_2 + "guildmenu";
      
      public static const const_22:String = const_2 + "guildisland";
      
      public static const const_58:String = const_2 + "mateysmenu";
      
      public static const const_415:String = const_2 + "spymenu";
      
      public static const const_44:String = const_2 + "minigamemenu";
      
      public static const const_245:String = const_2 + "boardingmenu";
      
      public static const const_162:String = const_2 + "npcquestmenu";
      
      public static const const_183:String = const_2 + "puzzlemenu";
      
      public static const const_725:String = const_2 + "npctips";
      
      public static const const_18:String = const_2 + "castle";
      
      public static const const_66:String = const_2 + "monthlyloginbonuswindow";
      
      public static const const_861:String = const_2 + "threshold_ranking";
      
      public static const const_288:String = const_2 + "reputationwindow";
       
      
      public function class_96(param1:String, param2:String, param3:Function)
      {
         super(param1,param2,param3);
      }
      
      public static function method_20(param1:String, param2:String, param3:Boolean = false) : String
      {
         return class_47.method_1140.method_1236(param1,param2,param3);
      }
      
      public final function method_1236(param1:String, param2:String, param3:Boolean = false) : String
      {
         var _loc4_:String = method_32(param1,param2);
         if(param3)
         {
            _loc4_ = _loc4_.replace(/<br>/g,class_22.const_10);
         }
         return _loc4_;
      }
   }
}
