package package_152
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bit101.components.ScrollPane;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_88;
   import package_29.class_57;
   import package_41.class_93;
   import package_5.class_214;
   import package_51.class_148;
   import package_54.class_1006;
   import package_88.class_290;
   import package_92.class_336;
   import package_92.class_944;
   
   public final class class_937 extends class_611
   {
      
      public static const name_3:class_937 = new class_937();
       
      
      private var var_646:int = 0;
      
      public var var_302:String = "";
      
      public var var_612:Vector.<class_801>;
      
      public function class_937(param1:String = "", param2:Vector.<class_801> = null)
      {
         super();
         this.var_302 = param1;
         if(param2 == null)
         {
            this.var_612 = new Vector.<class_801>();
         }
         else
         {
            this.var_612 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 25728;
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
         var _loc4_:class_801 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_302 = param1.readUTF();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_612.length > 0)
         {
            this.var_612.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_801(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_612.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_801 = null;
         param1.writeShort(25728);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_302);
         param1.writeByte(this.var_612.length);
         for each(_loc2_ in this.var_612)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
