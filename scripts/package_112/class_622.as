package package_112
{
   import com.bigpoint.seafight.model.inventory.vo.gem.DefaultGem_VO;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.target;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.CollectionEventKind;
   import mx.states.AddItems;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import package_104.class_641;
   import package_121.class_841;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_15.class_273;
   import package_23.class_42;
   import package_27.class_53;
   import package_34.class_107;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_975;
   import package_48.class_996;
   import package_5.class_43;
   import package_5.class_984;
   import package_6.class_14;
   import package_65.class_1046;
   import package_89.class_1378;
   import package_91.class_686;
   import package_95.class_341;
   import package_98.class_346;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   
   use namespace mx_internal;
   
   public final class class_622 implements class_14
   {
      
      public static const name_3:class_622 = new class_622();
       
      
      private var var_646:int = 0;
      
      public var name_10:int = 0;
      
      public var var_739:Vector.<class_841>;
      
      public var var_13:int = 0;
      
      public var var_93:Vector.<class_830>;
      
      public var name_5:int = 0;
      
      public function class_622(param1:int = 0, param2:Vector.<class_830> = null, param3:int = 0, param4:int = 0, param5:Vector.<class_841> = null)
      {
         super();
         this.name_10 = param4;
         if(param5 == null)
         {
            this.var_739 = new Vector.<class_841>();
         }
         else
         {
            this.var_739 = param5;
         }
         this.var_13 = param1;
         if(param2 == null)
         {
            this.var_93 = new Vector.<class_830>();
         }
         else
         {
            this.var_93 = param2;
         }
         this.name_5 = param3;
      }
      
      public function method_16() : int
      {
         return 19231;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_841 = null;
         var _loc5_:class_830 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_10 = param1.readInt();
         this.name_10 = this.name_10 << 4 % 32 | this.name_10 >>> 32 - 4 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_739.length > 0)
         {
            this.var_739.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_739.push(_loc4_);
            _loc2_++;
         }
         this.var_13 = param1.readInt();
         this.var_13 = this.var_13 >>> 7 % 32 | this.var_13 << 32 - 7 % 32;
         while(this.var_93.length > 0)
         {
            this.var_93.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_830(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_93.push(_loc5_);
            _loc2_++;
         }
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         var _loc3_:class_830 = null;
         param1.writeShort(19231);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeInt(this.name_10 >>> 4 % 32 | this.name_10 << 32 - 4 % 32);
         param1.writeByte(this.var_739.length);
         for each(_loc2_ in this.var_739)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_13 << 7 % 32 | this.var_13 >>> 32 - 7 % 32);
         param1.writeByte(this.var_93.length);
         for each(_loc3_ in this.var_93)
         {
            _loc3_.method_14(param1);
         }
         param1.writeShort(this.name_5);
      }
   }
}
