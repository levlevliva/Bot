package package_54
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.containers.Accordion;
   import mx.controls.Spacer;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_108.class_596;
   import package_108.class_755;
   import package_14.class_47;
   import package_170.class_979;
   import package_18.class_855;
   import package_185.class_1136;
   import package_210.class_1474;
   import package_23.class_42;
   import package_34.class_116;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_49.class_140;
   import package_5.class_1026;
   import package_5.class_123;
   import package_50.class_1296;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import package_8.class_1315;
   import package_89.class_331;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_343;
   import spark.components.Group;
   import spark.components.Scroller;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_159 extends class_158
   {
      
      public static const const_3:ILogger = Log.getLogger("GenericButton");
       
      
      protected var var_130:MovieClip;
      
      public function class_159(param1:MovieClip)
      {
         super();
         this.var_130 = param1;
         this.var_130.gotoAndStop(1);
         useHandCursor = true;
         this.method_1490();
         addChild(this.var_130);
      }
      
      protected final function method_1490() : void
      {
         addEventListener(MouseEvent.MOUSE_DOWN,this.method_393,false,0,true);
         addEventListener(MouseEvent.MOUSE_UP,this.method_452,false,0,true);
         addEventListener(MouseEvent.MOUSE_OVER,this.method_352,false,0,true);
         addEventListener(MouseEvent.MOUSE_OUT,this.method_416,false,0,true);
      }
      
      protected function method_2469() : void
      {
         if(!this.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            addEventListener(MouseEvent.MOUSE_DOWN,this.method_393,false,0,true);
         }
      }
      
      protected final function method_1055() : void
      {
         if(!this.hasEventListener(MouseEvent.MOUSE_UP))
         {
            addEventListener(MouseEvent.MOUSE_UP,this.method_452,false,0,true);
         }
      }
      
      protected function method_416(param1:MouseEvent) : void
      {
      }
      
      protected function method_352(param1:MouseEvent) : void
      {
      }
      
      protected function method_452(param1:MouseEvent) : void
      {
      }
      
      protected function method_393(param1:MouseEvent) : void
      {
         class_203.name_21(SoundEffectType.CLICK);
      }
      
      protected final function method_916() : void
      {
         removeEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
         removeEventListener(MouseEvent.MOUSE_UP,this.method_452);
         removeEventListener(MouseEvent.MOUSE_OVER,this.method_352);
         removeEventListener(MouseEvent.MOUSE_OUT,this.method_416);
      }
      
      public final function method_1122() : Point
      {
         var _loc1_:Point = new Point();
         _loc1_.x = this.var_130.width;
         _loc1_.y = this.var_130.height;
         return _loc1_;
      }
      
      public function get method_135() : MovieClip
      {
         return this.var_130;
      }
      
      public function set method_135(param1:MovieClip) : void
      {
         if(this.contains(this.var_130))
         {
            this.removeChild(this.var_130);
         }
         this.var_130 = param1;
         addChild(this.var_130);
      }
   }
}
