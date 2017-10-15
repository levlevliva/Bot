package package_111
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultNonPerishable_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuDropdownButton;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_825;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_628;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_16.class_28;
   import package_17.class_29;
   import package_26.class_204;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_214;
   import package_5.class_41;
   import package_5.class_43;
   import package_6.class_14;
   import package_72.class_203;
   import package_94.class_340;
   import package_94.class_690;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_859 implements class_14
   {
      
      public static const name_3:class_859 = new class_859();
       
      
      private var var_646:int = 0;
      
      public var var_941:int = 0;
      
      public var var_186:Vector.<class_841>;
      
      public function class_859(param1:int = 0, param2:Vector.<class_841> = null)
      {
         super();
         this.var_941 = param1;
         if(param2 == null)
         {
            this.var_186 = new Vector.<class_841>();
         }
         else
         {
            this.var_186 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 31823;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_941 = param1.readInt();
         this.var_941 = this.var_941 >>> 6 % 32 | this.var_941 << 32 - 6 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_186.length > 0)
         {
            this.var_186.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_186.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         param1.writeShort(31823);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeInt(this.var_941 << 6 % 32 | this.var_941 >>> 32 - 6 % 32);
         param1.writeByte(this.var_186.length);
         for each(_loc2_ in this.var_186)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
