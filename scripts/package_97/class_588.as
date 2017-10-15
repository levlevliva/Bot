package package_97
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_879;
   import package_104.class_448;
   import package_107.class_693;
   import package_118.class_1445;
   import package_118.class_539;
   import package_121.class_841;
   import package_14.class_47;
   import package_161.class_819;
   import package_176.class_1045;
   import package_26.class_1354;
   import package_36.class_100;
   import package_39.class_1366;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1455;
   import package_5.class_176;
   import package_56.class_170;
   import package_6.class_14;
   import package_69.class_978;
   import package_91.class_734;
   import package_93.class_987;
   import package_99.class_786;
   import package_99.class_853;
   import package_99.class_889;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.primitives.BitmapImage;
   
   public final class class_588 implements class_14
   {
      
      public static const name_3:class_588 = new class_588();
       
      
      private var var_646:int = 0;
      
      public var var_2036:int = 0;
      
      public var var_926:Vector.<String>;
      
      public var var_309:class_841;
      
      public var var_549:int = 0;
      
      public function class_588(param1:int = 0, param2:class_841 = null, param3:Vector.<String> = null, param4:int = 0)
      {
         super();
         this.var_2036 = param1;
         if(param3 == null)
         {
            this.var_926 = new Vector.<String>();
         }
         else
         {
            this.var_926 = param3;
         }
         if(param2 == null)
         {
            this.var_309 = new class_841();
         }
         else
         {
            this.var_309 = param2;
         }
         this.var_549 = param4;
      }
      
      public function method_16() : int
      {
         return 20884;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_2036 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_926.length > 0)
         {
            this.var_926.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_926.push(param1.readUTF());
            _loc2_++;
         }
         this.var_309 = class_841(class_93.method_26().method_25(param1.readShort()));
         this.var_309.method_15(param1);
         this.var_549 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:String = null;
         param1.writeShort(20884);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(this.var_2036);
         param1.writeByte(this.var_926.length);
         for each(_loc2_ in this.var_926)
         {
            param1.writeUTF(_loc2_);
         }
         this.var_309.method_14(param1);
         param1.writeShort(this.var_549);
      }
   }
}
