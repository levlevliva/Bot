package package_43
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.guildmenu.island.common.SimpleHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.GradientType;
   import flash.display.InterpolationMethod;
   import flash.display.SpreadMethod;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_806;
   import package_101.class_549;
   import package_15.class_273;
   import package_15.class_78;
   import package_187.class_1141;
   import package_201.thiz;
   import package_26.class_218;
   import package_41.class_89;
   import package_46.class_1493;
   import package_6.class_14;
   import package_92.class_336;
   import spark.components.Group;
   import spark.primitives.Rect;
   
   public final class class_239 extends class_78
   {
       
      
      private var var_1215:class_1141;
      
      private var var_907:String;
      
      public function class_239(param1:class_273, param2:class_89, param3:String)
      {
         super();
         this.var_907 = param3;
         this.var_1215 = param1.method_1998(param2);
         method_35(this.var_1215);
      }
      
      override protected function method_1182() : Object
      {
         var _loc3_:Vector.<class_737> = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:class_737 = null;
         var _loc7_:SpyUserDataVo = null;
         var _loc1_:Array = [];
         var _loc2_:class_806 = this.var_1215.name_8;
         if(_loc2_)
         {
            _loc3_ = _loc2_.var_49;
            _loc4_ = _loc3_.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc6_ = _loc3_[_loc5_];
               _loc7_ = SpyUserDataVo.SpyUserDataVoUser(_loc6_.name_13,_loc6_.name_7,this.var_907);
               _loc1_.push(_loc7_);
               _loc5_++;
            }
         }
         return new ArrayCollection(_loc1_);
      }
      
      public function get name_8() : ArrayCollection
      {
         return method_38() as ArrayCollection;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1215);
         this.var_1215.method_36();
      }
   }
}
