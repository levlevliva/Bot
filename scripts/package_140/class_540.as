package package_140
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.groupwindow.Blinker;
   import com.bigpoint.seafight.view.popups.groupwindow.HealthPointsDisplay;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.tabs.PlayerProfileView;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.component.target;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_1554;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_701;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_822;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_11.class_130;
   import package_11.class_20;
   import package_133.class_595;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_94;
   import package_152.class_664;
   import package_171.class_981;
   import package_178.class_1060;
   import package_20.class_33;
   import package_30.class_62;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_47.class_124;
   import package_47.class_128;
   import package_47.class_129;
   import package_47.class_136;
   import package_48.class_138;
   import package_49.class_137;
   import package_5.class_1050;
   import package_5.class_123;
   import package_5.class_133;
   import package_67.class_1051;
   import package_7.class_1039;
   import package_72.class_203;
   import package_88.class_1093;
   import package_93.class_339;
   import package_99.class_911;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_540 extends class_339
   {
      
      public static const name_3:class_540 = new class_540();
       
      
      private var var_646:int = 0;
      
      public var var_669:Vector.<class_751>;
      
      public var var_320:int = 0;
      
      public function class_540(param1:Vector.<class_751> = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_669 = new Vector.<class_751>();
         }
         else
         {
            this.var_669 = param1;
         }
         this.var_320 = param2;
      }
      
      override public function method_16() : int
      {
         return 19044;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_751 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_669.length > 0)
         {
            this.var_669.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_751(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_669.push(_loc4_);
            _loc2_++;
         }
         this.var_320 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_751 = null;
         param1.writeShort(19044);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_669.length);
         for each(_loc2_ in this.var_669)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_320);
      }
   }
}
