package fytalis
{
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class Pyresir extends Panel
   {
      public function Pyresir(param1:GameSprite, param2:String, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.tob=new Guzowoja().setSize(18).setColor(16777215).setTextWidth(WIDTH).setHTML(true).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.tob.setBold(true);
         this.tob.setStringBuilder(new Kybidu().setParams(param2).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.tob.filters=[new DropShadowFilter(0,0,0)];
         this.tob.y=6;
         addChild(this.tob);
         this.namaqaloj=new Tivinu(16,param3);
         this.namaqaloj.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.namaqaloj.textChanged.addOnce(this.jap);
         addChild(this.namaqaloj);
         return;
      }

      private var tob:Guzowoja;

      protected var namaqaloj:Tivinu;

      private function jap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.namaqaloj.x=WIDTH/2-this.namaqaloj.width/2;
         this.namaqaloj.y=HEIGHT-this.namaqaloj.height-4;
         return;
      }

      protected function onButtonClick(param1:MouseEvent) : void {
         return;
      }
   }

}