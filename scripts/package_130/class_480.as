package package_130
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_118.class_725;
   import package_14.class_1003;
   import package_16.class_28;
   import package_190.class_1181;
   import package_41.class_93;
   import package_47.class_662;
   import package_47.class_757;
   import package_47.class_834;
   import package_54.class_162;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   public final class class_480 implements class_14
   {
      
      public static const name_3:class_480 = new class_480();
       
      
      private var var_646:int = 0;
      
      public var name_6:int = 0;
      
      public var name_10:int = 0;
      
      public var name_60:int = 0;
      
      public var var_1547:Boolean = false;
      
      public function class_480(param1:int = 0, param2:Boolean = false, param3:int = 0, param4:int = 0)
      {
         super();
         this.name_6 = param3;
         this.name_10 = param4;
         this.name_60 = param1;
         this.var_1547 = param2;
      }
      
      public function method_16() : int
      {
         return 30916;
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
         return 3;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_6 = param1.readByte();
         this.name_6 = 255 & ((255 & this.name_6) << 6 % 8 | (255 & this.name_6) >>> 8 - 6 % 8);
         this.name_6 = this.name_6 > 127?int(this.name_6 - 256):int(this.name_6);
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 1 % 8 | (255 & this.name_10) >>> 8 - 1 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
         this.name_60 = param1.readShort();
         this.var_1547 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(30916);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeByte(255 & ((255 & this.name_6) >>> 6 % 8 | (255 & this.name_6) << 8 - 6 % 8));
         param1.writeByte(255 & ((255 & this.name_10) >>> 1 % 8 | (255 & this.name_10) << 8 - 1 % 8));
         param1.writeShort(this.name_60);
         param1.writeBoolean(this.var_1547);
      }
   }
}
