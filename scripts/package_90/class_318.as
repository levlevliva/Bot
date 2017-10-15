package package_90
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.states.State;
   import package_14.class_47;
   import package_14.class_51;
   import package_170.class_979;
   import package_32.class_338;
   import package_32.class_64;
   import package_39.class_973;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_880;
   import package_5.class_123;
   import package_51.class_148;
   import package_54.class_319;
   import package_55.class_1009;
   import package_6.class_14;
   
   public final class class_318 implements class_14
   {
      
      public static const name_3:class_318 = new class_318();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_318(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -17786;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_5 = 65535 & ((65535 & this.name_5) >>> 14 % 16 | (65535 & this.name_5) << 16 - 14 % 16);
         this.name_5 = this.name_5 > 32767?int(this.name_5 - 65536):int(this.name_5);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-17786);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_5) << 14 % 16 | (65535 & this.name_5) >>> 16 - 14 % 16));
      }
   }
}
