package package_147
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import flash.events.SecurityErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import package_111.class_391;
   import package_14.class_47;
   import package_14.class_88;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_939;
   import package_51.class_974;
   import package_6.class_14;
   import package_7.class_104;
   import package_8.class_114;
   import package_95.class_341;
   import package_97.class_409;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   import spark.filters.GlowFilter;
   import spark.primitives.BitmapImage;
   
   public final class class_907 implements class_14
   {
      
      public static const name_3:class_907 = new class_907();
       
      
      private var var_646:int = 0;
      
      public var var_710:Vector.<class_885>;
      
      public function class_907(param1:Vector.<class_885> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_710 = new Vector.<class_885>();
         }
         else
         {
            this.var_710 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -12525;
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
         var _loc4_:class_885 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_710.length > 0)
         {
            this.var_710.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_885(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_710.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_885 = null;
         param1.writeShort(-12525);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeByte(this.var_710.length);
         for each(_loc2_ in this.var_710)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
