package package_51
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_696;
   import package_111.class_742;
   import package_111.class_745;
   import package_14.class_47;
   import package_14.class_88;
   import package_48.class_996;
   import package_5.class_123;
   import package_69.class_978;
   import package_72.class_203;
   import spark.primitives.Rect;
   
   public final class class_148 extends Event
   {
      
      public static const const_13:String = "ACTION_EVENT";
       
      
      public var name_22:class_320;
      
      public function class_148(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.name_22 = new class_320();
         super(param1,param2,param3);
      }
   }
}
