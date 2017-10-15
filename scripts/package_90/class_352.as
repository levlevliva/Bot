package package_90
{
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TimelineMax;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_105.class_369;
   import package_105.class_529;
   import package_17.class_54;
   import package_18.class_392;
   import package_23.class_42;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_975;
   import package_54.class_158;
   import package_6.class_14;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public final class class_352 implements class_14
   {
      
      public static const name_3:class_352 = new class_352();
       
      
      private var var_646:int = 0;
      
      public var var_802:Vector.<class_316>;
      
      public function class_352(param1:Vector.<class_316> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_802 = new Vector.<class_316>();
         }
         else
         {
            this.var_802 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 18062;
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
         var _loc4_:class_316 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_802.length > 0)
         {
            this.var_802.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_316(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_802.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_316 = null;
         param1.writeShort(18062);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeByte(this.var_802.length);
         for each(_loc2_ in this.var_802)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
