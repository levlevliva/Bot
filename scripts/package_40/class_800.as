package package_40
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_983;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroupProperties;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.greensock.events.TweenEvent;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_104.class_641;
   import package_121.class_841;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_273;
   import package_16.class_28;
   import package_22.class_423;
   import package_22.class_655;
   import package_23.class_42;
   import package_25.class_295;
   import package_27.class_53;
   import package_28.class_56;
   import package_34.class_107;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_974;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_65.class_1046;
   import package_89.class_1138;
   import package_89.class_1378;
   import package_89.class_299;
   import package_9.class_1314;
   import package_9.class_401;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.TileLayout;
   
   public final class class_800 implements class_14
   {
      
      public static const name_3:class_800 = new class_800();
       
      
      private var var_646:int = 0;
      
      public var var_847:Vector.<class_86>;
      
      public function class_800(param1:Vector.<class_86> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_847 = new Vector.<class_86>();
         }
         else
         {
            this.var_847 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -6132;
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
         var _loc4_:class_86 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_847.length > 0)
         {
            this.var_847.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_86(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_847.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_86 = null;
         param1.writeShort(-6132);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeByte(this.var_847.length);
         for each(_loc2_ in this.var_847)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
