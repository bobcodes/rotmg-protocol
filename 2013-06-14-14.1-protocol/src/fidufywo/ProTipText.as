package fidufywo
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class ProTipText extends Sprite
   {
      public function ProTipText() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var text:Guzowoja;

      public function losored(param1:String) : void {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         this.[OFS55]text[/OFS][OFS55]=[/OFS][OFS9]new [/OFS][OFS9]Guzowoja[/OFS][OFS9]([/OFS][OFS9])[/OFS].[OFS14]setSize[/OFS][OFS14]([/OFS][OFS12]18[/OFS][OFS14])[/OFS].[OFS19]setColor[/OFS][OFS19]([/OFS][OFS17]16777215[/OFS][OFS19])[/OFS].[OFS23]setWordWrap[/OFS][OFS23]([/OFS]true[OFS23])[/OFS].[OFS28]setMultiLine[/OFS][OFS28]([/OFS]true[OFS28])[/OFS].[OFS35]setTextWidth[/OFS][OFS35]([/OFS][OFS32]580[/OFS][OFS35])[/OFS].[OFS41]setTextHeight[/OFS][OFS41]([/OFS][OFS39]100[/OFS][OFS41])[/OFS].[OFS51]setHorizontalAlign[/OFS][OFS51]([/OFS][OFS45]TextFormatAlign[/OFS].[OFS48]CENTER[/OFS][OFS51])[/OFS];
         this.[OFS59]text[/OFS].[OFS80]filters[/OFS][OFS80]=[/OFS][OFS78][[/OFS][OFS75]new [/OFS][OFS75]DropShadowFilter[/OFS][OFS75]([/OFS][OFS64]0[/OFS],[OFS64]0[/OFS],[OFS64]0[/OFS],[OFS68]1[/OFS],[OFS70]4[/OFS],[OFS70]4[/OFS],[OFS73]2[/OFS][OFS75])[/OFS][OFS78]][/OFS];
         this.[OFS83]text[/OFS].[OFS106]setStringBuilder[/OFS][OFS106]([/OFS][OFS88]new [/OFS][OFS88]Kybidu[/OFS][OFS88]([/OFS][OFS88])[/OFS].[OFS103]setParams[/OFS][OFS103]([/OFS][OFS91]Vibemod[/OFS].[OFS93]zysi[/OFS][OFS103],[/OFS][OFS101]{[/OFS]tip:[OFS100]param1[/OFS][OFS101]}[/OFS][OFS103])[/OFS][OFS106])[/OFS];
         this.[OFS110]text[/OFS].[OFS119]x[/OFS][OFS119]=[/OFS][OFS113]-290[/OFS];
         [OFS125]mouseEnabled[/OFS][OFS125]=[/OFS]false;
         [OFS132]mouseChildren[/OFS][OFS132]=[/OFS]false;
         [OFS141]addChild[/OFS][OFS141]([/OFS]this.[OFS138]text[/OFS][OFS141])[/OFS];
         [OFS144]return[/OFS];
      }
   }

}