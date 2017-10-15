package package_111
{
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.teamscore.component.TeamMembersScorePopupListItemMemberItem;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IUIComponent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_825;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_110.class_649;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_170.class_979;
   import package_210.class_1364;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_948;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_52.class_168;
   import package_52.class_306;
   import package_54.class_158;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_72.class_203;
   import package_91.class_1246;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   
   public final class class_774 implements class_14
   {
      
      public static const name_3:class_774 = new class_774();
       
      
      private var var_646:int = 0;
      
      public var var_544:Vector.<class_741>;
      
      public var var_372:int = 0;
      
      public var name_15:int = 0;
      
      public var var_829:Vector.<class_726>;
      
      public var name_29:int = 0;
      
      public function class_774(param1:int = 0, param2:int = 0, param3:Vector.<class_741> = null, param4:Vector.<class_726> = null, param5:int = 0)
      {
         super();
         if(param3 == null)
         {
            this.var_544 = new Vector.<class_741>();
         }
         else
         {
            this.var_544 = param3;
         }
         this.var_372 = param5;
         this.name_15 = param1;
         if(param4 == null)
         {
            this.var_829 = new Vector.<class_726>();
         }
         else
         {
            this.var_829 = param4;
         }
         this.name_29 = param2;
      }
      
      public function method_16() : int
      {
         return 10393;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_741 = null;
         var _loc5_:class_726 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_544.length > 0)
         {
            this.var_544.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_741(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_544.push(_loc4_);
            _loc2_++;
         }
         this.var_372 = param1.readInt();
         this.var_372 = this.var_372 >>> 7 % 32 | this.var_372 << 32 - 7 % 32;
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 11 % 32 | this.name_15 << 32 - 11 % 32;
         while(this.var_829.length > 0)
         {
            this.var_829.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_726(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_829.push(_loc5_);
            _loc2_++;
         }
         this.name_29 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_741 = null;
         var _loc3_:class_726 = null;
         param1.writeShort(10393);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeByte(this.var_544.length);
         for each(_loc2_ in this.var_544)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_372 << 7 % 32 | this.var_372 >>> 32 - 7 % 32);
         param1.writeInt(this.name_15 << 11 % 32 | this.name_15 >>> 32 - 11 % 32);
         param1.writeByte(this.var_829.length);
         for each(_loc3_ in this.var_829)
         {
            _loc3_.method_14(param1);
         }
         param1.writeShort(this.name_29);
      }
   }
}
