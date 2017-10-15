package package_116
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.LocalConnection;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_87;
   import package_175.class_1593;
   import package_25.class_291;
   import package_29.class_565;
   import package_41.class_93;
   import package_49.class_880;
   import package_5.class_43;
   import package_95.class_341;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public final class class_405 extends class_341
   {
      
      public static const name_3:class_405 = new class_405();
       
      
      private var var_646:int = 0;
      
      public var var_111:int = 0;
      
      public var name_11:int = 0;
      
      public var var_105:int = 0;
      
      public var var_141:int = 0;
      
      public var var_220:int = 0;
      
      public var var_1678:Boolean = false;
      
      public var var_144:class_880;
      
      public function class_405(param1:int = 0, param2:int = 0, param3:int = 0, param4:class_880 = null, param5:int = 0, param6:Boolean = false, param7:int = 0)
      {
         super();
         this.var_111 = param7;
         this.name_11 = param5;
         this.var_105 = param1;
         this.var_141 = param3;
         this.var_220 = param2;
         this.var_1678 = param6;
         if(param4 == null)
         {
            this.var_144 = new class_880();
         }
         else
         {
            this.var_144 = param4;
         }
      }
      
      override public function method_16() : int
      {
         return -28513;
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
         return 17;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_111 = param1.readInt();
         this.var_111 = this.var_111 >>> 8 % 32 | this.var_111 << 32 - 8 % 32;
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 3 % 32 | this.name_11 >>> 32 - 3 % 32;
         this.var_105 = param1.readShort();
         this.var_105 = 65535 & ((65535 & this.var_105) << 12 % 16 | (65535 & this.var_105) >>> 16 - 12 % 16);
         this.var_105 = this.var_105 > 32767?int(this.var_105 - 65536):int(this.var_105);
         this.var_141 = param1.readShort();
         this.var_141 = 65535 & ((65535 & this.var_141) << 15 % 16 | (65535 & this.var_141) >>> 16 - 15 % 16);
         this.var_141 = this.var_141 > 32767?int(this.var_141 - 65536):int(this.var_141);
         this.var_220 = param1.readInt();
         this.var_220 = this.var_220 >>> 8 % 32 | this.var_220 << 32 - 8 % 32;
         this.var_1678 = param1.readBoolean();
         this.var_144 = class_880(class_93.method_26().method_25(param1.readShort()));
         this.var_144.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-28513);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         param1.writeInt(this.var_111 << 8 % 32 | this.var_111 >>> 32 - 8 % 32);
         param1.writeInt(this.name_11 >>> 3 % 32 | this.name_11 << 32 - 3 % 32);
         param1.writeShort(65535 & ((65535 & this.var_105) >>> 12 % 16 | (65535 & this.var_105) << 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.var_141) >>> 15 % 16 | (65535 & this.var_141) << 16 - 15 % 16));
         param1.writeInt(this.var_220 << 8 % 32 | this.var_220 >>> 32 - 8 % 32);
         param1.writeBoolean(this.var_1678);
         this.var_144.method_14(param1);
      }
   }
}
