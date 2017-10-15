package
{
   import flash.net.getClassByAlias;
   import flash.net.registerClassAlias;
   import flash.system.Capabilities;
   import mx.accessibility.AccordionHeaderAccImpl;
   import mx.accessibility.ButtonAccImpl;
   import mx.accessibility.LabelAccImpl;
   import mx.accessibility.UIComponentAccProps;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.managers.systemClasses.ChildManager;
   import mx.styles.IStyleManager2;
   import mx.styles.StyleManagerImpl;
   import mx.utils.ObjectProxy;
   import spark.accessibility.ButtonBarBaseAccImpl;
   import spark.accessibility.ButtonBaseAccImpl;
   import spark.accessibility.CheckBoxAccImpl;
   import spark.accessibility.DataGridAccImpl;
   import spark.accessibility.DropDownListBaseAccImpl;
   import spark.accessibility.ListAccImpl;
   import spark.accessibility.ListBaseAccImpl;
   import spark.accessibility.PanelAccImpl;
   import spark.accessibility.RadioButtonAccImpl;
   import spark.accessibility.RichEditableTextAccImpl;
   import spark.accessibility.SliderBaseAccImpl;
   import spark.accessibility.TextBaseAccImpl;
   import spark.accessibility.TitleWindowAccImpl;
   import spark.accessibility.ToggleButtonAccImpl;
   
   public class _MainCopy_FlexInit
   {
       
      
      public function _MainCopy_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var styleManager:IStyleManager2 = null;
         var fbs:IFlexModuleFactory = param1;
         new ChildManager(fbs);
         styleManager = new StyleManagerImpl(fbs);
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         if(Capabilities.hasAccessibility)
         {
            ListBaseAccImpl.enableAccessibility();
            ButtonBarBaseAccImpl.enableAccessibility();
            UIComponentAccProps.enableAccessibility();
            ListAccImpl.enableAccessibility();
            TitleWindowAccImpl.enableAccessibility();
            ButtonAccImpl.enableAccessibility();
            TextBaseAccImpl.enableAccessibility();
            AccordionHeaderAccImpl.enableAccessibility();
            DropDownListBaseAccImpl.enableAccessibility();
            ButtonBaseAccImpl.enableAccessibility();
            LabelAccImpl.enableAccessibility();
            ToggleButtonAccImpl.enableAccessibility();
            PanelAccImpl.enableAccessibility();
            SliderBaseAccImpl.enableAccessibility();
            RadioButtonAccImpl.enableAccessibility();
            DataGridAccImpl.enableAccessibility();
            RichEditableTextAccImpl.enableAccessibility();
            CheckBoxAccImpl.enableAccessibility();
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayCollection") != ArrayCollection)
            {
               registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayList") != ArrayList)
            {
               registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ObjectProxy") != ObjectProxy)
            {
               registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
         }
         var styleNames:Array = ["paragraphStartIndent","breakOpportunity","kerning","alternatingItemColors","wordSpacing","leading","fontAntiAliasType","selectionColor","labelWidth","containerBreakBefore","cffHinting","contentBackgroundAlpha","fontFamily","digitCase","containerBreakAfter","textSelectedColor","clearFloats","paragraphEndIndent","layoutDirection","ligatureLevel","downColor","dropShadowColor","fontWeight","interactionMode","dominantBaseline","textAlign","accentColor","justificationStyle","fontSharpness","whiteSpaceCollapse","contentBackgroundColor","textDecoration","fontLookup","fontStyle","columnBreakAfter","chromeColor","digitWidth","indicatorGap","focusColor","themeColor","listAutoPadding","blockProgression","showPromptWhenFocused","listStyleType","fontSize","textRollOverColor","columnBreakBefore","textAlignLast","trackingRight","fontGridFitType","paragraphSpaceAfter","showErrorSkin","errorColor","justificationRule","color","backgroundDisabledColor","textShadowColor","unfocusedTextSelectionColor","paragraphSpaceBefore","textIndent","textAlpha","locale","baselineShift","barColor","fontThickness","touchDelay","textShadowAlpha","renderingMode","textJustify","textRotation","tabStops","direction","firstBaselineOffset","lineThrough","caretColor","symbolColor","focusedTextSelectionColor","letterSpacing","disabledColor","alignmentBaseline","trackingLeft","labelPlacement","rollOverColor","listStylePosition","inactiveTextSelectionColor","lineHeight","leadingModel","showErrorTip","typographicCase"];
         var i:int = 0;
         while(i < styleNames.length)
         {
            styleManager.registerInheritingStyle(styleNames[i]);
            i++;
         }
      }
   }
}
