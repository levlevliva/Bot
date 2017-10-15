package package_49
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.event.EventType;
   import package_118.class_539;
   import package_14.class_47;
   import package_152.class_934;
   import package_18.class_620;
   import package_20.class_33;
   import package_41.class_93;
   import package_5.class_214;
   import package_5.class_984;
   import package_6.class_14;
   
   public final class class_880 implements class_14
   {
      
      public static const name_3:class_880 = new class_880();
       
      
      private var var_646:int = 0;
      
      public var var_194:Vector.<class_137>;
      
      public var var_659:Vector.<class_137>;
      
      public function class_880(param1:Vector.<class_137> = null, param2:Vector.<class_137> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_194 = new Vector.<class_137>();
         }
         else
         {
            this.var_194 = param1;
         }
         if(param2 == null)
         {
            this.var_659 = new Vector.<class_137>();
         }
         else
         {
            this.var_659 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -5128;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_137 = null;
         var _loc5_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_194.length > 0)
         {
            this.var_194.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_194.push(_loc4_);
            _loc2_++;
         }
         while(this.var_659.length > 0)
         {
            this.var_659.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_659.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_137 = null;
         var _loc3_:class_137 = null;
         param1.writeShort(-5128);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeByte(this.var_194.length);
         for each(_loc2_ in this.var_194)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_659.length);
         for each(_loc3_ in this.var_659)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
