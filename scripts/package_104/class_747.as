package package_104
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuCrewTabVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import package_111.class_1176;
   import package_111.class_790;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_16.class_28;
   import package_184.class_1583;
   import package_185.class_1136;
   import package_23.class_42;
   import package_31.handleXMLLoaded;
   import package_31.loader;
   import package_31.request;
   import package_34.class_1526;
   import package_41.class_89;
   import package_42.class_949;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1356;
   import package_47.class_129;
   import package_47.class_136;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_984;
   import package_8.class_1315;
   import package_89.class_1011;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.RichEditableText;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_747 extends class_640
   {
      
      public static const name_3:class_747 = new class_747();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public var name_5:int = 0;
      
      public function class_747(param1:int = 0, param2:String = "")
      {
         super();
         this.name_13 = param2;
         this.name_5 = param1;
      }
      
      override public function method_16() : int
      {
         return -864;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_13 = param1.readUTF();
         this.name_5 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-864);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         super.method_14(param1);
         param1.writeUTF(this.name_13);
         param1.writeShort(this.name_5);
      }
   }
}
