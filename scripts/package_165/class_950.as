package package_165
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_166.class_1344;
   import package_166.class_1345;
   import package_170.class_979;
   import package_41.class_84;
   import package_46.class_1493;
   import package_46.class_1500;
   import package_6.class_14;
   import package_69.class_978;
   import package_89.class_1011;
   import spark.components.VGroup;
   
   public class class_950 extends Sprite
   {
       
      
      protected var var_472:class_1344;
      
      public function class_950()
      {
         super();
         this.var_472 = new class_1344();
         this.y = 40;
         addChild(this.var_472);
      }
      
      protected function method_593(param1:String, param2:String = null, param3:int = 0) : void
      {
         this.var_472.method_2586(param1);
         this.var_472.method_1853(param2);
         this.var_472.method_1997(param3);
         this.var_472.method_34();
      }
   }
}
