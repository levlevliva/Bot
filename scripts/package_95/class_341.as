package package_95
{
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.popups.event.skins.target;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupPieceVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_152.class_937;
   import package_154.class_632;
   import package_18.class_571;
   import package_186.class_1465;
   import package_29.class_57;
   import package_34.class_1576;
   import package_34.class_73;
   import package_41.class_93;
   import package_5.class_1012;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public class class_341 implements class_14
   {
      
      public static const name_3:class_341 = new class_341();
       
      
      private var var_646:int = 0;
      
      public var var_86:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_189:class_571;
      
      public function class_341(param1:Number = 0, param2:int = 0, param3:class_571 = null)
      {
         super();
         this.var_86 = param2;
         this.var_20 = param1;
         if(param3 == null)
         {
            this.var_189 = new class_571();
         }
         else
         {
            this.var_189 = param3;
         }
      }
      
      public function method_16() : int
      {
         return 7338;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_86 = param1.readShort();
         this.var_20 = param1.readDouble();
         this.var_189 = class_571(class_93.method_26().method_25(param1.readShort()));
         this.var_189.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7338);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(this.var_86);
         param1.writeDouble(this.var_20);
         this.var_189.method_14(param1);
      }
   }
}
