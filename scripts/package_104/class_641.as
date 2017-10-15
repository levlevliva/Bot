package package_104
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.popups.common.texteditor.RichTextEditor;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_101.class_472;
   import package_128.class_716;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_16.class_28;
   import package_34.class_115;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_315;
   import package_41.class_84;
   import package_46.class_975;
   import package_47.class_657;
   import package_5.class_123;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_90.class_316;
   import package_92.class_1278;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public class class_641 extends class_315
   {
      
      public static const name_3:class_641 = new class_641();
       
      
      private var var_646:int = 0;
      
      public var var_10:Number = 0;
      
      public function class_641(param1:Number = 0)
      {
         super();
         this.var_10 = param1;
      }
      
      override public function method_16() : int
      {
         return 29896;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_10 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(29896);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_10);
      }
   }
}
