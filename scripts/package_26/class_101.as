package package_26
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.collections.IList;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_130.class_1143;
   import package_14.class_47;
   import package_17.class_54;
   import package_32.class_64;
   import package_51.class_148;
   import package_54.class_1006;
   import spark.components.Group;
   
   public final class class_101 extends Event
   {
      
      public static const const_1259:String = "mainButtonClick";
       
      
      public var name_7:int;
      
      public function class_101(param1:int)
      {
         super(const_1259,true,false);
         this.name_7 = param1;
      }
      
      override public function clone() : Event
      {
         super.clone();
         var _loc1_:class_101 = class_101(this.name_7);
         return _loc1_;
      }
   }
}
