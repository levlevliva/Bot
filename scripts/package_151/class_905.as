package package_151
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_121.class_841;
   import package_14.class_47;
   import package_170.class_979;
   import package_3.class_378;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_129;
   import package_5.class_22;
   import package_6.class_14;
   import package_72.class_1442;
   import package_88.class_967;
   import package_89.class_1378;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.supportClasses.ButtonBarHorizontalLayout;
   import spark.primitives.Rect;
   
   public final class class_905 implements class_14
   {
      
      public static const name_3:class_905 = new class_905();
       
      
      private var var_646:int = 0;
      
      public var var_536:Vector.<int>;
      
      public var name_11:int = 0;
      
      public function class_905(param1:int = 0, param2:Vector.<int> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_536 = new Vector.<int>();
         }
         else
         {
            this.var_536 = param2;
         }
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return -25150;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_536.length > 0)
         {
            this.var_536.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readShort());
            _loc4_ = 65535 & ((65535 & _loc4_) >>> 6 % 16 | (65535 & _loc4_) << 16 - 6 % 16);
            _loc4_ = int(_loc4_ > 32767?int(_loc4_ - 65536):int(_loc4_));
            this.var_536.push(_loc4_);
            _loc2_++;
         }
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 10 % 16 | (65535 & this.name_11) >>> 16 - 10 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(-25150);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeByte(this.var_536.length);
         for each(_loc2_ in this.var_536)
         {
            param1.writeShort(65535 & ((65535 & _loc2_) << 6 % 16 | (65535 & _loc2_) >>> 16 - 6 % 16));
         }
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 10 % 16 | (65535 & this.name_11) << 16 - 10 % 16));
      }
   }
}
