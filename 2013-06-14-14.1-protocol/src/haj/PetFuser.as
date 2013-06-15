package haj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import kyjunys.Jebut;
   import fanij.Mitat;
   import fanij.Cun;
   import fypeba.Zikorur;


   public class PetFuser extends Sprite
   {
      public function PetFuser() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kifiny=new Jebut();
         this.dybow=Zikorur.qipub();
         this.bupehukij=Zikorur.cimo();
         super();
         this.kifiny.nihyc=true;
         addChild(this.kifiny);
         addChild(this.dybow);
         addChild(this.bupehukij);
         this.kifiny.toreg.addOnce(this.saliza);
         this.bupehukij.toreg.addOnce(this.syc);
         return;
      }

      public const toreg:Qanyduk = new Qanyduk(String);

      private var kifiny:Jebut;

      private var dybow:Guqy;

      private var bupehukij:Jebut;

      private var state:Mitat;

      public function initialize(param1:Mitat) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.state=param1;
         this.dovasadib(this.state.baluq,Mitat.LEFT);
         if(this.state.ticowob)
         {
            this.dovasadib(this.state.ticowob,Mitat.RIGHT);
         }
         this.cacefiw();
         return;
      }

      public function dovasadib(param1:Cun, param2:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Jebut = null;
         if(param1)
         {
            _loc3_=param2==Mitat.LEFT?this.kifiny:this.bupehukij;
            _loc3_.dovasadib(param1);
         }
         return;
      }

      private function saliza() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.toreg.dispatch(Mitat.LEFT);
         return;
      }

      private function syc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.toreg.dispatch(Mitat.RIGHT);
         return;
      }

      public function cacefiw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.state.remytyto())
         {
            this.dybow.vicy(true);
            this.bupehukij.vicy(true);
            this.kifiny.vicy(true);
         }
         else
         {
            this.bupehukij.vicy(this.state.ticowob==null);
            this.kifiny.vicy(this.state.baluq==null);
            this.dybow.vicy(false);
         }
         return;
      }
   }

}