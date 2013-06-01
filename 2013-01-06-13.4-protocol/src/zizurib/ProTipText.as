package zizurib
{
[CLASS1166]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import totuhare.Zufi;
   import haqakel.Kefyfa;


   public class ProTipText extends Sprite
   {
      public function ProTipText() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var text:Capitu;

      public function lubo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text=new Capitu().setSize(18).setColor(16777215).setWordWrap(true).setMultiLine(true).setTextWidth(580).setTextHeight(100).setHorizontalAlign(TextFormatAlign.CENTER);
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.text.setStringBuilder(new Zufi().setParams(Kefyfa.nezyseli,{tip:param1}));
         this.text.x=-290;
         mouseEnabled=false;
         mouseChildren=false;
         addChild(this.text);
         return;
      }
   }
[/CLASS]
}