package package_70
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemKeyValueVO;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.EligibleUpgradeTooltip;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_178.class_1060;
   import package_20.class_109;
   import package_214.class_1604;
   import package_26.class_204;
   import package_34.class_115;
   import package_34.class_1257;
   import package_41.class_84;
   import package_44.class_1041;
   import package_44.class_108;
   import package_5.class_123;
   import package_54.class_162;
   import package_95.class_341;
   import package_99.class_386;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_196 extends class_109
   {
       
      
      private var var_442:Dictionary;
      
      private var var_1405:Dictionary;
      
      private var var_1968:Dictionary;
      
      public function class_196()
      {
         super();
         this.var_442 = new Dictionary(true);
         this.var_1405 = new Dictionary();
         this.var_1968 = new Dictionary();
      }
      
      public final function method_233(param1:class_108, param2:Vector.<int>) : void
      {
         this.var_442[param1] = param2;
      }
      
      public final function method_355(param1:class_108) : void
      {
         delete this.var_442[param1];
      }
      
      public final function method_2980(param1:int) : class_1041
      {
         var _loc2_:class_1041 = null;
         var _loc3_:Boolean = !!this.var_442.hasOwnProperty(param1.toString())?true:false;
         if(_loc3_)
         {
            _loc2_ = this.var_442[param1.toString()];
         }
         return _loc2_;
      }
      
      public final function method_2819(param1:int) : void
      {
         this.method_2184(param1);
      }
      
      public final function method_2982(param1:int) : Boolean
      {
         var _loc2_:String = param1.toString();
         if(hasOwnProperty(_loc2_))
         {
            return true;
         }
         return false;
      }
      
      public final function method_2948(param1:int) : void
      {
         var _loc2_:String = param1.toString();
         if(!hasOwnProperty(_loc2_))
         {
            this.var_1405[_loc2_] = param1;
         }
      }
      
      public final function method_822(param1:int, param2:class_1060) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:String = null;
         var _loc3_:String = param1.toString();
         var _loc4_:* = !this.var_1968.hasOwnProperty(_loc3_);
         if(_loc4_)
         {
            this.var_1968[_loc3_] = param1;
            this.method_1546(param2);
            return;
         }
         var _loc5_:Array = [];
         for each(_loc6_ in param2.var_1381)
         {
            _loc8_ = _loc6_.toString();
            if(this.var_1405.hasOwnProperty(_loc8_))
            {
               _loc5_.push(_loc6_);
               delete this.var_1405[_loc3_];
            }
         }
         _loc7_ = _loc5_.length == 0?true:false;
         if(!_loc7_)
         {
            param2.var_1381 = _loc5_;
         }
         this.method_1546(param2,_loc7_);
      }
      
      private final function method_2184(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc5_:Vector.<int> = null;
         var _loc6_:class_108 = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc2_:Boolean = false;
         for(_loc3_ in this.var_442)
         {
            if(this.var_442[_loc3_])
            {
               _loc5_ = this.var_442[_loc3_];
               _loc6_ = _loc3_ as class_108;
               if(_loc6_.method_1530())
               {
                  delete this.var_442[_loc3_];
               }
               else
               {
                  _loc7_ = [];
                  for each(_loc8_ in _loc5_)
                  {
                     if(_loc8_ == param1)
                     {
                        _loc7_.push(param1);
                        _loc2_ = true;
                        break;
                     }
                  }
                  if(_loc7_.length > 0)
                  {
                     _loc6_.method_1274(_loc7_);
                  }
               }
            }
         }
         if(_loc2_)
         {
            return;
         }
         var _loc4_:String = param1.toString();
         if(!hasOwnProperty(_loc4_))
         {
            this.var_1405[_loc4_] = param1;
         }
      }
      
      private final function method_1546(param1:class_1060, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         var _loc4_:Vector.<int> = null;
         var _loc5_:class_108 = null;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         for(_loc3_ in this.var_442)
         {
            _loc4_ = this.var_442[_loc3_];
            _loc5_ = _loc3_ as class_108;
            if(_loc5_.method_1530())
            {
               delete this.var_442[_loc3_];
            }
            else
            {
               _loc6_ = false;
               for each(_loc7_ in param1.var_1381)
               {
                  for each(_loc8_ in _loc4_)
                  {
                     if(_loc8_ == _loc7_)
                     {
                        if(param2)
                        {
                           _loc5_.method_34(-1);
                        }
                        else
                        {
                           _loc5_.method_1274(param1.var_1381);
                        }
                        _loc6_ = true;
                        break;
                     }
                  }
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
         }
      }
   }
}
