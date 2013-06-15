package vysob
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import mukyrosu.Qanyduk;


   public class Jysymo extends Kyjefe
   {
      public function Jysymo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pevojal:Voni;

      public var maliqoji:Lebovas;

      private var qosuqa:Qanyduk;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qosuqa=this.pevojal.dadezum();
         this.qosuqa.add(this.lyb);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.maliqoji.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qosuqa.remove(this.lyb);
         return;
      }
   }

}