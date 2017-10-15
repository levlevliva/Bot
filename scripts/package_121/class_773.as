package package_121
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.MouseHandler;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventoryGroup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCauldronWindow;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.events.SandboxMouseEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.useraction.class_1479;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_114.class_430;
   import package_12.class_21;
   import package_124.class_1311;
   import package_124.class_582;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_16.class_28;
   import package_171.class_1275;
   import package_20.class_33;
   import package_26.class_1088;
   import package_30.class_62;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_959;
   import package_48.class_126;
   import package_5.class_945;
   import package_6.class_14;
   import package_7.class_1039;
   import package_9.class_872;
   import spark.components.Group;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class class_773 implements class_14
   {
      
      public static const name_3:class_773 = new class_773();
       
      
      private var var_646:int = 0;
      
      public var var_77:Vector.<class_841>;
      
      public function class_773(param1:Vector.<class_841> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_77 = new Vector.<class_841>();
         }
         else
         {
            this.var_77 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 24746;
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
         var _loc4_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_77.length > 0)
         {
            this.var_77.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_77.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         param1.writeShort(24746);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeByte(this.var_77.length);
         for each(_loc2_ in this.var_77)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
