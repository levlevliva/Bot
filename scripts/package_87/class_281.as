package package_87
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamMembersScoreVo;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import flash.utils.Dictionary;
   import package_123.class_1032;
   import package_127.class_528;
   import package_127.class_870;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_199.class_1220;
   import package_48.class_138;
   import package_99.class_786;
   
   public final class class_281 extends class_78
   {
      
      private static const const_573:Dictionary = new Dictionary();
      
      private static const const_1142:String = "images/teamemblems/";
       
      
      private var var_1255:class_1220;
      
      private var var_1633:TeamScorePopupVo;
      
      public function class_281(param1:class_273)
      {
         this.var_1633 = new TeamScorePopupVo();
         super();
         this.var_1633.time = new class_1225(0);
         this.var_1255 = param1.var_1255;
         method_35(this.var_1255);
      }
      
      override protected function method_1182() : Object
      {
         var _loc3_:class_870 = null;
         var _loc4_:TeamMembersScoreVo = null;
         var _loc5_:class_786 = null;
         var _loc1_:class_528 = this.var_1255.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:TeamScorePopupVo = this.var_1633;
         _loc2_.teams.removeAll();
         _loc2_.time.method_77(_loc1_.name_50);
         if(_loc2_.headline == null)
         {
            _loc2_.headline = class_88.method_32(class_88.const_446,class_138.name_3.method_27(_loc1_.var_410));
         }
         for each(_loc3_ in _loc1_.var_241)
         {
            _loc4_ = this.method_2606(_loc3_.var_610);
            _loc4_.score = _loc3_.var_282;
            _loc4_.winning = _loc1_.var_822 == _loc3_.var_610;
            _loc4_.members.removeAll();
            for each(_loc5_ in _loc3_.var_861)
            {
               _loc4_.members.addItem(_loc5_);
            }
            _loc2_.teams.addItem(_loc4_);
         }
         return _loc2_;
      }
      
      private final function method_2606(param1:int) : TeamMembersScoreVo
      {
         var _loc2_:TeamMembersScoreVo = const_573[param1] as TeamMembersScoreVo;
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = new TeamMembersScoreVo();
         _loc2_.name = class_47.method_22.method_20("team") + " ";
         switch(param1)
         {
            case class_1032.const_1166:
               _loc2_.name = _loc2_.name + "1";
               _loc2_.image = const_1142 + "emblem_hugin.png";
               _loc2_.color = 6912162;
               break;
            case class_1032.const_38:
            default:
               _loc2_.name = _loc2_.name + "2";
               _loc2_.image = const_1142 + "emblem_sleipnir.png";
               _loc2_.color = 6257990;
         }
         const_573[param1] = _loc2_;
         return _loc2_;
      }
      
      public final function method_431() : TeamScorePopupVo
      {
         return method_38() as TeamScorePopupVo;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1255);
         this.var_1255 = null;
      }
   }
}
