package warude
{
[CLASS549]   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class Suraniny extends Panel
   {
      public function Suraniny(param1:GameSprite, param2:String, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.danypifev=new Capitu().setSize(18).setColor(16777215).setTextWidth(WIDTH).setHTML(true).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER);
         this.danypifev.setBold(true);
         this.danypifev.setStringBuilder(new Zufi().setParams(param2).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.danypifev.filters=[new DropShadowFilter(0,0,0)];
         this.danypifev.y=6;
         addChild(this.danypifev);
         this.faguki=new Cid(16,param3);
         this.faguki.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.faguki.textChanged.addOnce(this.boqopo);
         addChild(this.faguki);
         return;
      }

      private var danypifev:Capitu;

      protected var faguki:Cid;

      private function boqopo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.faguki.x=WIDTH/2-this.faguki.width/2;
         this.faguki.y=HEIGHT-this.faguki.height-4;
         return;
      }

      protected function onButtonClick(param1:MouseEvent) : void {
         return;
      }
   }
[/CLASS]
}