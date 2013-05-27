package vaqob
{
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class Wutifuh extends Panel
   {
      public function Wutifuh(param1:GameSprite, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.pevyh=new Lufub().setSize(18).setColor(16777215).setTextWidth(WIDTH).setHTML(true).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.pevyh.setBold(true);
         this.pevyh.setStringBuilder(new Sire().setParams(param2).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.pevyh.filters=[new DropShadowFilter(0,0,0)];
         this.pevyh.y=6;
         addChild(this.pevyh);
         this.mer=new Dogyqijec(16,param3);
         this.mer.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.mer.textChanged.addOnce(this.joqucohik);
         addChild(this.mer);
         return;
      }

      private var pevyh:Lufub;

      protected var mer:Dogyqijec;

      private function joqucohik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mer.x=WIDTH/2-this.mer.width/2;
         this.mer.y=HEIGHT-this.mer.height-4;
         return;
      }

      protected function onButtonClick(param1:MouseEvent) : void {
         return;
      }
   }

}