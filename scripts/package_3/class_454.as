package package_3
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.PuzzleWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMemberListItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import com.bigpoint.seafight.view.popups.puzzlepopup.PuzzlePopupController;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopup;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupPieceVo;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.timer.TimerComponent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.DragEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_119.class_418;
   import package_119.class_457;
   import package_119.class_465;
   import package_119.class_479;
   import package_14.class_47;
   import package_14.class_96;
   import package_20.class_33;
   import package_26.class_1086;
   import package_28.class_56;
   import package_36.class_100;
   import package_41.class_84;
   import package_45.class_110;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_974;
   import package_6.class_14;
   import package_91.class_734;
   import spark.components.Group;
   import spark.components.RichEditableText;
   import spark.components.TitleWindow;
   import spark.core.SpriteVisualElement;
   import spark.primitives.BitmapImage;
   
   public final class class_454 extends class_10
   {
       
      
      private var var_338:TimerComponent;
      
      public function class_454()
      {
         super();
         method_23(class_457.name_3,this.method_1020);
         method_23(class_465.name_3,this.method_1432);
         method_23(class_418.name_3,this.method_2233);
         method_23(class_479.name_3,this.method_2511);
         CentralEventUnit.addEventListener(class_56.const_51,this.method_1184);
      }
      
      private final function method_2233(param1:class_14) : void
      {
         var _loc2_:class_418 = param1 as class_418;
         this.method_1501();
         this.var_338.startTimer(_loc2_.var_711,_loc2_.name_23);
      }
      
      private final function method_2511(param1:class_14) : void
      {
         var _loc2_:class_479 = param1 as class_479;
         this.method_1501();
         this.var_338.startCounter(_loc2_.var_71,_loc2_.var_711,_loc2_.name_23);
      }
      
      private final function method_1020(param1:class_14 = null) : void
      {
         var _loc2_:class_457 = param1 as class_457;
         if(!this.var_338)
         {
            const_3.warn("No timer was running...");
            return;
         }
         this.var_338.stopTimer();
         this.method_1511();
      }
      
      private final function method_1432(param1:class_14 = null) : void
      {
         var _loc2_:class_465 = param1 as class_465;
         if(!this.var_338)
         {
            const_3.warn("No counter was running...");
            return;
         }
         this.var_338.stopTimer();
         this.method_1511();
      }
      
      private final function method_1501() : void
      {
         if(null == this.var_338)
         {
            this.var_338 = new TimerComponent();
            this.var_338.init();
            class_47.method_24.var_12.addElement(this.var_338);
         }
      }
      
      private final function method_1511() : void
      {
         if(this.var_338 && !this.var_338.hasTimerRunning())
         {
            class_47.method_24.var_12.removeElement(this.var_338);
            this.var_338 = null;
         }
      }
      
      private final function method_1184(param1:class_56) : void
      {
         if(!this.var_338)
         {
            return;
         }
         this.method_1020();
         this.method_1432();
      }
   }
}
