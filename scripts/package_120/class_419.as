package package_120
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1265;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuEquipmentTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuEquipmentTabController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.AnimationManager;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_413;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_511;
   import package_107.class_693;
   import package_14.class_1535;
   import package_14.class_47;
   import package_166.class_1502;
   import package_17.class_54;
   import package_170.class_979;
   import package_179.class_1064;
   import package_186.class_1137;
   import package_215.class_1600;
   import package_26.class_1086;
   import package_39.class_973;
   import package_41.class_93;
   import package_42.class_959;
   import package_46.class_1493;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_6.class_14;
   import package_72.class_203;
   import package_89.class_1138;
   import package_9.class_17;
   import package_92.class_1278;
   import package_92.class_944;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   public final class class_419 extends class_339
   {
      
      public static const name_3:class_419 = new class_419();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_919>;
      
      public function class_419(param1:Vector.<class_919> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_919>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 3281;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_919 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_919(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_919 = null;
         param1.writeShort(3281);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
