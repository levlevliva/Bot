package package_136
{
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenu;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_14.class_51;
   import package_41.class_93;
   import package_5.class_214;
   import package_6.class_14;
   
   public final class class_509 implements class_14
   {
      
      public static const name_3:class_509 = new class_509();
       
      
      private var var_646:int = 0;
      
      public var var_1110:class_926;
      
      public function class_509(param1:class_926 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_1110 = new class_926();
         }
         else
         {
            this.var_1110 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -7770;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1110 = class_926(class_93.method_26().method_25(param1.readShort()));
         this.var_1110.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7770);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         this.var_1110.method_14(param1);
      }
   }
}
