package package_97
{
   import com.bigpoint.seafight.display.utils.GrayscaleFilters;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeaderLeft;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_440;
   import package_10.class_18;
   import package_10.class_38;
   import package_104.class_989;
   import package_11.class_130;
   import package_123.class_837;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_17.class_54;
   import package_17.class_990;
   import package_174.class_1592;
   import package_185.class_1136;
   import package_26.class_52;
   import package_3.class_26;
   import package_34.class_1000;
   import package_34.class_107;
   import package_34.class_1272;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_47.class_757;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_43;
   import package_50.class_141;
   import package_54.class_158;
   import package_54.class_319;
   import package_6.class_14;
   import package_9.class_120;
   import package_9.class_76;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.components.VScrollBar;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public final class class_752 implements class_14
   {
      
      public static const name_3:class_752 = new class_752();
       
      
      private var var_646:int = 0;
      
      public var var_137:String = "";
      
      public var var_564:Number = 0;
      
      public var var_56:class_914;
      
      public var name_24:int = 0;
      
      public var var_755:Boolean = false;
      
      public function class_752(param1:Number = 0, param2:int = 0, param3:class_914 = null, param4:String = "", param5:Boolean = false)
      {
         super();
         this.var_137 = param4;
         this.var_564 = param1;
         if(param3 == null)
         {
            this.var_56 = new class_914();
         }
         else
         {
            this.var_56 = param3;
         }
         this.name_24 = param2;
         this.var_755 = param5;
      }
      
      public function method_16() : int
      {
         return -27149;
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
         return 15;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_137 = param1.readUTF();
         this.var_564 = param1.readDouble();
         this.var_56 = class_914(class_93.method_26().method_25(param1.readShort()));
         this.var_56.method_15(param1);
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 << 3 % 32 | this.name_24 >>> 32 - 3 % 32;
         this.var_755 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27149);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeUTF(this.var_137);
         param1.writeDouble(this.var_564);
         this.var_56.method_14(param1);
         param1.writeInt(this.name_24 >>> 3 % 32 | this.name_24 << 32 - 3 % 32);
         param1.writeBoolean(this.var_755);
      }
   }
}
