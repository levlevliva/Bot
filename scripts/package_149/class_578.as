package package_149
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModule;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_94;
   import package_14.class_96;
   import package_154.class_658;
   import package_190.class_1181;
   import package_214.class_1559;
   import package_41.class_315;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_22;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public class class_578 extends class_315
   {
      
      public static const name_3:class_578 = new class_578();
       
      
      private var var_646:int = 0;
      
      public var var_271:class_658;
      
      public var var_218:int = 0;
      
      public var var_422:Boolean = false;
      
      public var var_208:int = 0;
      
      public var var_93:Vector.<class_830>;
      
      public var var_62:Vector.<class_841>;
      
      public var var_393:Boolean = false;
      
      public var var_435:Boolean = false;
      
      public var var_273:int = 0;
      
      public var var_278:Vector.<int>;
      
      public var var_215:int = 0;
      
      public var var_274:int = 0;
      
      public function class_578(param1:Vector.<class_841> = null, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:int = 0, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Vector.<class_830> = null, param11:class_658 = null, param12:Vector.<int> = null)
      {
         super();
         if(param11 == null)
         {
            this.var_271 = new class_658();
         }
         else
         {
            this.var_271 = param11;
         }
         this.var_218 = param5;
         this.var_422 = param9;
         this.var_208 = param4;
         if(param10 == null)
         {
            this.var_93 = new Vector.<class_830>();
         }
         else
         {
            this.var_93 = param10;
         }
         if(param1 == null)
         {
            this.var_62 = new Vector.<class_841>();
         }
         else
         {
            this.var_62 = param1;
         }
         this.var_393 = param7;
         this.var_435 = param8;
         this.var_273 = param2;
         if(param12 == null)
         {
            this.var_278 = new Vector.<int>();
         }
         else
         {
            this.var_278 = param12;
         }
         this.var_215 = param6;
         this.var_274 = param3;
      }
      
      override public function method_16() : int
      {
         return -11276;
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
         return 29;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_830 = null;
         var _loc5_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_271 = class_658(class_93.method_26().method_25(param1.readShort()));
         this.var_271.method_15(param1);
         this.var_218 = param1.readShort();
         this.var_218 = 65535 & ((65535 & this.var_218) >>> 6 % 16 | (65535 & this.var_218) << 16 - 6 % 16);
         this.var_218 = this.var_218 > 32767?int(this.var_218 - 65536):int(this.var_218);
         this.var_422 = param1.readBoolean();
         this.var_208 = param1.readShort();
         this.var_208 = 65535 & ((65535 & this.var_208) >>> 1 % 16 | (65535 & this.var_208) << 16 - 1 % 16);
         this.var_208 = this.var_208 > 32767?int(this.var_208 - 65536):int(this.var_208);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_93.length > 0)
         {
            this.var_93.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_830(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_93.push(_loc4_);
            _loc2_++;
         }
         while(this.var_62.length > 0)
         {
            this.var_62.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_62.push(_loc5_);
            _loc2_++;
         }
         this.var_393 = param1.readBoolean();
         this.var_435 = param1.readBoolean();
         this.var_273 = param1.readInt();
         this.var_273 = this.var_273 >>> 4 % 32 | this.var_273 << 32 - 4 % 32;
         while(this.var_278.length > 0)
         {
            this.var_278.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_278.push(param1.readShort());
            _loc2_++;
         }
         this.var_215 = param1.readShort();
         this.var_215 = 65535 & ((65535 & this.var_215) << 7 % 16 | (65535 & this.var_215) >>> 16 - 7 % 16);
         this.var_215 = this.var_215 > 32767?int(this.var_215 - 65536):int(this.var_215);
         this.var_274 = param1.readInt();
         this.var_274 = this.var_274 << 10 % 32 | this.var_274 >>> 32 - 10 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_830 = null;
         var _loc3_:class_841 = null;
         var _loc4_:int = 0;
         param1.writeShort(-11276);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         super.method_14(param1);
         this.var_271.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_218) << 6 % 16 | (65535 & this.var_218) >>> 16 - 6 % 16));
         param1.writeBoolean(this.var_422);
         param1.writeShort(65535 & ((65535 & this.var_208) << 1 % 16 | (65535 & this.var_208) >>> 16 - 1 % 16));
         param1.writeByte(this.var_93.length);
         for each(_loc2_ in this.var_93)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_62.length);
         for each(_loc3_ in this.var_62)
         {
            _loc3_.method_14(param1);
         }
         param1.writeBoolean(this.var_393);
         param1.writeBoolean(this.var_435);
         param1.writeInt(this.var_273 << 4 % 32 | this.var_273 >>> 32 - 4 % 32);
         param1.writeByte(this.var_278.length);
         for each(_loc4_ in this.var_278)
         {
            param1.writeShort(_loc4_);
         }
         param1.writeShort(65535 & ((65535 & this.var_215) >>> 7 % 16 | (65535 & this.var_215) << 16 - 7 % 16));
         param1.writeInt(this.var_274 >>> 10 % 32 | this.var_274 << 32 - 10 % 32);
      }
   }
}
