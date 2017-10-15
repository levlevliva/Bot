package package_160
{
   import com.bigpoint.seafight.view.common.skins.target;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.EquipSlotAmountDragDropInterface;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_124.class_673;
   import package_30.class_62;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.RichText;
   import spark.components.Scroller;
   
   use namespace mx_internal;
   
   public final class class_795 implements class_14
   {
      
      public static const name_3:class_795 = new class_795();
       
      
      private var var_646:int = 0;
      
      public var var_974:class_84;
      
      public var var_1423:String = "";
      
      public var name_45:String = "";
      
      public var var_1189:int = 0;
      
      public function class_795(param1:class_84 = null, param2:String = "", param3:String = "", param4:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_974 = new class_84();
         }
         else
         {
            this.var_974 = param1;
         }
         this.var_1423 = param2;
         this.name_45 = param3;
         this.var_1189 = param4;
      }
      
      public function method_16() : int
      {
         return -10570;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_974 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_974.method_15(param1);
         this.var_1423 = param1.readUTF();
         this.name_45 = param1.readUTF();
         this.var_1189 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-10570);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         this.var_974.method_14(param1);
         param1.writeUTF(this.var_1423);
         param1.writeUTF(this.name_45);
         param1.writeShort(this.var_1189);
      }
   }
}
