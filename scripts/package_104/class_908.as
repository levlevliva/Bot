package package_104
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_817;
   import net.bigpoint.seafight.com.module.guild.class_858;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_51;
   import package_140.class_546;
   import package_143.class_1056;
   import package_143.class_706;
   import package_143.class_902;
   import package_152.class_801;
   import package_16.class_28;
   import package_17.class_1123;
   import package_17.class_1124;
   import package_17.class_1125;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_220.class_1601;
   import package_26.class_52;
   import package_41.class_89;
   import package_41.class_93;
   import package_47.class_881;
   import package_49.class_880;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_7.class_1039;
   import package_72.class_203;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Line;
   
   public final class class_908 implements class_14
   {
      
      public static const name_3:class_908 = new class_908();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_640>;
      
      public var name_5:int = 0;
      
      public function class_908(param1:int = 0, param2:Vector.<class_640> = null)
      {
         super();
         if(param2 == null)
         {
            this.name_9 = new Vector.<class_640>();
         }
         else
         {
            this.name_9 = param2;
         }
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 32404;
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
         var _loc4_:class_640 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_640(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_640 = null;
         param1.writeShort(32404);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.name_5);
      }
   }
}
