package package_7
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_11.class_130;
   import package_14.class_47;
   import package_152.class_852;
   import package_213.class_1522;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_47.class_935;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Scroller;
   import spark.components.TextInput;
   import spark.components.VScrollBar;
   import spark.components.gridClasses.GridColumn;
   import spark.events.TextOperationEvent;
   
   public final class class_55 implements class_14
   {
      
      public static const name_3:class_55 = new class_55();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_1606:String = "";
      
      public function class_55(param1:class_84 = null, param2:String = "")
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_1606 = param2;
      }
      
      public function method_16() : int
      {
         return 22261;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 12 % 16 | (65535 & this.name_4.var_6) >>> 16 - 12 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_1606 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(22261);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 12 % 16 | (65535 & this.name_4.var_6) << 16 - 12 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeUTF(this.var_1606);
      }
   }
}
