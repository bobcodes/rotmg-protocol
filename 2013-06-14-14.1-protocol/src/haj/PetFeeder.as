package haj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import kyjunys.Jebut;
   import kyjunys.Qajul;
   import fanij.Mitat;
   import fanij.Cun;
   import fypeba.Zikorur;


   public class PetFeeder extends Sprite
   {
      public function PetFeeder() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kifiny=new Jebut();
         this.dybow=Zikorur.qipub();
         this.bupehukij=Zikorur.dyluwac();
         super();
         addChild(this.kifiny);
         addChild(this.dybow);
         addChild(this.bupehukij);
         this.kifiny.toreg.addOnce(this.bewoj);
         this.bupehukij.dukujokon.add(this.tulapi);
         this.bupehukij.gure.add(this.bofe);
         return;
      }

      public const toreg:Qanyduk = new Qanyduk();

      public const rybaneha:Qanyduk = new Qanyduk(Boolean,Cun);

      public const bucibeqi:Qanyduk = new Qanyduk(Cun);

      private var kifiny:Jebut;

      private var dybow:Guqy;

      private var bupehukij:Qajul;

      private var state:Mitat;

      public function initialize(param1:Mitat) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.state=param1;
         this.dovasadib(this.state.baluq);
         this.update();
         return;
      }

      public function dovasadib(param1:Cun) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kifiny.dovasadib(param1);
         if(param1)
         {
            this.bucibeqi.dispatch(param1);
         }
         return;
      }

      public function hirajy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.state.puc=-1;
         this.state.mypu=-1;
         this.state.bykano=-1;
         this.bupehukij.syhikojik();
         this.update();
         return;
      }

      private function bofe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state.puc=-1;
         this.state.mypu=-1;
         this.state.bykano=-1;
         this.update();
         return;
      }

      private function tulapi(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.state.puc=param1;
         this.update();
         return;
      }

      private function update() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cacefiw();
         this.rybaneha.dispatch(this.state.gobodif(),this.state.baluq);
         return;
      }

      private function bewoj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.toreg.dispatch();
         return;
      }

      public function cacefiw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state.gobodif())
         {
            this.dybow.vicy(true);
            this.bupehukij.vicy(true);
            this.kifiny.vicy(true);
         }
         else
         {
            this.bupehukij.vicy(this.state.puc==-1);
            this.kifiny.vicy(this.state.baluq==null);
            this.dybow.vicy(false);
         }
         return;
      }

      public function jaw(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bupehukij.jaw(param1);
         this.kifiny.jaw(param1);
         if(param1)
         {
            this.dybow.vicy(false);
            this.bupehukij.vicy(false);
            this.kifiny.vicy(false);
         }
         else
         {
            this.update();
         }
         return;
      }
   }

}