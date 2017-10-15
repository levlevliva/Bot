package package_100
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_54;
   import package_2.class_65;
   import package_205.class_1353;
   import package_208.class_1361;
   import package_23.class_42;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public class class_729 implements class_14
   {
      
      public static const name_3:class_729 = new class_729();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public var var_10:int = 0;
      
      public var var_13:Number = 0;
      
      public var var_722:int = 0;
      
      public function class_729(param1:int = 0, param2:Number = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.name_15 = param4;
         this.var_10 = param3;
         this.var_13 = param2;
         this.var_722 = param1;
      }
      
      public function method_16() : int
      {
         return 26984;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 16 % 32 | this.name_15 << 32 - 16 % 32;
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 >>> 16 % 32 | this.var_10 << 32 - 16 % 32;
         this.var_13 = param1.readDouble();
         this.var_722 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26984);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeInt(this.name_15 << 16 % 32 | this.name_15 >>> 32 - 16 % 32);
         param1.writeInt(this.var_10 << 16 % 32 | this.var_10 >>> 32 - 16 % 32);
         param1.writeDouble(this.var_13);
         param1.writeShort(this.var_722);
      }
   }
}
