package package_147
{
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.states.State;
   import package_107.class_693;
   import package_30.class_1013;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_22;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.HGroup;
   
   public final class class_885 implements class_14
   {
      
      public static const name_3:class_885 = new class_885();
       
      
      private var var_646:int = 0;
      
      public var var_166:class_91;
      
      public var name_11:int = 0;
      
      public var name_7:class_84;
      
      public function class_885(param1:class_84 = null, param2:int = 0, param3:class_91 = null)
      {
         super();
         if(param3 == null)
         {
            this.var_166 = new class_91();
         }
         else
         {
            this.var_166 = param3;
         }
         this.name_11 = param2;
         if(param1 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 943;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_166 = new class_91();
         this.var_166.var_8 = param1.readShort();
         this.var_166.var_8 = 65535 & ((65535 & this.var_166.var_8) << 12 % 16 | (65535 & this.var_166.var_8) >>> 16 - 12 % 16);
         this.var_166.var_8 = this.var_166.var_8 > 32767?int(this.var_166.var_8 - 65536):int(this.var_166.var_8);
         this.var_166.var_9 = param1.readShort();
         this.var_166.var_9 = 65535 & ((65535 & this.var_166.var_9) >>> 2 % 16 | (65535 & this.var_166.var_9) << 16 - 2 % 16);
         this.var_166.var_9 = this.var_166.var_9 > 32767?int(this.var_166.var_9 - 65536):int(this.var_166.var_9);
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 15 % 32 | this.name_11 >>> 32 - 15 % 32;
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(943);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_166.var_8) >>> 12 % 16 | (65535 & this.var_166.var_8) << 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.var_166.var_9) << 2 % 16 | (65535 & this.var_166.var_9) >>> 16 - 2 % 16));
         param1.writeInt(this.name_11 >>> 15 % 32 | this.name_11 << 32 - 15 % 32);
         this.name_7.method_14(param1);
      }
   }
}
