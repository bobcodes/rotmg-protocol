package naqo
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import rahaq.Nokozizab;
   import rahaq.Lavah;
   import rahaq.Hune;


   public class Peheqofup extends Sprite
   {
      public function Peheqofup() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(Nokozizab.gehepu());
         this.fusula=new Lavah(this);
         this.pob=new Hune(this);
         alpha=0;
         return;
      }

      public const zaqup:Hugyqufyq = new Hugyqufyq();

      public var fusula:Wifuw;

      public var pob:Wifuw;

      public function play() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fusula.mediqahuz(this.dajysi);
         this.fusula.start();
         return;
      }

      private function dajysi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zaqup.dispatch();
         this.pob.start();
         return;
      }
   }

}