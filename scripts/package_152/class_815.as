package package_152
{
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_29.class_57;
   import package_84.class_270;
   import package_9.class_761;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_815 extends class_611
   {
      
      public static const name_3:class_815 = new class_815();
       
      
      private var var_646:int = 0;
      
      public var var_2051:String = "";
      
      public var var_946:Vector.<String>;
      
      public function class_815(param1:String = "", param2:Vector.<String> = null)
      {
         super();
         this.var_2051 = param1;
         if(param2 == null)
         {
            this.var_946 = new Vector.<String>();
         }
         else
         {
            this.var_946 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 10167;
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
         return 6;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_2051 = param1.readUTF();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_946.length > 0)
         {
            this.var_946.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_946.push(param1.readUTF());
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:String = null;
         param1.writeShort(10167);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_2051);
         param1.writeByte(this.var_946.length);
         for each(_loc2_ in this.var_946)
         {
            param1.writeUTF(_loc2_);
         }
      }
   }
}
