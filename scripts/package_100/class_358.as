package package_100
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.deathpopup.component.KillerName;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import package_111.class_425;
   import package_111.class_466;
   import package_111.class_796;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_16.class_28;
   import package_179.class_1064;
   import package_29.class_166;
   import package_41.class_84;
   import package_43.class_272;
   import package_5.class_43;
   import package_6.class_14;
   import package_67.class_1051;
   import package_7.class_55;
   import package_89.class_1346;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   
   public final class class_358 implements class_14
   {
      
      public static const name_3:class_358 = new class_358();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_358(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return 28781;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 7 % 32 | this.name_15 << 32 - 7 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(28781);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeInt(this.name_15 << 7 % 32 | this.name_15 >>> 32 - 7 % 32);
      }
   }
}
