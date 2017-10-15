package package_26
{
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_14.class_47;
   import package_170.class_979;
   import package_171.class_981;
   import package_183.class_1121;
   import package_210.class_1364;
   import package_36.class_100;
   import package_46.class_1224;
   import package_46.class_1501;
   import package_47.class_930;
   import package_5.class_123;
   import package_69.class_978;
   import package_8.class_1315;
   
   public final class class_222 extends Event
   {
      
      public static const const_529:String = "transferComplete";
       
      
      protected var var_2127:Boolean;
      
      public function class_222(param1:String, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_2127 = param2;
      }
      
      override public function clone() : Event
      {
         return new class_222(type,this.method_1036,bubbles,cancelable);
      }
      
      public function get method_1036() : Boolean
      {
         return this.var_2127;
      }
   }
}
