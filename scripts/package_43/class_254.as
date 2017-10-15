package package_43
{
   import com.bigpoint.seafight.model.inventory.vo.crew.DefaultCrew_VO;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.net.events.class_1305;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.common.BoardingMenuVanity;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleWindowData;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.texteditor.BulletTool;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.DataGridColSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenDeathWindow;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import net.bigpoint.seafight.com.module.gems.class_883;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_100.class_598;
   import package_111.class_1176;
   import package_111.class_867;
   import package_113.class_398;
   import package_133.class_595;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_140.class_540;
   import package_143.class_1056;
   import package_148.class_617;
   import package_148.class_679;
   import package_15.class_273;
   import package_15.class_78;
   import package_150.class_587;
   import package_152.class_664;
   import package_16.class_28;
   import package_171.class_1275;
   import package_191.class_1171;
   import package_191.class_1173;
   import package_191.class_1174;
   import package_191.class_1175;
   import package_191.class_1177;
   import package_192.class_1172;
   import package_20.class_33;
   import package_216.class_1575;
   import package_3.class_514;
   import package_30.class_62;
   import package_41.class_93;
   import package_45.class_110;
   import package_47.class_881;
   import package_5.class_43;
   import package_5.class_984;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_1317;
   import package_80.class_1217;
   import package_99.class_786;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_254 extends class_78
   {
       
      
      private var var_66:class_273;
      
      private var var_1398:class_1177;
      
      private var var_792:class_1171;
      
      private var var_797:class_1175;
      
      private var var_740:class_1173;
      
      private var var_1186:class_1174;
      
      private var var_1325:class_1172;
      
      private var var_1309:class_514;
      
      private var name_44:CastleWindowData;
      
      public function class_254(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1398 = this.var_66.var_2132;
         method_35(this.var_1398);
         this.var_792 = this.var_66.var_2056;
         method_35(this.var_792);
         this.var_797 = this.var_66.var_2172;
         method_35(this.var_797);
         this.var_740 = this.var_66.var_2389;
         method_35(this.var_740);
         this.var_1186 = this.var_66.var_2384;
         method_35(this.var_1186);
         this.var_1325 = this.var_66.var_1265;
         this.var_1325.addEventListener(Event.CHANGE,this.method_1449);
      }
      
      override protected function method_1182() : Object
      {
         if(!this.name_44)
         {
            this.name_44 = new CastleWindowData();
         }
         this.name_44.addDefaultBoosters(this.var_1398.name_8);
         this.name_44.priceData = this.var_1186.name_8;
         this.name_44.presetData = this.var_792.name_8;
         this.name_44.slotData = this.var_797.name_8;
         this.name_44.userBoosterData = this.var_740.name_8;
         this.name_44.calculateResult();
         return this.name_44.isCreated && this.var_797.name_8 && this.var_740.name_8?this.name_44:null;
      }
      
      public final function method_1536(param1:int, param2:int, param3:int) : class_598
      {
         return this.var_66.method_2035(param1,param2,param3).name_8;
      }
      
      public final function method_728(param1:int = 0, param2:int = 0) : void
      {
         var _loc3_:class_867 = null;
         if(param2 != class_1176.const_383)
         {
            this.method_934();
            _loc3_ = this.var_792.name_8;
         }
      }
      
      public final function method_934() : void
      {
         this.var_792.method_54();
      }
      
      private final function method_1449(param1:Event = null) : void
      {
         this.var_797.method_54();
         var _loc2_:class_617 = this.var_797.name_8;
         this.var_740.method_54();
         var _loc3_:class_679 = this.var_740.name_8;
         this.method_934();
         var _loc4_:class_867 = this.var_792.name_8;
         class_33.name_12.method_41.method_133(class_110.const_396);
         class_33.name_12.method_41.method_133(class_110.const_410);
      }
      
      public final function method_358() : CastleWindowData
      {
         if(!this.var_1309)
         {
            this.var_1309 = class_33.name_12.method_126.method_164(class_514) as class_514;
            this.var_1309.var_679.add(this.method_728);
         }
         return method_38() as CastleWindowData;
      }
      
      public function get method_281() : CastleWindowData
      {
         return this.name_44;
      }
      
      override public function method_36() : void
      {
         method_218(this.var_1398);
         this.var_1398 = null;
         method_218(this.var_792);
         this.var_792 = null;
         method_218(this.var_740);
         this.var_740 = null;
         method_218(this.var_797);
         this.var_797 = null;
         method_218(this.var_1186);
         this.var_1186 = null;
         if(this.var_1325)
         {
            this.var_1325.removeEventListener(Event.CHANGE,this.method_1449);
            this.var_1325 = null;
         }
         this.var_1309.var_679.remove(this.method_728);
         this.var_1309 = null;
         this.name_44 = null;
      }
   }
}
