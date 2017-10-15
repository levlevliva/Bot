package package_47
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_104.class_641;
   import package_190.*;
   import package_41.class_93;
   import package_55.class_1008;
   import package_6.class_14;
   import package_65.class_1046;
   import spark.components.Group;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.Line;
   
   public final class class_834 implements class_14
   {
      
      public static const name_3:class_834 = new class_834();
       
      
      private var var_646:int = 0;
      
      public var var_90:Vector.<class_129>;
      
      public var var_38:int = 0;
      
      public var var_325:Boolean = false;
      
      public var var_230:int = 0;
      
      public function class_834(param1:int = 0, param2:Boolean = false, param3:int = 0, param4:Vector.<class_129> = null)
      {
         super();
         if(param4 == null)
         {
            this.var_90 = new Vector.<class_129>();
         }
         else
         {
            this.var_90 = param4;
         }
         this.var_38 = param1;
         this.var_325 = param2;
         this.var_230 = param3;
      }
      
      public function method_16() : int
      {
         return -9512;
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
         return 11;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_129 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_90.length > 0)
         {
            this.var_90.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_129(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_90.push(_loc4_);
            _loc2_++;
         }
         this.var_38 = param1.readShort();
         this.var_38 = 65535 & ((65535 & this.var_38) << 12 % 16 | (65535 & this.var_38) >>> 16 - 12 % 16);
         this.var_38 = this.var_38 > 32767?int(this.var_38 - 65536):int(this.var_38);
         this.var_325 = param1.readBoolean();
         this.var_230 = param1.readInt();
         this.var_230 = this.var_230 << 12 % 32 | this.var_230 >>> 32 - 12 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_129 = null;
         param1.writeShort(-9512);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeByte(this.var_90.length);
         for each(_loc2_ in this.var_90)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.var_38) >>> 12 % 16 | (65535 & this.var_38) << 16 - 12 % 16));
         param1.writeBoolean(this.var_325);
         param1.writeInt(this.var_230 >>> 12 % 32 | this.var_230 << 32 - 12 % 32);
      }
   }
}
