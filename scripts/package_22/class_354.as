package package_22
{
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindowFoundTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindowRelationsTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindowSearchTab;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CollectionEventKind;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_14.class_47;
   import package_174.class_1375;
   import package_36.class_1417;
   import package_41.class_93;
   import package_42.class_1034;
   import package_6.class_14;
   import package_95.class_341;
   import package_97.class_409;
   import package_98.class_777;
   import spark.filters.GlowFilter;
   import spark.layouts.HorizontalLayout;
   
   public final class class_354 implements class_14
   {
      
      public static const name_3:class_354 = new class_354();
       
      
      private var var_646:int = 0;
      
      public var var_871:Vector.<int>;
      
      public function class_354(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_871 = new Vector.<int>();
         }
         else
         {
            this.var_871 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 28971;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_871.length > 0)
         {
            this.var_871.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_871.push(param1.readShort());
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(28971);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeByte(this.var_871.length);
         for each(_loc2_ in this.var_871)
         {
            param1.writeShort(_loc2_);
         }
      }
   }
}
