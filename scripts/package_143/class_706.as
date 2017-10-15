package package_143
{
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemGeneralVO;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bit101.components.ScrollPane;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_817;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_14.class_286;
   import package_14.class_51;
   import package_216.class_1575;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_51.class_148;
   import package_54.class_1006;
   import package_6.class_14;
   import package_90.class_316;
   import package_97.class_752;
   import spark.components.HGroup;
   
   public final class class_706 implements class_14
   {
      
      public static const name_3:class_706 = new class_706();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_750:Vector.<class_933>;
      
      public function class_706(param1:int = 0, param2:Vector.<class_933> = null)
      {
         super();
         this.name_5 = param1;
         if(param2 == null)
         {
            this.var_750 = new Vector.<class_933>();
         }
         else
         {
            this.var_750 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -1556;
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
         var _loc4_:class_933 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_750.length > 0)
         {
            this.var_750.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_933(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_750.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_933 = null;
         param1.writeShort(-1556);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(this.name_5);
         param1.writeByte(this.var_750.length);
         for each(_loc2_ in this.var_750)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
