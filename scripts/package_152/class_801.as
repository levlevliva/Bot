package package_152
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuFoundTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuFoundTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuFoundTabVo;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_5.class_1239;
   import package_51.class_1355;
   import package_6.class_14;
   import package_8.class_1240;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_801 implements class_14
   {
      
      public static const name_3:class_801 = new class_801();
       
      
      private var var_646:int = 0;
      
      public var var_1573:String = "";
      
      public var var_952:String = "";
      
      public function class_801(param1:String = "", param2:String = "")
      {
         super();
         this.var_1573 = param1;
         this.var_952 = param2;
      }
      
      public function method_16() : int
      {
         return 23358;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1573 = param1.readUTF();
         this.var_952 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(23358);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeUTF(this.var_1573);
         param1.writeUTF(this.var_952);
      }
   }
}
