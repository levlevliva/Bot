package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatItem;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_121.class_841;
   import package_190.class_1181;
   import package_210.class_1364;
   import package_23.class_42;
   import package_5.class_43;
   import package_5.class_984;
   import package_6.class_14;
   import spark.components.DataGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_646 extends class_602
   {
      
      public static const name_3:class_646 = new class_646();
       
      
      private var var_646:int = 0;
      
      public var var_252:int = 0;
      
      public function class_646(param1:int = 0)
      {
         super();
         this.var_252 = param1;
      }
      
      override public function method_16() : int
      {
         return -18915;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_252 = param1.readInt();
         this.var_252 = this.var_252 << 10 % 32 | this.var_252 >>> 32 - 10 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-18915);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         super.method_14(param1);
         param1.writeInt(this.var_252 >>> 10 % 32 | this.var_252 << 32 - 10 % 32);
      }
   }
}
