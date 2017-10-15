package package_118
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.quest.npc.events.ContentModuleIndexChangeEvent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_152.class_611;
   import package_152.class_668;
   import package_20.class_982;
   import package_29.class_565;
   import package_34.class_117;
   import package_36.class_100;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_7.class_15;
   import package_72.class_203;
   import spark.components.VGroup;
   
   public final class class_539 implements class_14
   {
      
      public static const name_3:class_539 = new class_539();
       
      
      private var var_646:int = 0;
      
      public var var_86:int = 0;
      
      public var name_17:int = 0;
      
      public var var_1021:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_71:Number = 0;
      
      public var var_286:class_611;
      
      public var var_1375:Number = 0;
      
      public function class_539(param1:Number = 0, param2:int = 0, param3:int = 0, param4:Number = 0, param5:class_611 = null, param6:int = 0, param7:Number = 0)
      {
         super();
         this.var_86 = param2;
         this.name_17 = param3;
         this.var_1021 = param6;
         this.var_20 = param1;
         this.var_71 = param4;
         if(param5 == null)
         {
            this.var_286 = new class_611();
         }
         else
         {
            this.var_286 = param5;
         }
         this.var_1375 = param7;
      }
      
      public function method_16() : int
      {
         return -7235;
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
         return 28;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_86 = param1.readShort();
         this.name_17 = param1.readShort();
         this.var_1021 = param1.readInt();
         this.var_1021 = this.var_1021 >>> 12 % 32 | this.var_1021 << 32 - 12 % 32;
         this.var_20 = param1.readDouble();
         this.var_71 = param1.readDouble();
         this.var_286 = class_611(class_93.method_26().method_25(param1.readShort()));
         this.var_286.method_15(param1);
         this.var_1375 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7235);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         param1.writeShort(this.var_86);
         param1.writeShort(this.name_17);
         param1.writeInt(this.var_1021 << 12 % 32 | this.var_1021 >>> 32 - 12 % 32);
         param1.writeDouble(this.var_20);
         param1.writeDouble(this.var_71);
         this.var_286.method_14(param1);
         param1.writeDouble(this.var_1375);
      }
   }
}
