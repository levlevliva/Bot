package package_59
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_110.class_903;
   import package_136.class_926;
   import package_156.class_654;
   import package_167.class_1024;
   import package_19.class_182;
   import package_41.class_84;
   import package_54.class_159;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_180 extends Event
   {
      
      public static const const_342:String = "fileloaddoneevent";
       
      
      public var var_1662:class_182;
      
      public var var_327:String;
      
      public var var_2354:int;
      
      public function class_180(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new class_180(type,bubbles,cancelable);
      }
   }
}
