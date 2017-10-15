package package_162
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.SaveInvalidReason;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IFlexDisplayObject;
   import mx.core.IUIComponent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_101.class_566;
   import package_103.class_1029;
   import package_104.class_641;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_88;
   import package_148.class_679;
   import package_148.class_778;
   import package_16.class_28;
   import package_177.class_1049;
   import package_216.class_1575;
   import package_23.class_42;
   import package_25.class_295;
   import package_41.class_89;
   import package_47.class_935;
   import package_5.class_139;
   import package_5.class_939;
   import package_50.class_141;
   import package_54.class_319;
   import package_6.class_14;
   import package_9.class_17;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   
   public final class class_835 implements class_14
   {
      
      public static const name_3:class_835 = new class_835();
       
      
      private var var_646:int = 0;
      
      public var var_951:int = 0;
      
      public var var_986:int = 0;
      
      public var var_950:int = 0;
      
      public function class_835(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_951 = param1;
         this.var_986 = param2;
         this.var_950 = param3;
      }
      
      public function method_16() : int
      {
         return -20700;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_951 = param1.readInt();
         this.var_951 = this.var_951 << 2 % 32 | this.var_951 >>> 32 - 2 % 32;
         this.var_986 = param1.readInt();
         this.var_986 = this.var_986 << 15 % 32 | this.var_986 >>> 32 - 15 % 32;
         this.var_950 = param1.readInt();
         this.var_950 = this.var_950 << 11 % 32 | this.var_950 >>> 32 - 11 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-20700);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeInt(this.var_951 >>> 2 % 32 | this.var_951 << 32 - 2 % 32);
         param1.writeInt(this.var_986 >>> 15 % 32 | this.var_986 << 32 - 15 % 32);
         param1.writeInt(this.var_950 >>> 11 % 32 | this.var_950 << 32 - 11 % 32);
      }
   }
}
