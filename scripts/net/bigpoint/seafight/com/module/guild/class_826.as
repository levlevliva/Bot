package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import package_15.class_273;
   import package_170.class_979;
   import package_6.class_14;
   
   public final class class_826 implements class_14
   {
      
      public static const name_3:class_826 = new class_826();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var name_5:int = 0;
      
      public function class_826(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_7 = param1;
         this.name_5 = param2;
      }
      
      public function method_16() : int
      {
         return -11916;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 >>> 15 % 32 | this.name_7 << 32 - 15 % 32;
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-11916);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeInt(this.name_7 << 15 % 32 | this.name_7 >>> 32 - 15 % 32);
         param1.writeShort(this.name_5);
      }
   }
}
