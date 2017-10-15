package package_43
{
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bit101.components.Style;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.filters.DropShadowFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_127.class_870;
   import package_14.class_286;
   import package_147.class_885;
   import package_15.class_273;
   import package_15.class_78;
   import package_187.class_1198;
   import package_187.class_1199;
   import package_204.class_1285;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_22;
   import package_5.class_43;
   import package_50.class_141;
   import package_52.class_168;
   import package_92.class_944;
   import spark.components.Group;
   
   public final class class_271 extends class_78
   {
       
      
      private var var_1135:class_1198;
      
      private var var_755:class_1199;
      
      public function class_271(param1:class_273, param2:class_89, param3:Vector.<class_84>)
      {
         super();
         if(param2)
         {
            this.var_755 = param1.method_2670(param2);
            method_35(this.var_755);
         }
         else
         {
            this.var_1135 = param1.method_2065(param3);
            method_35(this.var_1135);
         }
      }
      
      override protected function method_1182() : Object
      {
         if(this.var_755)
         {
            if(this.var_755.name_8)
            {
               return this.var_755.name_8.var_710;
            }
         }
         else if(this.var_1135.name_8)
         {
            return this.var_1135.name_8.var_710;
         }
         return null;
      }
      
      public function get name_8() : Vector.<class_885>
      {
         return method_38() as Vector.<class_885>;
      }
      
      override public function method_36() : void
      {
         if(this.var_755)
         {
            method_43(this.var_755);
            this.var_755.method_36();
         }
         else
         {
            method_43(this.var_1135);
            this.var_1135.method_36();
         }
      }
   }
}
