package package_111
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ShipEquipmentTargetList;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.class_208;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_211;
   import com.bigpoint.seafight.view.userInterface.class_212;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.class_221;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.MouseEvent;
   import flash.media.SoundChannel;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_1313;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_14.class_96;
   import package_140.class_540;
   import package_17.class_224;
   import package_17.class_326;
   import package_17.class_990;
   import package_171.class_1325;
   import package_23.class_42;
   import package_26.class_218;
   import package_39.class_1366;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_129;
   import package_47.class_136;
   import package_48.class_999;
   import package_49.class_137;
   import package_50.class_219;
   import package_6.class_14;
   import package_72.class_203;
   import package_89.class_1378;
   import package_9.class_350;
   import package_9.class_899;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_848 implements class_14
   {
      
      public static const name_3:class_848 = new class_848();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_848(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return 14596;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 4 % 32 | this.name_15 >>> 32 - 4 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14596);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeInt(this.name_15 >>> 4 % 32 | this.name_15 << 32 - 4 % 32);
      }
   }
}
