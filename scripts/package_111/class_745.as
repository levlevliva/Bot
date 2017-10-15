package package_111
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultNonPerishable_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.UIComponent;
   import mx.events.DragEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import package_104.class_628;
   import package_14.class_47;
   import package_150.class_587;
   import package_20.class_33;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_47.class_129;
   import package_52.class_168;
   import package_6.class_14;
   import package_88.class_1014;
   import package_89.class_331;
   import package_94.class_340;
   import package_94.class_690;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_745 implements class_14
   {
      
      public static const name_3:class_745 = new class_745();
       
      
      private var var_646:int = 0;
      
      public var var_534:int = 0;
      
      public var var_80:Vector.<class_696>;
      
      public var name_5:int = 0;
      
      public function class_745(param1:int = 0, param2:int = 0, param3:Vector.<class_696> = null)
      {
         super();
         this.var_534 = param1;
         if(param3 == null)
         {
            this.var_80 = new Vector.<class_696>();
         }
         else
         {
            this.var_80 = param3;
         }
         this.name_5 = param2;
      }
      
      public function method_16() : int
      {
         return 25044;
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
         var _loc4_:class_696 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_534 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_80.length > 0)
         {
            this.var_80.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_696(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_80.push(_loc4_);
            _loc2_++;
         }
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_696 = null;
         param1.writeShort(25044);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeShort(this.var_534);
         param1.writeByte(this.var_80.length);
         for each(_loc2_ in this.var_80)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.name_5);
      }
   }
}
