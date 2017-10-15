package package_99
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_14.class_88;
   import package_17.class_54;
   import package_170.class_979;
   import package_22.class_655;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_148;
   import package_52.class_167;
   import package_54.class_163;
   import package_69.class_1614;
   import package_69.class_978;
   import package_72.class_1080;
   import package_72.class_203;
   import package_73.class_228;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_399 extends class_341
   {
      
      public static const name_3:class_399 = new class_399();
       
      
      private var var_646:int = 0;
      
      public var var_70:class_828;
      
      public var var_170:Number = 0;
      
      public function class_399(param1:class_828 = null, param2:Number = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_70 = new class_828();
         }
         else
         {
            this.var_70 = param1;
         }
         this.var_170 = param2;
      }
      
      override public function method_16() : int
      {
         return -15443;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_70 = class_828(class_93.method_26().method_25(param1.readShort()));
         this.var_70.method_15(param1);
         this.var_170 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15443);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         super.method_14(param1);
         this.var_70.method_14(param1);
         param1.writeDouble(this.var_170);
      }
   }
}
