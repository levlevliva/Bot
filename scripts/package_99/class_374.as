package package_99
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import package_130.class_1143;
   import package_14.class_51;
   import package_216.class_1575;
   import package_41.class_84;
   import package_41.class_93;
   import package_91.class_734;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_374 extends class_341
   {
      
      public static const name_3:class_374 = new class_374();
       
      
      private var var_646:int = 0;
      
      public var name_44:Vector.<class_823>;
      
      public function class_374(param1:Vector.<class_823> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_44 = new Vector.<class_823>();
         }
         else
         {
            this.name_44 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 13649;
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
         var _loc4_:class_823 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_44.length > 0)
         {
            this.name_44.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_823(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_44.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_823 = null;
         param1.writeShort(13649);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         super.method_14(param1);
         param1.writeByte(this.name_44.length);
         for each(_loc2_ in this.name_44)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
