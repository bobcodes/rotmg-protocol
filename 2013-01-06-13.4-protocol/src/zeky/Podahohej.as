package zeky
{
[CLASS112]   import tehakab.Copaqufiv;
   import dylaqezo.Vusun;
   import zukaj.Woqoqe;
   import syfuqycy.Totitig;
   import kirofyny.Hehuf;
   import tehakab.Dur;
   import tidi.Vujiru;


   public class Podahohej extends Object
   {
      public function Podahohej() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var skin:Copaqufiv;

      public var model:Vusun;

      public var pitegum:Woqoqe;

      public var peg:Totitig;

      public var lyhog:Hehuf;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.pada())
         {
            this.pisonode();
         }
         return;
      }

      private function pisonode() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.jumyceg())
         {
            this.jado();
         }
         else
         {
            this.jyg();
         }
         return;
      }

      private function pada() : Boolean {
         return this.skin.farydowu()==Dur.PURCHASABLE;
      }

      private function jumyceg() : Boolean {
         return this.model.gagesuno()>=this.skin.cost;
      }

      private function jado() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.peg.add(this.pitegum);
         this.pitegum.start();
         return;
      }

      private function jyg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new Vujiru());
         return;
      }
   }
[/CLASS]
}