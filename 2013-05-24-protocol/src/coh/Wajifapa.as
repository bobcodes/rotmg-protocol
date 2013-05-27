package coh
{
   import povopito.Ryduwi;
   import flash.display.Sprite;
   import movimet.Lufub;
   import zoroc.Vugusyqik;
   import nec.Sire;
   import qucuqesif.Qemo;
   import qucuqesif.Rasoqymi;


   public class Wajifapa extends Ryduwi
   {
      public function Wajifapa(param1:Vugusyqik) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(3552822,1,16777215,1,true);
         this.zamipifij.setTextWidth(200).setWordWrap(true);
         this.bewe=param1;
         this.qohinep();
         this.ribipucow();
         return;
      }

      private const sub:Sprite = new Sprite();

      private const cimisyw:Lufub = Rasoqymi.riguwyn(16777215,16,true,true);

      private const zamipifij:Lufub = Rasoqymi.riguwyn(16777215,14,false,true);

      private var bewe:Vugusyqik;

      private function ribipucow() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         jiguvovu.push(this.cimisyw.textChanged);
         jiguvovu.push(this.zamipifij.textChanged);
         this.cimisyw.setStringBuilder(new Sire().setParams(this.bewe.name));
         this.zamipifij.setStringBuilder(new Sire().setParams(this.bewe.description));
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sub.addChild(this.cimisyw);
         this.sub.addChild(this.zamipifij);
         addChild(this.sub);
         return;
      }

      override protected function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cimisyw.x=Qemo.kidugifi;
         this.cimisyw.y=Qemo.jufepit;
         this.zamipifij.x=Qemo.kidugifi;
         this.zamipifij.y=this.cimisyw.y+this.cimisyw.height;
         return;
      }
   }

}