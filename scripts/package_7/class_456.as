package package_7
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationPopup;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_34.class_1526;
   import package_41.class_84;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.Rect;
   
   public final class class_456 implements class_14
   {
      
      public static const name_3:class_456 = new class_456();
       
      
      private var var_646:int = 0;
      
      public var var_858:Vector.<int>;
      
      public function class_456(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_858 = new Vector.<int>();
         }
         else
         {
            this.var_858 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -27766;
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
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_858.length > 0)
         {
            this.var_858.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readShort());
            _loc4_ = 65535 & ((65535 & _loc4_) << 3 % 16 | (65535 & _loc4_) >>> 16 - 3 % 16);
            _loc4_ = int(_loc4_ > 32767?int(_loc4_ - 65536):int(_loc4_));
            this.var_858.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(-27766);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeByte(this.var_858.length);
         for each(_loc2_ in this.var_858)
         {
            param1.writeShort(65535 & ((65535 & _loc2_) >>> 3 % 16 | (65535 & _loc2_) << 16 - 3 % 16));
         }
      }
   }
}
