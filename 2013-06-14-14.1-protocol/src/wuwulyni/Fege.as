package wuwulyni
{
   import gycu.Siv;
   import vilova.Sekevizi;
   import gycu.Feliro;
   import gycu.Begotyl;
   import gycu.Cyqe;


   public class Fege extends Siv implements Sekevizi
   {
      public function Fege() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var rivugife:Kizedi;

      public var pedavitu:Jowygon;

      public var bilizaw:Feliro;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(this.rivugife);
         _loc1_.add(this.pedavitu);
         _loc1_.lastly.add(this.cytoj);
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function cytoj(param1:Cyqe, param2:Boolean, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         dom(true);
         return;
      }
   }

}