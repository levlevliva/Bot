package package_131
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.windowbuttonbar.WindowButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyNameItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import package_14.class_47;
   import package_16.class_28;
   import package_167.class_1024;
   import package_190.class_1181;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_522;
   import package_5.class_43;
   import package_6.class_14;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   public final class class_492 implements class_14
   {
      
      public static const name_3:class_492 = new class_492();
       
      
      private var var_646:int = 0;
      
      public var name_33:Vector.<class_573>;
      
      public var var_16:class_84;
      
      public function class_492(param1:class_84 = null, param2:Vector.<class_573> = null)
      {
         super();
         if(param2 == null)
         {
            this.name_33 = new Vector.<class_573>();
         }
         else
         {
            this.name_33 = param2;
         }
         if(param1 == null)
         {
            this.var_16 = new class_84();
         }
         else
         {
            this.var_16 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -10658;
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
         var _loc4_:class_573 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_33.length > 0)
         {
            this.name_33.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_573(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_33.push(_loc4_);
            _loc2_++;
         }
         this.var_16 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_16.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_573 = null;
         param1.writeShort(-10658);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         param1.writeByte(this.name_33.length);
         for each(_loc2_ in this.name_33)
         {
            _loc2_.method_14(param1);
         }
         this.var_16.method_14(param1);
      }
   }
}
