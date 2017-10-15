package package_47
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import org.apache.flex.collections.VectorCollection;
   import package_190.*;
   import package_54.class_160;
   import package_55.class_1008;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_657 implements class_14
   {
      
      public static const name_3:class_657 = new class_657();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public function class_657(param1:int = 0)
      {
         super();
         this.name_7 = param1;
      }
      
      public function method_16() : int
      {
         return -23320;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) << 5 % 16 | (65535 & this.name_7) >>> 16 - 5 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-23320);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         param1.writeShort(65535 & ((65535 & this.name_7) >>> 5 % 16 | (65535 & this.name_7) << 16 - 5 % 16));
      }
   }
}
