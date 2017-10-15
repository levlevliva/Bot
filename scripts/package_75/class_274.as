package package_75
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationVo;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import package_11.class_20;
   import package_14.class_47;
   import package_14.class_87;
   import package_15.class_273;
   import package_15.class_78;
   import package_198.class_1221;
   import package_47.class_522;
   import package_47.class_685;
   import package_6.class_14;
   import package_7.class_104;
   import package_8.class_114;
   
   public final class class_274 extends class_78
   {
       
      
      private var var_2152:class_1221;
      
      public function class_274(param1:class_273)
      {
         super();
         method_35(this.var_2152 = param1.var_2160);
      }
      
      override protected function method_1182() : Object
      {
         var _loc4_:class_685 = null;
         var _loc5_:NpcConversationVo = null;
         var _loc1_:class_522 = this.var_2152.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:class_87 = class_47.method_2315;
         var _loc3_:NpcConversationPopupVo = new NpcConversationPopupVo();
         _loc3_.entityId = _loc1_.name_4;
         _loc3_.characterId = _loc1_.var_198;
         _loc3_.headline = class_20.name_3.method_2167(_loc1_.var_38);
         for each(_loc4_ in _loc1_.var_528)
         {
            _loc5_ = new NpcConversationVo();
            _loc5_.continueBtnText = _loc4_.var_1386.length > 0?_loc2_.method_20(_loc4_.var_1386):null;
            _loc5_.stopBtnText = _loc4_.var_1232.length > 0?_loc2_.method_20(_loc4_.var_1232):null;
            _loc5_.conversationId = _loc4_.var_1041;
            _loc5_.conversationText = _loc4_.var_1041.length > 0?_loc2_.method_20(_loc4_.var_1041):null;
            _loc3_.conversations.push(_loc5_);
         }
         return _loc3_;
      }
      
      public function get name_8() : NpcConversationPopupVo
      {
         return method_38() as NpcConversationPopupVo;
      }
   }
}
