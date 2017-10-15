package package_166
{
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.TweenLite;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flashx.textLayout.formats.TextAlign;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_114.class_551;
   import package_121.class_841;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_96;
   import package_17.class_304;
   import package_170.class_979;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_22;
   import package_88.class_967;
   import package_89.class_1138;
   import package_89.class_1378;
   import package_90.class_316;
   import spark.components.Group;
   
   public final class class_970 extends Sprite
   {
       
      
      private var name_79:TextField;
      
      private var var_2392:Sprite;
      
      public var var_22:int;
      
      public function class_970()
      {
         super();
         y = -90;
         this.name_79 = createText("",32,16777215);
         this.name_79.x = 50;
         this.name_79.autoSize = TextFieldAutoSize.LEFT;
         this.name_79.defaultTextFormat.align = TextAlign.LEFT;
         this.name_79.y = -class_967.const_37 - 2;
         addChild(this.name_79);
         this.var_2392 = addChild(new Sprite()) as Sprite;
      }
      
      public function set name_8(param1:class_551) : void
      {
         this.var_22 = param1.var_22;
         this.name_79.text = "" + param1.var_10;
         this.name_79.scaleY = 1.2;
         this.name_79.scaleX = 1.2;
         TweenLite.to(this.name_79,0.2,{
            "scaleY":1,
            "scaleX":1
         });
         var _loc2_:Bitmap = class_967.method_806(param1.var_22);
         _loc2_.y = -class_967.const_37;
         this.var_2392.addChild(_loc2_);
      }
   }
}
