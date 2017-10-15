package package_13
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_101.class_511;
   import package_104.class_628;
   import package_16.class_28;
   import package_171.class_981;
   import package_190.class_1181;
   import package_29.class_143;
   import package_29.class_144;
   import package_41.class_93;
   import package_51.class_1082;
   import package_9.class_404;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.BitmapImage;
   
   public final class class_23 extends EventDispatcher
   {
       
      
      private var name_75:URLLoader;
      
      private var name_8:Dictionary;
      
      public function class_23(param1:String)
      {
         super();
         this.name_8 = new Dictionary();
         this.name_75 = new URLLoader();
         this.name_75.addEventListener(Event.COMPLETE,this.method_1322);
         this.name_75.addEventListener(IOErrorEvent.IO_ERROR,this.method_1465);
         this.name_75.load(new URLRequest(param1));
      }
      
      private final function method_1322(param1:Event) : void
      {
         var _loc4_:XML = null;
         var _loc5_:XMLList = null;
         var _loc6_:String = null;
         var _loc7_:QuestText = null;
         this.name_75.removeEventListener(Event.COMPLETE,this.method_1322);
         this.name_75.removeEventListener(IOErrorEvent.IO_ERROR,this.method_1465);
         var _loc2_:XML = new XML(this.name_75.data);
         var _loc3_:XMLList = _loc2_["quest"]["category"];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_["item"];
            _loc6_ = _loc4_.attribute("name").toString().substr(5);
            _loc7_ = new QuestText();
            _loc7_.title = String(_loc5_[0]);
            _loc7_.description = String(_loc5_[1]).replace(/<br.*?>/g,"\n");
            _loc7_.reward = String(_loc5_[2]);
            this.name_8[_loc6_] = _loc7_;
         }
         dispatchEvent(new class_145(class_145.const_1871));
      }
      
      private final function method_1465(param1:IOErrorEvent) : void
      {
         class_144.method_881(param1,class_143.const_1535,"IOError in LocalisationrResource ");
      }
      
      public final function method_381(param1:int) : String
      {
         return param1 in this.name_8?(this.name_8[param1] as QuestText).title:"title-" + param1;
      }
      
      public final function method_2114(param1:int) : String
      {
         return param1 in this.name_8?(this.name_8[param1] as QuestText).description:"description-" + param1;
      }
      
      public final function method_1373(param1:int) : String
      {
         return param1 in this.name_8?(this.name_8[param1] as QuestText).reward:"reward-" + param1;
      }
      
      public final function method_2436(param1:int) : String
      {
         return EventModule.getEventTitle(param1);
      }
   }
}

class QuestText
{
    
   
   public var title:String;
   
   public var description:String;
   
   public var reward:String;
   
   function QuestText()
   {
      super();
   }
}
