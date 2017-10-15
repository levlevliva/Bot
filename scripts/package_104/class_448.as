package package_104
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_101.class_511;
   import package_14.class_47;
   import package_14.class_51;
   import package_15.class_48;
   import package_152.class_664;
   import package_174.class_1375;
   import package_175.class_1547;
   import package_185.class_1136;
   import package_22.class_671;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_984;
   import package_6.class_14;
   import package_72.class_1071;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_99.class_764;
   import package_99.class_786;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_448 implements class_14
   {
      
      public static const name_3:class_448 = new class_448();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_9:Vector.<class_641>;
      
      public function class_448(param1:int = 0, param2:Vector.<class_641> = null)
      {
         super();
         this.name_5 = param1;
         if(param2 == null)
         {
            this.name_9 = new Vector.<class_641>();
         }
         else
         {
            this.name_9 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 16189;
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
         var _loc4_:class_641 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
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
            _loc4_ = class_641(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_641 = null;
         param1.writeShort(16189);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
