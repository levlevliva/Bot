package package_9
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_118.class_1445;
   import package_14.class_47;
   import package_152.class_924;
   import package_17.class_326;
   import package_213.class_1522;
   import package_5.class_123;
   import package_6.class_14;
   import spark.components.ToggleButton;
   
   public final class class_844 implements class_14
   {
      
      public static const name_3:class_844 = new class_844();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public function class_844(param1:int = 0)
      {
         super();
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return 10204;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) >>> 8 % 16 | (65535 & this.name_11) << 16 - 8 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10204);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) << 8 % 16 | (65535 & this.name_11) >>> 16 - 8 % 16));
      }
   }
}
