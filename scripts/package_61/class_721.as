package package_61
{
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_1496;
   import com.bigpoint.seafight.tools.class_1497;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPieceItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bit101.components.ColorChooser;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_440;
   import package_14.class_47;
   import package_14.class_51;
   import package_170.class_979;
   import package_29.class_166;
   import package_41.class_93;
   import package_46.class_1356;
   import package_46.class_1493;
   import package_46.class_1500;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_1315;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   public final class class_721 implements class_14
   {
      
      public static const name_3:class_721 = new class_721();
       
      
      private var var_646:int = 0;
      
      public var var_283:Vector.<class_787>;
      
      public function class_721(param1:Vector.<class_787> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_283 = new Vector.<class_787>();
         }
         else
         {
            this.var_283 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -25019;
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
         var _loc4_:class_787 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_283.length > 0)
         {
            this.var_283.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_787(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_283.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_787 = null;
         param1.writeShort(-25019);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeByte(this.var_283.length);
         for each(_loc2_ in this.var_283)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
