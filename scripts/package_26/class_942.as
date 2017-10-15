package package_26
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import package_15.class_48;
   import package_42.class_98;
   import package_46.class_1224;
   import package_52.class_168;
   import package_88.class_1090;
   import package_88.class_967;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_942 extends Event
   {
      
      public static const const_696:String = "ENTITY_SUICIDE_EVENT";
       
      
      public var name_87:class_98;
      
      public function class_942(param1:class_98)
      {
         this.name_87 = param1;
         super(const_696);
      }
   }
}
