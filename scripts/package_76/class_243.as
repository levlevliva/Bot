package package_76
{
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRelationsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsComboBoxListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItem;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.teamscore.component.CivilWarTeamScoreListItem;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import package_15.class_273;
   import package_15.class_78;
   import package_188.class_1149;
   import package_188.class_1150;
   import package_41.class_89;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_22;
   import package_5.class_939;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   
   use namespace mx_internal;
   
   public final class class_243 extends class_78
   {
      
      public static const const_267:ArrayCollection = new ArrayCollection();
       
      
      private var var_1838:class_1150;
      
      private var var_1020:class_1149;
      
      private var var_1121:class_279;
      
      private var var_228:GuildMenuRelationsTabVo;
      
      private var var_1310:ArrayCollection;
      
      public function class_243(param1:class_273, param2:class_279)
      {
         super();
         var _loc3_:ArrayCollection = const_267;
         if(_loc3_.length <= 0)
         {
            _loc3_.addItem(new GuildRelationsComboBoxListItemVo(class_1148.const_125));
            _loc3_.addItem(new GuildRelationsComboBoxListItemVo(class_1148.const_150));
            _loc3_.addItem(new GuildRelationsComboBoxListItemVo(class_1148.const_126));
            _loc3_.addItem(new GuildRelationsComboBoxListItemVo(class_1148.const_127));
         }
         this.var_228 = new GuildMenuRelationsTabVo();
         this.var_1310 = new ArrayCollection();
         method_35(this.var_1121 = param2);
         method_35(this.var_1838 = param1.method_1928());
         method_35(this.var_1020 = param1.var_1020);
      }
      
      override protected function method_1182() : Object
      {
         var _loc3_:class_714 = null;
         var _loc4_:class_938 = null;
         var _loc5_:class_923 = null;
         var _loc6_:class_89 = null;
         var _loc7_:GuildRelationsListItemVo = null;
         var _loc1_:class_485 = this.var_1838.name_8;
         var _loc2_:Vector.<class_714> = !!_loc1_?_loc1_.var_263:null;
         this.var_228.rightsToEdit = this.var_1020.method_137(class_1147.const_467);
         this.var_1310.removeAll();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.var_359;
            _loc5_ = _loc3_.var_765;
            _loc6_ = _loc4_.name_20;
            _loc7_ = new GuildRelationsListItemVo(_loc6_,_loc4_.name_13,_loc4_.var_123,_loc4_.var_384,class_125.method_285(_loc5_.var_1566));
            _loc7_.description = _loc4_.var_205;
            _loc7_.color = _loc5_.var_1399;
            _loc7_.colorTooltip = this.var_1121.method_564(_loc7_.color);
            _loc7_.rights = this.var_228.rightsToEdit;
            this.var_1310.addItem(_loc7_);
         }
         return this.var_228;
      }
      
      public function get name_8() : GuildMenuRelationsTabVo
      {
         var _loc4_:GuildRelationsListItemVo = null;
         var _loc5_:int = 0;
         var _loc6_:GuildRelationsComboBoxListItemVo = null;
         var _loc1_:GuildMenuRelationsTabVo = method_38() as GuildMenuRelationsTabVo;
         var _loc2_:ArrayCollection = _loc1_.list;
         _loc2_.removeAll();
         var _loc3_:int = 0;
         while(_loc3_ < this.var_1310.length)
         {
            _loc4_ = this.var_1310.getItemAt(_loc3_) as GuildRelationsListItemVo;
            _loc5_ = 0;
            while(_loc5_ < const_267.length)
            {
               _loc6_ = const_267.getItemAt(_loc5_) as GuildRelationsComboBoxListItemVo;
               if(_loc6_.color == _loc4_.color && _loc6_.selected)
               {
                  _loc2_.addItem(_loc4_);
                  break;
               }
               _loc5_++;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1121);
         method_43(this.var_1838);
         method_43(this.var_1020);
      }
   }
}
