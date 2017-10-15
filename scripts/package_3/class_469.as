package package_3
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.groupwindow.OpenGroupWindowCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCurrencyWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenQuestTrackerWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_635;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_10.class_18;
   import package_10.class_38;
   import package_14.class_47;
   import package_14.class_49;
   import package_17.class_54;
   import package_2.class_9;
   import package_26.class_960;
   import package_32.class_64;
   import package_41.class_84;
   import package_42.class_98;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_43;
   import package_51.class_148;
   import package_52.class_167;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_61.class_349;
   import package_61.class_787;
   import package_88.class_1093;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_469 implements class_9
   {
       
      
      public function class_469()
      {
         super();
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_349 = null;
         var _loc6_:class_787 = null;
         _loc2_ = param1 as class_349;
         var _loc3_:Vector.<class_787> = _loc2_.var_283;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = _loc3_[_loc5_];
            class_49.name_3.method_95(_loc6_.var_369,_loc6_.var_601);
            _loc5_++;
         }
         class_49.name_3.name_16();
         this.method_2055();
      }
      
      private final function method_2055() : void
      {
         if(class_49.name_3.method_97(class_43.const_1154))
         {
            new CmdSL_OpenSpyWindow().execute();
         }
         if(class_49.name_3.method_97(class_43.const_1236))
         {
            new OpenGroupWindowCommand().execute();
         }
         if(class_49.name_3.method_97(class_43.const_431))
         {
            new CmdSL_OpenQuestTrackerWindow().execute();
         }
         if(class_49.name_3.method_97(class_43.const_1153))
         {
            new CmdSL_OpenCurrencyWindow().execute();
         }
      }
   }
}
