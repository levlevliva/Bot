package package_151
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1512;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.common.BoardingMenuVanity;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreviewClip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.graphics.SolidColorStroke;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import package_11.class_130;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_165.class_953;
   import package_17.class_54;
   import package_183.class_1453;
   import package_20.class_982;
   import package_204.class_1531;
   import package_23.class_42;
   import package_26.class_1102;
   import package_26.class_960;
   import package_41.class_93;
   import package_47.class_935;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_945;
   import package_53.class_1100;
   import package_6.class_14;
   import package_9.class_91;
   import package_98.class_777;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_831 implements class_14
   {
      
      public static const name_3:class_831 = new class_831();
       
      
      private var var_646:int = 0;
      
      public var var_878:Vector.<class_905>;
      
      public function class_831(param1:Vector.<class_905> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_878 = new Vector.<class_905>();
         }
         else
         {
            this.var_878 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -23886;
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
         var _loc4_:class_905 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_878.length > 0)
         {
            this.var_878.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_905(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_878.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_905 = null;
         param1.writeShort(-23886);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeByte(this.var_878.length);
         for each(_loc2_ in this.var_878)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
