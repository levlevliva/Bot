package package_110
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRelationsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsComboBoxListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.core.TweenCore;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.class_1327;
   import package_101.class_511;
   import package_105.class_369;
   import package_105.class_529;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_49;
   import package_15.class_273;
   import package_18.class_392;
   import package_20.class_33;
   import package_41.class_84;
   import package_41.class_93;
   import package_43.class_105;
   import package_43.class_257;
   import package_45.class_110;
   import package_46.class_975;
   import package_5.class_1028;
   import package_5.class_43;
   import package_5.class_939;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_76.class_279;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_390 implements class_14
   {
      
      public static const name_3:class_390 = new class_390();
       
      
      private var var_646:int = 0;
      
      public var var_809:Vector.<class_856>;
      
      public function class_390(param1:Vector.<class_856> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_809 = new Vector.<class_856>();
         }
         else
         {
            this.var_809 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -28587;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_856 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_809.length > 0)
         {
            this.var_809.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_856(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_809.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_856 = null;
         param1.writeShort(-28587);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeShort(this.var_809.length);
         for each(_loc2_ in this.var_809)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
