package package_22
{
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_104.class_989;
   import package_111.class_696;
   import package_111.class_726;
   import package_130.class_1143;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_94;
   import package_17.class_54;
   import package_17.class_990;
   import package_171.class_1275;
   import package_26.class_52;
   import package_3.class_26;
   import package_34.class_107;
   import package_34.class_1272;
   import package_34.class_1526;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_148;
   import package_54.class_319;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_16;
   import package_9.class_120;
   import package_9.class_76;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   
   public final class class_705 implements class_14
   {
      
      public static const name_3:class_705 = new class_705();
       
      
      private var var_646:int = 0;
      
      public function class_705()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 15011;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15011);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
      }
   }
}
