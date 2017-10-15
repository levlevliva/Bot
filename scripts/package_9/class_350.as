package package_9
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPieceItemRenderer;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_170.class_979;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_350 implements class_14
   {
      
      public static const name_3:class_350 = new class_350();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var var_883:Vector.<class_899>;
      
      public var var_744:int = 0;
      
      public function class_350(param1:int = 0, param2:int = 0, param3:Vector.<class_899> = null)
      {
         super();
         this.name_11 = param1;
         if(param3 == null)
         {
            this.var_883 = new Vector.<class_899>();
         }
         else
         {
            this.var_883 = param3;
         }
         this.var_744 = param2;
      }
      
      public function method_16() : int
      {
         return -29825;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_899 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 13 % 16 | (65535 & this.name_11) >>> 16 - 13 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_883.length > 0)
         {
            this.var_883.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_899(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_883.push(_loc4_);
            _loc2_++;
         }
         this.var_744 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_899 = null;
         param1.writeShort(-29825);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 13 % 16 | (65535 & this.name_11) << 16 - 13 % 16));
         param1.writeByte(this.var_883.length);
         for each(_loc2_ in this.var_883)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_744);
      }
   }
}
