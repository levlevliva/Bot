package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import package_14.class_102;
   import package_14.class_286;
   import package_141.class_804;
   import package_43.class_106;
   import package_5.class_123;
   import package_5.class_43;
   import package_5.class_945;
   import package_8.class_114;
   import package_92.class_336;
   
   public final class class_60
   {
      
      private static var var_1331:ColorMatrixFilter;
       
      
      public function class_60()
      {
         super();
      }
      
      public static function method_701() : ColorMatrixFilter
      {
         if(var_1331)
         {
            return var_1331;
         }
         var _loc1_:Number = 1 / 3;
         var _loc2_:Number = 1 / 3;
         var _loc3_:Number = 1 / 3;
         var_1331 = new ColorMatrixFilter([_loc1_,_loc2_,_loc3_,0,0,_loc1_,_loc2_,_loc3_,0,0,_loc1_,_loc2_,_loc3_,0,0,0,0,0,1,0]);
         return var_1331;
      }
      
      public static function method_1186(param1:Sprite, param2:int, param3:int, param4:int, param5:Boolean, param6:Sprite = null) : void
      {
         var _loc8_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:class_336 = null;
         var _loc7_:SWFFinisher = getSWFFinisher(class_123.const_95,method_1186,param1,param2,param3,param4,param5,param6);
         if(_loc7_ == null)
         {
            return;
         }
         param2--;
         if(param3 < 1 || param4 < 1)
         {
            return;
         }
         if(param6 == null)
         {
            param6 = new Sprite();
            param1.addChild(param6);
            param6.visible = false;
         }
         if(param2 == 0)
         {
            return;
         }
         switch(class_286.name_5)
         {
            case class_286.const_79:
               _loc8_ = Math.ceil(param2 / 4);
               break;
            case class_286.const_105:
               _loc8_ = Math.ceil(param2 / 2);
               break;
            case class_286.const_122:
               _loc8_ = param2;
         }
         var _loc9_:String = class_123.method_27(class_123.const_95);
         var _loc10_:int = 0;
         while(_loc10_ < _loc8_)
         {
            _loc11_ = Math.round(Math.random() * 20) + 15;
            _loc12_ = new class_336(_loc7_.getEmbeddedMovieClip(_loc9_,true),_loc9_,-1,_loc11_);
            _loc12_.gotoAndPlay(Math.round(Math.random() * 20));
            _loc12_.x = Math.random() * param3 - param3 / 2;
            _loc12_.y = Math.random() * param4 - param4 / 2;
            param6.addChild(_loc12_);
            _loc10_++;
         }
         param6.visible = true;
      }
   }
}
