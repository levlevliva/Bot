package package_54
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.events.ContentModuleIndexChangeEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_22.class_1519;
   import package_41.class_84;
   import package_46.class_1224;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public class class_158 extends Sprite
   {
       
      
      private var var_2263:int;
      
      private var var_2155:int;
      
      public function class_158()
      {
         super();
      }
      
      public final function method_404() : void
      {
         this.var_2263 = height;
         this.var_2155 = width;
      }
      
      public function get method_2185() : int
      {
         return this.var_2263;
      }
      
      public function get method_2882() : int
      {
         return this.var_2155;
      }
   }
}
