package package_165
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.GrayscaleFilters;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BoardingWindow;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.popups.boarding.component.BoardingWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.boarding.controllers.BoardingWindowNaviController;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildCurrencyVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.WindowHeaderRopeDeco;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindow;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.describeType;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.controls.Text;
   import mx.core.ClassFactory;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_467;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_166.class_1345;
   import package_169.class_1159;
   import package_170.class_979;
   import package_184.class_1129;
   import package_20.class_33;
   import package_26.class_960;
   import package_3.class_393;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_103;
   import package_41.class_84;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1356;
   import package_49.class_140;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_133;
   import package_51.class_974;
   import package_58.class_175;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_1240;
   import package_88.class_1093;
   import package_89.class_1346;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public class class_952 extends class_951
   {
      
      private static var var_1337:class_393;
       
      
      protected var var_362:class_1346;
      
      private var var_1812:Boolean;
      
      public function class_952(param1:class_173)
      {
         super(param1);
      }
      
      override public function method_34(param1:class_172) : void
      {
         super.method_34(param1);
         this.method_633();
         var _loc2_:class_1225 = class_1240.name_3.method_265(class_1239.const_73);
         _loc2_.addEventListener(Event.COMPLETE,this.method_605);
         _loc2_.addEventListener(Event.CHANGE,this.method_605);
         if(var_1337 == null)
         {
            var_1337 = class_33.name_12.method_126.method_164(class_393) as class_393;
         }
         var_1337.var_743.add(this.method_1165);
         this.method_1858();
      }
      
      private final function method_1858() : void
      {
         var _loc1_:class_173 = var_228 as class_173;
         var_472.method_2712(_loc1_.var_1202);
      }
      
      public final function method_633() : void
      {
         var _loc3_:* = false;
         var _loc1_:class_1067 = var_228 as class_1067;
         var _loc2_:Boolean = class_1129.method_928(_loc1_);
         if(_loc2_ && !this.var_362)
         {
            this.var_362 = new class_1346("componentassets","boarding_indicator");
            this.var_362.y = -4;
            this.method_1378();
            addChild(this.var_362);
         }
         else if(!_loc2_ && this.var_362)
         {
            removeChild(this.var_362);
            this.var_362 = null;
         }
         if(_loc2_)
         {
            _loc3_ = !class_1129.method_1011(_loc1_);
            if(this.var_362)
            {
               if(_loc3_ && !this.var_1812)
               {
                  this.var_362.filters = GrayscaleFilters.GRAYSCALE_FILTERS;
               }
               else if(!_loc3_ && this.var_1812)
               {
                  this.var_362.filters = GrayscaleFilters.NO_FILTERS;
               }
               this.var_1812 = _loc3_;
            }
         }
      }
      
      private final function method_605(param1:Event) : void
      {
         this.method_633();
      }
      
      public final function method_36() : void
      {
         var _loc1_:class_1225 = class_1240.name_3.method_265(class_1239.const_73);
         _loc1_.removeEventListener(Event.COMPLETE,this.method_605);
         _loc1_.removeEventListener(Event.CHANGE,this.method_605);
         var_1337.var_743.remove(this.method_1165);
      }
      
      protected final function method_1378() : void
      {
         var _loc1_:int = class_1345.const_756 * 0.5;
         var _loc2_:int = var_472.width * 0.5;
         var _loc3_:int = _loc2_ > _loc1_?int(_loc2_):int(_loc1_);
         if(this.var_362)
         {
            this.var_362.x = -_loc3_ - this.var_362.width;
         }
      }
      
      private final function method_1165(param1:int, param2:Number) : void
      {
         if(param1 == AmsAttributeType.BOARDINGATTACKCOMBATVALUE)
         {
            if(param2 > 0 != this.var_362)
            {
               this.method_633();
            }
         }
      }
   }
}
