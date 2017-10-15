package package_14
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import flash.utils.IDataInput;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_127.class_486;
   import package_170.class_979;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_17;
   import package_9.class_91;
   import spark.primitives.BitmapImage;
   
   public final class class_95 extends class_88
   {
      
      public static const const_2:String = "seafight.npcnames.";
      
      public static const const_308:String = const_2 + "npc";
      
      public static const const_854:String = const_2 + "tower";
       
      
      public function class_95(param1:String, param2:String, param3:Function)
      {
         super(param1,param2,param3);
      }
      
      public final function method_27(param1:int) : String
      {
         return method_32(const_308,param1.toString());
      }
      
      public final function method_2769(param1:int) : String
      {
         return method_32(const_854,param1.toString());
      }
   }
}
