package package_104
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_901;
   import net.bigpoint.seafight.com.module.useraction.class_1479;
   import package_101.class_357;
   import package_101.class_388;
   import package_101.class_483;
   import package_101.class_495;
   import package_101.class_511;
   import package_101.class_549;
   import package_107.class_693;
   import package_14.class_51;
   import package_183.class_1453;
   import package_216.class_1575;
   import package_3.class_26;
   import package_41.class_84;
   import package_41.class_89;
   import package_42.class_98;
   import package_6.class_14;
   import package_7.class_74;
   import package_9.class_404;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_628 implements class_14
   {
      
      public static const name_3:class_628 = new class_628();
       
      
      private var var_646:int = 0;
      
      public var var_475:int = 0;
      
      public function class_628(param1:int = 0)
      {
         super();
         this.var_475 = param1;
      }
      
      public function method_16() : int
      {
         return -14386;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_475 = param1.readShort();
         this.var_475 = 65535 & ((65535 & this.var_475) << 12 % 16 | (65535 & this.var_475) >>> 16 - 12 % 16);
         this.var_475 = this.var_475 > 32767?int(this.var_475 - 65536):int(this.var_475);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14386);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_475) >>> 12 % 16 | (65535 & this.var_475) << 16 - 12 % 16));
      }
   }
}
