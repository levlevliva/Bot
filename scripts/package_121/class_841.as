package package_121
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1234;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildAnnouncementListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuSearchTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPieceItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_383;
   import net.bigpoint.seafight.com.module.guild.class_421;
   import net.bigpoint.seafight.com.module.guild.class_607;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.class_517;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_1176;
   import package_111.class_741;
   import package_14.class_47;
   import package_14.class_51;
   import package_148.class_606;
   import package_166.class_1330;
   import package_170.class_979;
   import package_216.class_1575;
   import package_29.class_57;
   import package_34.class_1526;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1224;
   import package_49.class_140;
   import package_5.class_1050;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import package_76.class_279;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_841 implements class_14
   {
      
      public static const name_3:class_841 = new class_841();
       
      
      private var var_646:int = 0;
      
      public var var_10:Number = 0;
      
      public var name_5:int = 0;
      
      public function class_841(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_10 = param2;
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -17779;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_10 = param1.readDouble();
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-17779);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeDouble(this.var_10);
         param1.writeShort(this.name_5);
      }
   }
}
