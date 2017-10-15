package package_99
{
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.EffectEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_154.class_677;
   import package_170.class_979;
   import package_171.class_1275;
   import package_18.class_855;
   import package_215.class_1600;
   import package_30.class_1013;
   import package_30.class_62;
   import package_41.class_93;
   import package_5.class_1026;
   import package_69.class_978;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_343;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.primitives.Ellipse;
   
   use namespace mx_internal;
   
   public final class class_475 extends class_341
   {
      
      public static const name_3:class_475 = new class_475();
       
      
      private var var_646:int = 0;
      
      public var var_98:Vector.<class_786>;
      
      public var var_1510:Number = 0;
      
      public var var_55:int = 0;
      
      public var name_28:Boolean = false;
      
      public var var_1581:Number = 0;
      
      public function class_475(param1:Vector.<class_786> = null, param2:int = 0, param3:Number = 0, param4:Number = 0, param5:Boolean = false)
      {
         super();
         if(param1 == null)
         {
            this.var_98 = new Vector.<class_786>();
         }
         else
         {
            this.var_98 = param1;
         }
         this.var_1510 = param3;
         this.var_55 = param2;
         this.name_28 = param5;
         this.var_1581 = param4;
      }
      
      override public function method_16() : int
      {
         return -21633;
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
         return 22;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_786 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_98.length > 0)
         {
            this.var_98.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_786(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_98.push(_loc4_);
            _loc2_++;
         }
         this.var_1510 = param1.readDouble();
         this.var_55 = param1.readByte();
         this.var_55 = 255 & ((255 & this.var_55) << 16 % 8 | (255 & this.var_55) >>> 8 - 16 % 8);
         this.var_55 = this.var_55 > 127?int(this.var_55 - 256):int(this.var_55);
         this.name_28 = param1.readBoolean();
         this.var_1581 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_786 = null;
         param1.writeShort(-21633);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_98.length);
         for each(_loc2_ in this.var_98)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.var_1510);
         param1.writeByte(255 & ((255 & this.var_55) >>> 16 % 8 | (255 & this.var_55) << 8 - 16 % 8));
         param1.writeBoolean(this.name_28);
         param1.writeDouble(this.var_1581);
      }
   }
}
