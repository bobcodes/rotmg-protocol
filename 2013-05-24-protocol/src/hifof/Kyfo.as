package hifof
{
[CLASS9]   import komawowag.Silikyta;
   import kyco.Nun;
   import voto.Cala;
   import lagizizoq.Mys;
   import voto.Nemo;
   import kogyc.Lifew;
   import tasig.Zyhifo;
   import tasig.Lyfijo;
   import tasig.Miwe;
   import jiha.Kysysine;
   import leji.Qavazit;


   public class Kyfo extends Object implements Silikyta
   {
      public function Kyfo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var data:Cala;

      public var davyl:Mys;

      public function configure() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Nemo = this.data.jeluf();
         switch(_loc1_)
         {
            case Nemo.codyjyj:
               this.dec();
               break;
            case Nemo.cag:
            case Nemo.luhosusa:
               this.piqawa();
               break;
            default:
               this.lijomeh();
         }
         return;
      }

      private function piqawa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Lifew).lyvov(Zyhifo);
         return;
      }

      private function dec() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Lifew).cufypy(this.cacihed());
         return;
      }

      private function cacihed() : Lyfijo {
         return new Lyfijo().setIP(this.data.higodoqo());
      }

      private function lijomeh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cemohoqal.map(Lifew).lyvov(Miwe);
         this.davyl.map(Kysysine).bez(Qavazit);
         return;
      }
   }

}