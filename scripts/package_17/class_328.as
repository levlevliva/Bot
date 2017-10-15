package package_17
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.greensock.events.TweenEvent;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.bitmapclip.initCollections;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_127.class_870;
   import package_14.class_286;
   import package_14.class_47;
   import package_159.class_718;
   import package_16.class_28;
   import package_166.class_1502;
   import package_177.class_1049;
   import package_203.class_1242;
   import package_203.class_1243;
   import package_28.class_56;
   import package_29.class_166;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_43;
   import package_50.class_141;
   import package_52.class_168;
   import package_54.class_163;
   import package_92.class_1278;
   import package_92.class_944;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_328
   {
      
      private static var name_55:class_328;
       
      
      private var var_1492:class_1243;
      
      private var var_1859:class_1242;
      
      public var var_1449:Boolean;
      
      public function class_328(param1:Function)
      {
         this.var_1492 = new class_1243();
         this.var_1859 = new class_1242();
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
         CentralEventUnit.addEventListener(class_56.const_51,this.method_1311);
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_328
      {
         if(name_55 == null)
         {
            name_55 = new class_328(method_976);
         }
         return name_55;
      }
      
      private final function method_1311(param1:class_56) : void
      {
         this.method_571();
      }
      
      public final function method_419(param1:Boolean = true) : void
      {
         this.method_571();
         this.var_1492.method_419(param1);
         this.var_1449 = true;
      }
      
      public final function method_874() : void
      {
         this.var_1492.method_874();
      }
      
      public final function method_892() : void
      {
         this.var_1859.method_892(50 + Math.random() * 100);
      }
      
      public final function method_571() : void
      {
         this.var_1492.method_2574();
         this.var_1859.method_1631();
         this.var_1449 = false;
      }
   }
}
