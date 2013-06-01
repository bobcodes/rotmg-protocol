package coh
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import hif.Qynaj;
   import hif.Rorody;
   import zoroc.Taqosohuf;
   import zoroc.Bezuco;
   import qucuqesif.Rasoqymi;


   public class PetFeeder extends Sprite
   {
      public function PetFeeder() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.quhy=new Qynaj();
         this.bebujyret=Rasoqymi.cyce();
         this.piqitogo=Rasoqymi.sulerahe();
         super();
         addChild(this.quhy);
         addChild(this.bebujyret);
         addChild(this.piqitogo);
         this.quhy.sozy.addOnce(this.risohukit);
         this.piqitogo.wupowaj.add(this.temuly);
         this.piqitogo.jom.add(this.bacyd);
         return;
      }

      public const sozy:Hugyqufyq = new Hugyqufyq();

      public const rajas:Hugyqufyq = new Hugyqufyq(Boolean,Bezuco);

      public const fipedyma:Hugyqufyq = new Hugyqufyq(Bezuco);

      private var quhy:Qynaj;

      private var bebujyret:Duhi;

      private var piqitogo:Rorody;

      private var state:Taqosohuf;

      public function initialize(param1:Taqosohuf) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.state=param1;
         this.tavulaju(this.state.puda);
         this.update();
         return;
      }

      public function tavulaju(param1:Bezuco) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.quhy.tavulaju(param1);
         if(param1)
         {
            this.fipedyma.dispatch(param1);
         }
         return;
      }

      public function kogoweco() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.state.beh=-1;
         this.state.vupu=-1;
         this.state.mym=-1;
         this.piqitogo.qoqiba();
         this.update();
         return;
      }

      private function bacyd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.state.beh=-1;
         this.state.vupu=-1;
         this.state.mym=-1;
         this.update();
         return;
      }

      private function temuly(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.state.beh=param1;
         this.update();
         return;
      }

      private function update() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.darinum();
         this.rajas.dispatch(this.state.wiherisuk(),this.state.puda);
         return;
      }

      private function risohukit() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sozy.dispatch();
         return;
      }

      public function darinum() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.state.wiherisuk())
         {
            this.bebujyret.kyfefak(true);
            this.piqitogo.kyfefak(true);
            this.quhy.kyfefak(true);
         }
         else
         {
            this.piqitogo.kyfefak(this.state.beh==-1);
            this.quhy.kyfefak(this.state.puda==null);
            this.bebujyret.kyfefak(false);
         }
         return;
      }

      public function basisi(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piqitogo.basisi(param1);
         this.quhy.basisi(param1);
         if(param1)
         {
            this.bebujyret.kyfefak(false);
            this.piqitogo.kyfefak(false);
            this.quhy.kyfefak(false);
         }
         else
         {
            this.update();
         }
         return;
      }
   }

}