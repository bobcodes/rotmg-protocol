package zycysoj
{
   import poho.Pom;
   import lemugo.Wokycuku;
   import zufi.Syta;
   import gycu.Feliro;
   import cizagamym.Boquzojul;
   import poho.Bul;
   import wenono.Jiwir;


   public class Cid extends Object
   {
      public function Cid() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var skin:Pom;

      public var model:Wokycuku;

      public var zop:Syta;

      public var bilizaw:Feliro;

      public var ridecy:Boquzojul;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.jofoduryv())
         {
            this.fyhas();
         }
         return;
      }

      private function fyhas() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.becaw())
         {
            this.quvos();
         }
         else
         {
            this.codysa();
         }
         return;
      }

      private function jofoduryv() : Boolean {
         return this.skin.dukat()==Bul.PURCHASABLE;
      }

      private function becaw() : Boolean {
         return this.model.pucutad()>=this.skin.cost;
      }

      private function quvos() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bilizaw.add(this.zop);
         this.zop.start();
         return;
      }

      private function codysa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new Jiwir());
         return;
      }
   }

}