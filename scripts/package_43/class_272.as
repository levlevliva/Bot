package package_43
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuIslandsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_121.class_841;
   import package_130.class_1143;
   import package_14.class_49;
   import package_15.class_273;
   import package_15.class_78;
   import package_185.class_1136;
   import package_188.class_1200;
   import package_188.class_1201;
   import package_41.class_89;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_49.class_140;
   import package_5.class_43;
   import package_6.class_14;
   import package_98.class_777;
   import spark.components.DataGroup;
   import spark.components.Group;
   
   public final class class_272 extends class_78
   {
       
      
      private var var_66:class_273;
      
      private var var_1517:class_1201;
      
      private var var_1042:class_1200;
      
      public function class_272(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1517 = param1.var_2284;
         method_35(this.var_1517);
      }
      
      public static function method_401(param1:int) : String
      {
         switch(param1)
         {
            case class_1143.const_502:
               return "ico_tower_offensive";
            case class_1143.const_64:
               return "ico_tower_neutral";
            case class_1143.const_613:
               return "ico_tower_def";
            default:
               return null;
         }
      }
      
      override protected function method_1182() : Object
      {
         var _loc2_:class_89 = null;
         var _loc3_:ArrayList = null;
         var _loc4_:class_900 = null;
         var _loc5_:GuildIslandListItemVo = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:class_821 = null;
         var _loc9_:TowerListItemVo = null;
         var _loc1_:GuildMenuIslandsTabVo = new GuildMenuIslandsTabVo();
         if(this.var_1517.name_8)
         {
            _loc2_ = this.var_1517.name_8.name_20;
            if(this.var_1042)
            {
               method_43(this.var_1042);
            }
            this.var_1042 = this.var_66.method_2112(_loc2_);
            method_35(this.var_1042);
            if(this.var_1042.name_8)
            {
               _loc3_ = new ArrayList();
               for each(_loc4_ in this.var_1042.name_8.var_145)
               {
                  _loc5_ = new GuildIslandListItemVo();
                  _loc6_ = class_125.method_249(_loc4_.var_920);
                  _loc7_ = _loc6_.lastIndexOf(" ");
                  _loc5_.islandId = _loc4_.var_225;
                  _loc5_.map = _loc4_.var_143;
                  _loc5_.date = _loc6_.substr(0,_loc7_);
                  _loc5_.time = _loc6_.substr(_loc7_ + 1);
                  for each(_loc8_ in _loc4_.name_41)
                  {
                     _loc9_ = _loc5_.towersList.getItemAt(_loc8_.name_6 - 1) as TowerListItemVo;
                     TowerListItemVo.create(_loc8_,_loc9_);
                     _loc9_.islandType = _loc4_.name_30;
                  }
                  _loc3_.addItem(_loc5_);
               }
               _loc1_.islandsList = _loc3_;
               _loc1_.notifyAttack = class_49.method_42(class_43.const_397);
               _loc1_.guildId = _loc2_;
            }
         }
         return _loc1_;
      }
      
      public function get name_8() : GuildMenuIslandsTabVo
      {
         return method_38() as GuildMenuIslandsTabVo;
      }
   }
}
