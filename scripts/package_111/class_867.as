package package_111
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardSubListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardsTabListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestItemBG;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.core.PropTween;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.CloseEvent;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_122.class_656;
   import package_136.class_509;
   import package_136.class_926;
   import package_14.class_47;
   import package_166.class_965;
   import package_17.class_325;
   import package_20.class_33;
   import package_28.class_56;
   import package_32.class_64;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_49.class_137;
   import package_5.class_1239;
   import package_5.class_133;
   import package_5.class_22;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_1240;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   
   public final class class_867 implements class_14
   {
      
      public static const name_3:class_867 = new class_867();
       
      
      private var var_646:int = 0;
      
      public var var_96:Vector.<class_727>;
      
      public var name_38:Number = 0;
      
      public function class_867(param1:Number = 0, param2:Vector.<class_727> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_96 = new Vector.<class_727>();
         }
         else
         {
            this.var_96 = param2;
         }
         this.name_38 = param1;
      }
      
      public function method_16() : int
      {
         return 10627;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_727 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_96.length > 0)
         {
            this.var_96.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_727(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_96.push(_loc4_);
            _loc2_++;
         }
         this.name_38 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_727 = null;
         param1.writeShort(10627);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeByte(this.var_96.length);
         for each(_loc2_ in this.var_96)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.name_38);
      }
   }
}
