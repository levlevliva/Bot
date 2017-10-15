package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildSearchListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import package_14.class_51;
   import package_34.class_1499;
   import package_41.class_84;
   import package_47.class_129;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_980
   {
      
      public static const const_1819:int = 0;
      
      public static const const_993:int = 1;
       
      
      public var var_335:Boolean = true;
      
      public var var_9:int = 0;
      
      public var var_8:int = 0;
      
      public var name_81:int = -1;
      
      public var name_19:int = 0;
      
      public var var_1908:int = 0;
      
      public var var_1931:int = 0;
      
      public function class_980(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.var_9 = param1;
         this.var_8 = param2;
         this.name_81 = param3;
         this.name_19 = param4;
      }
      
      public final function method_77() : void
      {
         this.var_335 = true;
         this.var_9 = 0;
         this.var_8 = 0;
         this.name_81 = -1;
         this.name_19 = 0;
      }
   }
}
