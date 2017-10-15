package package_43
{
   import com.bigpoint.seafight.model.vo.class_1265;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TweenLite;
   import com.greensock.plugins.EndArrayPlugin;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_118;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_147.class_885;
   import package_15.class_273;
   import package_15.class_78;
   import package_168.class_1165;
   import package_171.class_1057;
   import package_179.class_1064;
   import package_179.class_1262;
   import package_18.class_392;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_975;
   import package_5.class_139;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   import spark.events.IndexChangeEvent;
   
   public final class class_251 extends class_78
   {
       
      
      private var var_354:class_1165;
      
      public function class_251(param1:class_273)
      {
         super();
         this.var_354 = param1.var_1603;
         method_35(this.var_354);
      }
      
      override protected function method_1182() : Object
      {
         return this.var_354.name_8;
      }
      
      public function get name_57() : int
      {
         return !!this.var_354.name_8?int(this.var_354.name_8.var_1632):0;
      }
      
      public function get name_62() : Vector.<int>
      {
         return !!this.var_354.name_8?this.var_354.name_8.name_62:null;
      }
      
      public function get name_77() : int
      {
         return !!this.var_354.name_8?int(this.var_354.name_8.name_77):0;
      }
      
      public function get name_71() : int
      {
         return !!this.var_354.name_8?int(this.var_354.name_8.name_71):0;
      }
      
      public function get name_65() : Vector.<int>
      {
         return !!this.var_354.name_8?this.var_354.name_8.name_65:null;
      }
      
      public function get name_63() : int
      {
         return !!this.var_354.name_8?int(this.var_354.name_8.name_63):0;
      }
   }
}
