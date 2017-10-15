package package_35
{
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.dragging.commands.IDragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapInvitePopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyColumnCheckBoxRenderer;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGroupMapInviteWindow;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import org.bytearray.explorer.SWFExplorer;
   import org.bytearray.explorer.events.SWFExplorerErrorEvent;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   import package_101.class_495;
   import package_102.class_359;
   import package_14.class_47;
   import package_14.class_51;
   import package_28.class_56;
   import package_29.class_166;
   import package_46.class_1493;
   import package_5.class_139;
   import package_6.class_14;
   import package_7.class_104;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_70
   {
      
      private static var var_1471:class_70;
       
      
      public var var_2146:Number = -1;
      
      public var var_2219:Number = -1;
      
      public function class_70(param1:SingleTonEnforcer_4723)
      {
         super();
         if(!param1)
         {
            throw new class_166();
         }
      }
      
      public static function get name_12() : class_70
      {
         if(!var_1471)
         {
            var_1471 = new class_70(new SingleTonEnforcer_4723());
         }
         return var_1471;
      }
      
      public static function get method_1080() : Number
      {
         return class_70.name_12.var_2146;
      }
      
      public static function set method_1080(param1:Number) : void
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = _loc2_.getTime();
         class_70.name_12.var_2219 = param1 - _loc3_;
         class_70.name_12.var_2146 = param1;
      }
      
      public final function method_2705(param1:Number) : Number
      {
         return param1 + this.var_2219;
      }
   }
}

class SingleTonEnforcer_4723
{
    
   
   function SingleTonEnforcer_4723()
   {
      super();
   }
}
