package package_111
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastlePopup;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.event.skins.target;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.RankIconsComboBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildProfileView;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import package_121.class_773;
   import package_121.class_841;
   import package_130.class_809;
   import package_14.class_47;
   import package_14.class_94;
   import package_152.class_664;
   import package_17.class_54;
   import package_209.class_1363;
   import package_27.class_53;
   import package_41.class_93;
   import package_47.class_129;
   import package_48.class_138;
   import package_48.class_996;
   import package_49.class_880;
   import package_5.class_214;
   import package_51.class_1103;
   import package_6.class_14;
   import package_7.class_1039;
   import package_9.class_120;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_726 implements class_14
   {
      
      public static const name_3:class_726 = new class_726();
       
      
      private var var_646:int = 0;
      
      public var var_76:Vector.<class_659>;
      
      public var var_32:int = 0;
      
      public function class_726(param1:int = 0, param2:Vector.<class_659> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_76 = new Vector.<class_659>();
         }
         else
         {
            this.var_76 = param2;
         }
         this.var_32 = param1;
      }
      
      public function method_16() : int
      {
         return -3664;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_659 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_76.length > 0)
         {
            this.var_76.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_659(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_76.push(_loc4_);
            _loc2_++;
         }
         this.var_32 = param1.readInt();
         this.var_32 = this.var_32 >>> 10 % 32 | this.var_32 << 32 - 10 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_659 = null;
         param1.writeShort(-3664);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeByte(this.var_76.length);
         for each(_loc2_ in this.var_76)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_32 << 10 % 32 | this.var_32 >>> 32 - 10 % 32);
      }
   }
}
