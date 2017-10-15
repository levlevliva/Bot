package package_81
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.class_1187;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_Label;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupPieceVo;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.event.EventType;
   import package_100.class_1186;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_273;
   import package_15.class_78;
   import package_152.class_937;
   import package_154.class_632;
   import package_157.class_682;
   import package_192.class_1172;
   import package_195.class_1188;
   import package_29.class_57;
   import package_34.class_115;
   import package_34.class_116;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_935;
   import package_5.class_1012;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_262 extends class_78
   {
      
      private static const const_1394:int = 25;
      
      private static const const_1487:int = 26;
      
      private static const const_1692:int = 27;
      
      private static const const_1608:int = 28;
      
      private static const const_1784:int = 39;
      
      private static const const_1305:int = 40;
      
      private static const const_1604:int = 41;
      
      private static const const_1514:int = 42;
      
      private static const const_1822:int = 43;
      
      private static const const_1891:int = 44;
      
      private static const const_1355:int = 45;
      
      private static const const_1611:int = 46;
       
      
      private var var_1267:class_1188;
      
      private var var_1265:class_1172;
      
      private var var_1633:PuzzlePopupVo;
      
      private var name_15:int;
      
      public function class_262(param1:class_273)
      {
         this.var_1633 = new PuzzlePopupVo();
         super();
         this.var_1267 = param1.var_1267;
         this.var_1265 = param1.var_1265;
         this.var_1265.addEventListener(Event.CHANGE,this.method_1457);
         method_35(this.var_1267);
      }
      
      override protected function method_1182() : Object
      {
         var _loc6_:int = 0;
         var _loc7_:PuzzlePopupPieceVo = null;
         var _loc8_:int = 0;
         var _loc1_:class_682 = this.var_1267.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:String = this.method_2651(_loc1_.var_1284);
         var _loc3_:PuzzlePopupVo = this.var_1633;
         var _loc4_:int = _loc1_.var_62.name_5;
         var _loc5_:String = class_88.method_32(class_88.const_19,_loc4_.toString());
         _loc3_.puzzleName = _loc2_;
         _loc3_.price.name_5 = _loc4_;
         _loc3_.price.var_10 = _loc1_.var_62.var_10;
         _loc3_.priceText = class_96.method_20(class_96.const_183,"price");
         _loc3_.explanation = class_96.method_20(class_96.const_183,"explanation").replace(class_22.const_6,EventModule.getEventTitle(_loc1_.var_1284)).replace(class_22.const_74,_loc5_);
         _loc3_.currencyName = class_88.method_32(class_88.const_19,_loc3_.price.name_5.toString());
         for each(_loc6_ in _loc1_.var_888)
         {
            _loc7_ = this.method_1649(_loc6_);
            _loc7_.amount = 0;
            _loc7_.puzzleName = _loc2_;
            for each(_loc8_ in _loc1_.var_788)
            {
               if(_loc8_ != _loc6_)
               {
                  continue;
               }
               _loc7_.amount = 1;
               break;
            }
         }
         return _loc3_;
      }
      
      private final function method_2651(param1:int) : String
      {
         switch(param1)
         {
            case EventType.PUZZLE_PIECES_CHILLING_BROOD:
               return "puzzlemenu-chillingbrood";
            case EventType.PUZZLE_PIECES:
            default:
               return "puzzlemenu-winter";
         }
      }
      
      private final function method_1649(param1:int) : PuzzlePopupPieceVo
      {
         var _loc2_:PuzzlePopupPieceVo = this.var_1633.pieces[param1] as PuzzlePopupPieceVo;
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = new PuzzlePopupPieceVo();
         _loc2_.id = param1;
         _loc2_.tip = class_96.method_20(class_96.const_183,"tippart" + param1);
         this.method_1780(_loc2_);
         this.var_1633.pieces[param1] = _loc2_;
         return _loc2_;
      }
      
      private final function method_1780(param1:PuzzlePopupPieceVo) : void
      {
         switch(param1.id)
         {
            case const_1394:
            case const_1604:
               param1.index = 0;
               param1.x = 0;
               param1.y = 0;
               param1.tipHorizCenter = -20;
               break;
            case const_1487:
            case const_1514:
               param1.index = 1;
               param1.x = 153;
               param1.y = 0;
               param1.tipHorizCenter = 0;
               break;
            case const_1692:
            case const_1822:
               param1.index = 2;
               param1.x = 379;
               param1.y = 0;
               param1.tipHorizCenter = 20;
               break;
            case const_1608:
            case const_1891:
               param1.index = 3;
               param1.x = 0;
               param1.y = 156;
               param1.tipHorizCenter = -20;
               break;
            case const_1784:
            case const_1355:
               param1.index = 4;
               param1.x = 154;
               param1.y = 150;
               param1.tipHorizCenter = 0;
               break;
            case const_1305:
            case const_1611:
               param1.index = 5;
               param1.x = 383;
               param1.y = 174;
               param1.tipHorizCenter = 20;
         }
      }
      
      private final function method_1457(param1:Event) : void
      {
         if(this.name_15 != this.var_1265.name_15)
         {
            return;
         }
         class_115.name_3.method_2652();
      }
      
      public final function method_2688(param1:int) : void
      {
         this.name_15 = class_1187.method_40();
         class_116.name_3.method_353(param1,class_1186.const_1840,1,this.name_15);
      }
      
      public final function method_431() : PuzzlePopupVo
      {
         return method_38() as PuzzlePopupVo;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1267);
         this.var_1267 = null;
         this.var_1265.removeEventListener(Event.CHANGE,this.method_1457);
         this.var_1265 = null;
      }
   }
}
