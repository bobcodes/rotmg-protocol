package fyvanod
{
[CLASS955]   import pigeguwo.Jazyv;
   import flash.display.Sprite;
   import pudev.Capitu;
   import qypupet.Zazeseca;
   import totuhare.Zufi;
   import kozaligov.Cinijyt;
   import kozaligov.Bapipe;


   public class Towoq extends Jazyv
   {
      public function Towoq(param1:Zazeseca) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(3552822,1,16777215,1,true);
         this.jihubomal.setTextWidth(200).setWordWrap(true);
         this.gevudavip=param1;
         this.mipuguc();
         this.zawiqur();
         return;
      }

      private const cado:Sprite = new Sprite();

      private const vinuraj:Capitu = Bapipe.nopu(16777215,16,true,true);

      private const jihubomal:Capitu = Bapipe.nopu(16777215,14,false,true);

      private var gevudavip:Zazeseca;

      private function zawiqur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         juwocez.push(this.vinuraj.textChanged);
         juwocez.push(this.jihubomal.textChanged);
         this.vinuraj.setStringBuilder(new Zufi().setParams(this.gevudavip.name));
         this.jihubomal.setStringBuilder(new Zufi().setParams(this.gevudavip.description));
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cado.addChild(this.vinuraj);
         this.cado.addChild(this.jihubomal);
         addChild(this.cado);
         return;
      }

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vinuraj.x=Cinijyt.hutuly;
         this.vinuraj.y=Cinijyt.jynufaso;
         this.jihubomal.x=Cinijyt.hutuly;
         this.jihubomal.y=this.vinuraj.y+this.vinuraj.height;
         return;
      }
   }
[/CLASS]
}