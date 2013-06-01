package rucedosu
{
[CLASS418]   import warude.Panel;
   import pudev.Capitu;
   import totuhare.Zufi;
   import flash.text.TextFieldAutoSize;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.game.GameSprite;


   public class TextPanel extends Panel
   {
      public function TextPanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.foha();
         return;
      }

      private var tiluvo:Capitu;

      private var wutuwo:Number;

      private var jac:Number;

      public function init(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tiluvo.setStringBuilder(new Zufi().setParams(param1));
         this.tiluvo.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.tiluvo.x=WIDTH/2;
         this.tiluvo.y=HEIGHT/2;
         return;
      }

      private function foha() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tiluvo=new Capitu().setSize(16).setColor(16777215);
         this.tiluvo.setBold(true);
         this.tiluvo.setStringBuilder(new Zufi().setParams(Kefyfa.tobavi));
         this.tiluvo.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.tiluvo);
         return;
      }
   }
[/CLASS]
}