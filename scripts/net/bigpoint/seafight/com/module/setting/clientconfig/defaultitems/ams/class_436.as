package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.guildmenu.common.CurrencyListComponent;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_41.class_93;
   import package_54.class_160;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_436 implements class_14
   {
      
      public static const name_3:class_436 = new class_436();
       
      
      private var var_646:int = 0;
      
      public var var_889:Vector.<class_590>;
      
      public function class_436(param1:Vector.<class_590> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_889 = new Vector.<class_590>();
         }
         else
         {
            this.var_889 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -14174;
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
         var _loc4_:class_590 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_889.length > 0)
         {
            this.var_889.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_590(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_889.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_590 = null;
         param1.writeShort(-14174);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeByte(this.var_889.length);
         for each(_loc2_ in this.var_889)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
