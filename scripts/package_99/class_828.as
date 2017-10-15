package package_99
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.TextTuple;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.ClashRankingListItemVO;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IUIComponent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.xF;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_121.class_841;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_96;
   import package_171.class_1269;
   import package_202.attackDirection;
   import package_202.tx;
   import package_202.ty;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_959;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_945;
   import package_54.class_163;
   import package_89.class_1138;
   import package_89.class_1378;
   import package_9.class_120;
   import package_90.class_316;
   import package_95.class_341;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.primitives.Rect;
   
   public final class class_828 extends class_341
   {
      
      public static const name_3:class_828 = new class_828();
       
      
      private var var_646:int = 0;
      
      public var var_55:int = 0;
      
      public var var_70:Vector.<class_860>;
      
      public var var_818:Vector.<class_793>;
      
      public function class_828(param1:Vector.<class_860> = null, param2:Vector.<class_793> = null, param3:int = 0)
      {
         super();
         this.var_55 = param3;
         if(param1 == null)
         {
            this.var_70 = new Vector.<class_860>();
         }
         else
         {
            this.var_70 = param1;
         }
         if(param2 == null)
         {
            this.var_818 = new Vector.<class_793>();
         }
         else
         {
            this.var_818 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 18446;
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
         return 9;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_860 = null;
         var _loc5_:class_793 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_55 = param1.readByte();
         this.var_55 = 255 & ((255 & this.var_55) << 11 % 8 | (255 & this.var_55) >>> 8 - 11 % 8);
         this.var_55 = this.var_55 > 127?int(this.var_55 - 256):int(this.var_55);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_70.length > 0)
         {
            this.var_70.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_860(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_70.push(_loc4_);
            _loc2_++;
         }
         while(this.var_818.length > 0)
         {
            this.var_818.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_793(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_818.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_860 = null;
         var _loc3_:class_793 = null;
         param1.writeShort(18446);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         super.method_14(param1);
         param1.writeByte(255 & ((255 & this.var_55) >>> 11 % 8 | (255 & this.var_55) << 8 - 11 % 8));
         param1.writeByte(this.var_70.length);
         for each(_loc2_ in this.var_70)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_818.length);
         for each(_loc3_ in this.var_818)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
