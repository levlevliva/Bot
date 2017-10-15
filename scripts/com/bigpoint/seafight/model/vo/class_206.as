package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.userInterface.class_19;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import package_11.class_20;
   import package_14.class_47;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.filters.DropShadowFilter;
   
   public final class class_206
   {
      
      public static const const_1213:int = -1;
      
      public static const const_768:int = 0;
      
      public static const const_257:int = 1;
      
      public static const const_218:int = 2;
      
      public static const const_38:int = 3;
      
      public static const const_26:int = 4;
      
      public static const const_1260:int = 8;
       
      
      public function class_206()
      {
         super();
      }
      
      public static function method_124(param1:String) : int
      {
         switch(param1)
         {
            case "cannon_ball":
               return const_768;
            case "harpoon":
               return const_257;
            case "action_item":
               return const_218;
            case "voodoo":
               return const_38;
            case "fireworks":
               return const_26;
            case "buy":
               return const_1260;
            default:
               return const_1213;
         }
      }
   }
}
