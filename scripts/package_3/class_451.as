package package_3
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.skins.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.SaveInvalidReason;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCastleWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMonthlyLoginBonusWindow;
   import flash.display.Sprite;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_14.class_47;
   import package_14.class_51;
   import package_140.class_534;
   import package_140.class_985;
   import package_2.class_9;
   import package_41.class_93;
   import package_5.class_123;
   import package_6.class_14;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public final class class_451 implements class_9
   {
       
      
      public function class_451()
      {
         super();
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_534 = param1 as class_534;
         switch(_loc2_.var_320)
         {
            case class_985.const_1385:
               StatelessCMD.invoke(CmdSL_OpenMonthlyLoginBonusWindow);
               break;
            case class_985.const_1181:
               StatelessCMD.invoke(CmdSL_OpenCastleWindow);
         }
      }
   }
}
