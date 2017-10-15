package package_164
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_107.class_693;
   import package_14.class_47;
   import package_14.class_94;
   import package_171.class_1275;
   import package_186.class_1137;
   import package_26.class_101;
   import package_41.class_84;
   import package_41.class_93;
   import package_52.class_167;
   import package_6.class_14;
   import package_89.class_1138;
   import spark.components.Group;
   import spark.effects.Rotate3D;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_909 implements class_14
   {
      
      public static const name_3:class_909 = new class_909();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public var var_17:class_84;
      
      public var name_10:int = 0;
      
      public function class_909(param1:String = "", param2:class_84 = null, param3:int = 0)
      {
         super();
         this.name_13 = param1;
         if(param2 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param2;
         }
         this.name_10 = param3;
      }
      
      public function method_16() : int
      {
         return 31023;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_13 = param1.readUTF();
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
         this.name_10 = param1.readInt();
         this.name_10 = this.name_10 >>> 6 % 32 | this.name_10 << 32 - 6 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(31023);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeUTF(this.name_13);
         this.var_17.method_14(param1);
         param1.writeInt(this.name_10 << 6 % 32 | this.name_10 >>> 32 - 6 % 32);
      }
   }
}
