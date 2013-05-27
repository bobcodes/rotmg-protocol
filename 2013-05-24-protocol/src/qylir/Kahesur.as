package qylir
{
   import qov.Kalefu;
   import vaqob.Rysyfuhyv;
   import hotewa.Lug;
   import zoroc.Gecezyw;
   import com.company.assembleegameclient.objects.Putafyhil;
   import com.company.assembleegameclient.objects.Pet;


   public class Kahesur extends Kalefu
   {
      public function Kahesur() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Rysyfuhyv;

      public var lofylise:Lug;

      public var duqa:Gecezyw;

      private var ciz:Putafyhil;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.vituno=this.bulupijeb;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      public function bulupijeb() : Putafyhil {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.piqik())
         {
            this.ciz=this.lofylise.qypat;
         }
         return this.ciz;
      }

      private function piqik() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.lofylise.qypat is Pet?this.zobasojoh():true;
      }

      private function zobasojoh() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.ciz&&(this.quciqypoz()))
         {
            return true;
         }
         if(this.ciz is Pet&&(this.quciqypoz())&&!(Pet(this.lofylise.qypat).qocuseho.gutod()==Pet(this.ciz).qocuseho.gutod()))
         {
            return true;
         }
         return false;
      }

      private function quciqypoz() : Boolean {
         return this.duqa.quciqypoz(this.view.gs_.map);
      }
   }

}