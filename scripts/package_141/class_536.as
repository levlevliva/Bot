package package_141
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameGlobalRankingModuleSimple;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowRect;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.userInterface.NotifierContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_123.class_652;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_49;
   import package_16.class_28;
   import package_20.class_33;
   import package_27.class_53;
   import package_39.class_1366;
   import package_40.class_334;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_881;
   import package_5.class_123;
   import package_5.class_43;
   import package_69.class_978;
   import package_93.class_339;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_536 extends class_339
   {
      
      public static const name_3:class_536 = new class_536();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_804>;
      
      public function class_536(param1:Vector.<class_804> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_804>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 25806;
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
         var _loc4_:class_804 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
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
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_804(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_804 = null;
         param1.writeShort(25806);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         super.method_14(param1);
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
