package package_38
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRelationsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsComboBoxListItemVo;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_901;
   import package_145.class_1161;
   import package_15.class_273;
   import package_15.class_78;
   import package_26.class_204;
   import package_40.class_416;
   import package_41.class_84;
   import package_41.class_89;
   import package_5.class_939;
   import package_54.class_162;
   import package_76.class_279;
   import package_88.class_290;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   
   public final class class_248 extends class_78
   {
       
      
      private var var_1899:class_1161;
      
      public function class_248(param1:class_273)
      {
         super();
         this.var_1899 = param1.var_2148;
         method_35(this.var_1899);
      }
      
      override protected function method_1182() : Object
      {
         return this.var_1899.name_8;
      }
      
      public function get name_8() : class_416
      {
         return method_38() as class_416;
      }
   }
}
