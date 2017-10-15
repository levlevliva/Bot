package package_34
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuAnnouncementsTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_205.class_1353;
   import package_41.class_84;
   import package_5.class_123;
   import package_51.class_1355;
   import package_69.class_1052;
   import package_69.class_978;
   import package_9.class_631;
   import package_9.class_76;
   import package_9.class_91;
   import package_97.class_409;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.events.TextOperationEvent;
   
   public final class class_169 extends class_69
   {
      
      private static const const_1431:int = 200;
      
      private static var name_55:class_169;
       
      
      private var name_6:class_91;
      
      private var name_103:int;
      
      private var name_102:int;
      
      private var var_543:Timer;
      
      private var var_1595:Boolean;
      
      public function class_169()
      {
         super();
         this.name_6 = new class_91();
         this.var_543 = new Timer(const_1431,1);
         this.var_543.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_1221);
         this.var_1595 = false;
      }
      
      public static function get name_3() : class_169
      {
         if(name_55)
         {
            return name_55;
         }
         return name_55 = new class_169();
      }
      
      public final function method_627(param1:int, param2:int) : void
      {
         if(class_47.method_51.method_141(class_76.const_136))
         {
            return;
         }
         this.name_103 = param1;
         this.name_102 = param2;
         if(this.var_1595)
         {
            return;
         }
         this.name_6.var_9 = param1;
         this.name_6.var_8 = param2;
         this.var_1595 = true;
         this.method_406();
         this.var_543.start();
      }
      
      private final function method_1221(param1:TimerEvent) : void
      {
         if(this.name_103 != this.name_6.var_9 || this.name_102 != this.name_6.var_8)
         {
            this.name_6.var_9 = this.name_103;
            this.name_6.var_8 = this.name_102;
            this.method_406();
         }
         this.var_1595 = false;
      }
      
      private final function method_406() : void
      {
         class_631.name_3.name_6.var_9 = this.name_6.var_9;
         class_631.name_3.name_6.var_8 = this.name_6.var_8;
         var_125.method_31(class_631.name_3);
      }
   }
}
