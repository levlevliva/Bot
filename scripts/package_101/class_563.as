package package_101
{
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_107.class_693;
   import package_14.class_47;
   import package_29.class_57;
   import package_5.class_214;
   import package_6.class_14;
   import package_88.class_290;
   import spark.components.VGroup;
   
   public final class class_563 implements class_14
   {
      
      public static const name_3:class_563 = new class_563();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_33:int = 0;
      
      public function class_563(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_20 = param1;
         this.var_33 = param2;
      }
      
      public function method_16() : int
      {
         return -13749;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 << 5 % 32 | this.var_33 >>> 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13749);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeDouble(this.var_20);
         param1.writeInt(this.var_33 >>> 5 % 32 | this.var_33 << 32 - 5 % 32);
      }
   }
}
