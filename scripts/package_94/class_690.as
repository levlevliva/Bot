package package_94
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import package_14.class_47;
   import package_149.class_579;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_5.class_43;
   import package_88.class_967;
   import package_89.class_1378;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   
   public class class_690 extends class_579
   {
      
      public static const name_3:class_690 = new class_690();
       
      
      private var var_646:int = 0;
      
      public var var_35:int = 0;
      
      public function class_690(param1:int = 0)
      {
         super();
         this.var_35 = param1;
      }
      
      override public function method_16() : int
      {
         return -9337;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_35 = param1.readShort();
         this.var_35 = 65535 & ((65535 & this.var_35) >>> 10 % 16 | (65535 & this.var_35) << 16 - 10 % 16);
         this.var_35 = this.var_35 > 32767?int(this.var_35 - 65536):int(this.var_35);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9337);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_35) << 10 % 16 | (65535 & this.var_35) >>> 16 - 10 % 16));
      }
   }
}
