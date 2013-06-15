package fysy
{
   import tytojonib.Kyjefe;
   import lemugo.Wokycuku;
   import pomujukir.Bemivu;
   import dicyl.Sytidyha;
   import waryp.Letu;
   import wahyqise.Gecekat;


   public class Demy extends Kyjefe
   {
      public function Demy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Dovo;

      public var model:Wokycuku;

      public var syfu:Bemivu;

      public var play:Sytidyha;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = this.model.hasAvailableCharSlot();
         this.view.vukib(_loc1_);
         if(_loc1_)
         {
            this.view.play.addOnce(this.dekasim);
         }
         this.view.back.addOnce(this.gomeranem);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.back.remove(this.gomeranem);
         this.view.play.remove(this.dekasim);
         return;
      }

      private function gomeranem() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syfu.dispatch(new Letu());
         return;
      }

      private function dekasim() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gecekat = new Gecekat();
         _loc1_.tumap=true;
         _loc1_.charId=this.model.hidehab();
         _loc1_.zad=-1;
         _loc1_.jecoryt=true;
         this.play.dispatch(_loc1_);
         return;
      }
   }

}