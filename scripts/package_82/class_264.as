package package_82
{
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_1192;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.castle.component.target;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronMapListItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_151.class_905;
   import package_168.class_1165;
   import package_171.class_981;
   import package_186.class_1465;
   import package_196.class_1191;
   import package_34.class_115;
   import package_36.class_100;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_46.class_1455;
   import package_46.class_1501;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_69.class_978;
   import package_72.class_203;
   import package_8.class_1315;
   import package_86.class_278;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_336;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   use namespace mx_internal;
   
   public final class class_264 extends class_78
   {
       
      
      private var var_66:class_273;
      
      private var var_1047:class_1165;
      
      private var var_731:class_1191;
      
      private var var_1037:class_278;
      
      private var var_1065:Dictionary;
      
      public function class_264(param1:class_273, param2:class_278)
      {
         super();
         this.var_1065 = new Dictionary();
         this.var_66 = param1;
         this.var_1047 = param1.var_1603;
         this.var_1037 = param2;
         method_35(this.var_1037);
         method_35(this.var_1047);
      }
      
      override protected function method_1182() : Object
      {
         var _loc4_:CauldronMapListItemVo = null;
         var _loc5_:class_905 = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:class_1192 = null;
         var _loc1_:Dictionary = this.var_1037.method_898();
         if(!this.var_1047.name_8 || !_loc1_)
         {
            return null;
         }
         var _loc2_:Vector.<int> = this.var_1047.name_8.name_65;
         if(!this.var_731)
         {
            this.var_731 = this.var_66.method_1810(_loc2_);
            method_35(this.var_731);
         }
         if(!this.var_731.name_8)
         {
            return null;
         }
         var _loc3_:Vector.<class_905> = this.var_731.name_8.var_749;
         for each(_loc5_ in _loc3_)
         {
            _loc4_ = this.method_714(_loc5_.name_11);
            class_127.method_54(_loc4_.pieces);
            for each(_loc7_ in _loc5_.var_536)
            {
               _loc4_.pieces[_loc7_] = true;
            }
         }
         for each(_loc6_ in _loc2_)
         {
            _loc8_ = this.var_1037.method_761(_loc6_);
            if(_loc8_ != null)
            {
               _loc4_ = this.method_714(_loc6_);
               _loc4_.image = class_133.method_312(class_140.const_155,_loc6_);
               _loc4_.completed = _loc8_.var_10;
               _loc4_.waves = _loc8_.var_2030;
               _loc4_.wavesMax = _loc8_.var_1802;
               _loc4_.piecesMax = _loc8_.var_536;
            }
         }
         return this.var_1065;
      }
      
      private final function method_714(param1:int) : CauldronMapListItemVo
      {
         var _loc2_:CauldronMapListItemVo = this.var_1065[param1] as CauldronMapListItemVo;
         if(_loc2_ == null)
         {
            _loc2_ = new CauldronMapListItemVo();
            _loc2_.mapId = param1;
            _loc2_.pieces = new Dictionary();
            this.var_1065[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public final function method_637(param1:int) : CauldronMapListItemVo
      {
         var _loc2_:Dictionary = method_38() as Dictionary;
         if(!_loc2_)
         {
            return null;
         }
         return this.method_714(param1);
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1047);
         method_43(this.var_1037);
         if(this.var_731)
         {
            method_43(this.var_731);
            this.var_731.method_36();
            this.var_731 = null;
         }
         this.var_66 = null;
         this.var_1037 = null;
         this.var_1047 = null;
      }
   }
}
