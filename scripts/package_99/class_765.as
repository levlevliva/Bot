package package_99
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildCurrencyVo;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_121.class_841;
   import package_14.class_1377;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_32.class_64;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_89;
   import package_49.class_140;
   import package_5.class_1054;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_57.class_171;
   import package_90.class_811;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_765 extends class_764
   {
      
      public static const name_3:class_765 = new class_765();
       
      
      private var var_646:int = 0;
      
      public var var_65:int = 0;
      
      public function class_765(param1:int = 0)
      {
         super();
         this.var_65 = param1;
      }
      
      override public function method_16() : int
      {
         return 5833;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_65 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5833);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_65);
      }
   }
}
