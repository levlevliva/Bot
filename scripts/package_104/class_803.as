package package_104
{
   import com.bigpoint.seafight.model.vo.class_1452;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBoxButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxButtonSkin;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_110.class_610;
   import package_111.class_696;
   import package_127.class_870;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_151.class_905;
   import package_171.class_1275;
   import package_183.class_1454;
   import package_184.class_1135;
   import package_27.class_53;
   import package_32.class_64;
   import package_34.class_107;
   import package_41.class_84;
   import package_46.class_1224;
   import package_46.class_1493;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_43;
   import package_53.class_1100;
   import package_54.class_163;
   import package_6.class_14;
   import package_65.class_1046;
   import package_89.class_299;
   import package_9.class_404;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   
   public final class class_803 implements class_14
   {
      
      public static const name_3:class_803 = new class_803();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_803(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 7080;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7080);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
