package package_77
{
   import com.bigpoint.seafight.model.inventory.vo.amsPlayer.AmsPlayer_VO;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.effects.Parallel;
   import mx.logging.Log;
   import package_131.class_573;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_15.class_273;
   import package_15.class_78;
   import package_163.class_843;
   import package_163.class_846;
   import package_189.class_1157;
   import package_189.class_1158;
   import package_2.*;
   import package_52.class_168;
   import package_6.class_14;
   import package_7.class_1039;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public final class class_246 extends class_78
   {
       
      
      private var var_1152:class_1158;
      
      private var var_1163:class_1157;
      
      public function class_246(param1:class_273)
      {
         super();
         this.var_1152 = param1.method_2717;
         method_35(this.var_1152);
         this.var_1163 = param1.method_2123;
         method_35(this.var_1163);
      }
      
      override protected function method_1182() : Object
      {
         var _loc1_:class_843 = this.var_1152.name_8;
         if(_loc1_)
         {
            return _loc1_;
         }
         return null;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1152);
         method_43(this.var_1163);
         this.var_1152.method_36();
         this.var_1163.method_36();
      }
      
      public final function method_358() : class_843
      {
         return method_38() as class_843;
      }
      
      public final function method_2546() : class_846
      {
         this.var_1163.method_54();
         return this.var_1163.name_8;
      }
   }
}
