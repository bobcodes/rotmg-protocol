package gepa
{
   import qov.Kalefu;
   import wegyluke.Hez;
   import zoroc.Taqosohuf;
   import pujo.Vitibuc;
   import kyco.Nun;
   import fidymu.Ditymuh;
   import zoroc.Gipi;
   import bisok.Mynaqu;
   import nas.ErrorDialog;


   public class Rubalu extends Kalefu
   {
      public function Rubalu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Mabo;

      public var naval:Hez;

      public var paqocahu:Taqosohuf;

      public var lydufady:Vitibuc;

      public var cemohoqal:Nun;

      private const ryvoqum:String = "Pets.fuseError";

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.init(this.paqocahu);
         this.view.sozy.add(this.risohukit);
         this.view.huvi.add(this.tyziworuk);
         this.view.fiwabivy.add(this.jepimuguj);
         this.view.closed.addOnce(this.pomuwok);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.sozy.remove(this.risohukit);
         this.view.huvi.remove(this.tyziworuk);
         this.view.fiwabivy.remove(this.jepimuguj);
         return;
      }

      private function risohukit(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.paqocahu.caller=Mabo;
         this.paqocahu.selected=param1;
         this.naval.dispatch(this.cemohoqal.getInstance(Ditymuh));
         return;
      }

      private function jepimuguj(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Gipi = null;
         if(this.paqocahu.donekecip())
         {
            _loc2_=new Gipi(this.paqocahu.puda.gutod(),this.paqocahu.wehyte.gutod(),Mynaqu.gop);
            this.pomuwok();
            this.lydufady.dispatch(_loc2_);
         }
         else
         {
            this.naval.dispatch(new ErrorDialog(this.ryvoqum));
         }
         return;
      }

      private function tyziworuk(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Gipi = null;
         if(this.paqocahu.donekecip())
         {
            _loc2_=new Gipi(this.paqocahu.puda.gutod(),this.paqocahu.wehyte.gutod(),Mynaqu.binuli);
            this.pomuwok();
            this.lydufady.dispatch(_loc2_);
         }
         else
         {
            this.naval.dispatch(new ErrorDialog(this.ryvoqum));
         }
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paqocahu.clear();
         return;
      }
   }

}