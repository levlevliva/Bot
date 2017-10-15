package package_168
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import org.osflash.signals.ISlot;
   import package_133.class_500;
   import package_133.class_595;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_260;
   import package_16.class_28;
   import package_26.class_101;
   import package_29.class_565;
   import package_46.class_1224;
   import package_6.class_14;
   import package_7.class_35;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.GlowFilter;
   import spark.layouts.VerticalLayout;
   
   public final class class_976 extends class_260
   {
       
      
      public function class_976(param1:class_28)
      {
         super(param1,class_35.name_3.method_16(),null);
      }
      
      override protected function method_1931(param1:class_14) : Boolean
      {
         return true;
      }
      
      public function get name_8() : class_35
      {
         return this.method_38() as class_35;
      }
   }
}
