package package_147
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.BoardingMenuAssistantsTab;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.AssistantsItemRenderer;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_17.class_37;
   import package_170.class_979;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_22;
   import package_51.class_148;
   import package_52.class_168;
   import package_54.class_158;
   import package_54.class_319;
   import package_6.class_14;
   import package_69.class_978;
   import package_92.class_1278;
   
   public final class class_785 implements class_14
   {
      
      public static const name_3:class_785 = new class_785();
       
      
      private var var_646:int = 0;
      
      public var name_7:class_84;
      
      public var var_1776:int = 0;
      
      public function class_785(param1:class_84 = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param1;
         }
         this.var_1776 = param2;
      }
      
      public function method_16() : int
      {
         return -22732;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
         this.var_1776 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-22732);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         this.name_7.method_14(param1);
         param1.writeShort(this.var_1776);
      }
   }
}
