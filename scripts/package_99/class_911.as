package package_99
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_107.class_693;
   import package_14.class_47;
   import package_14.class_87;
   import package_21.class_197;
   import package_36.class_100;
   import package_54.class_162;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   
   public final class class_911 implements class_14
   {
      
      public static const name_3:class_911 = new class_911();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_7:int = 0;
      
      public var name_48:int = 0;
      
      public function class_911(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.name_5 = param1;
         this.name_7 = param2;
         this.name_48 = param3;
      }
      
      public function method_16() : int
      {
         return -25394;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 << 16 % 32 | this.name_7 >>> 32 - 16 % 32;
         this.name_48 = param1.readInt();
         this.name_48 = this.name_48 >>> 15 % 32 | this.name_48 << 32 - 15 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-25394);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(this.name_5);
         param1.writeInt(this.name_7 >>> 16 % 32 | this.name_7 << 32 - 16 % 32);
         param1.writeInt(this.name_48 << 15 % 32 | this.name_48 >>> 32 - 15 % 32);
      }
   }
}
