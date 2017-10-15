package package_22
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_88;
   import package_167.class_1024;
   import package_41.class_84;
   import package_41.class_93;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_802 implements class_14
   {
      
      public static const name_3:class_802 = new class_802();
       
      
      private var var_646:int = 0;
      
      public var var_6:int = 0;
      
      public var var_89:int = 0;
      
      public var var_137:String = "";
      
      public var var_427:Boolean = false;
      
      public function class_802(param1:String = "", param2:int = 0, param3:int = 0, param4:Boolean = false)
      {
         super();
         this.var_6 = param3;
         this.var_89 = param2;
         this.var_137 = param1;
         this.var_427 = param4;
      }
      
      public function method_16() : int
      {
         return 1479;
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
         return 7;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_6 = param1.readInt();
         this.var_6 = this.var_6 << 11 % 32 | this.var_6 >>> 32 - 11 % 32;
         this.var_89 = param1.readShort();
         this.var_137 = param1.readUTF();
         this.var_427 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1479);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeInt(this.var_6 >>> 11 % 32 | this.var_6 << 32 - 11 % 32);
         param1.writeShort(this.var_89);
         param1.writeUTF(this.var_137);
         param1.writeBoolean(this.var_427);
      }
   }
}
