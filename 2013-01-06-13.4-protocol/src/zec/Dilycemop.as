package zec
{
[CLASS315]   import tysenyzy.Zovisis;
   import qypupet.Tuhyfutos;
   import bocak.Vopiho;
   import leselo.Account;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import qypupet.Nywimel;
   import qypupet.Gucuqop;
   import qypupet.Hatozaq;


   public class Dilycemop extends Zovisis
   {
      public function Dilycemop() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:YardUpgraderView;

      public var gadavuf:Tuhyfutos;

      public var gyjoj:Vopiho;

      public var account:Account;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      override public function initialize() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Nywimel = new Nywimel();
         var _loc2_:int = this.gadavuf.wofuzuzu();
         var _loc3_:int = _loc2_<Gucuqop.lavadak.dafeweqif?Gucuqop.cep(_loc2_+1).dafeweqif:Gucuqop.lavadak.dafeweqif;
         _loc1_.qom=Gucuqop.cep(_loc2_).value;
         _loc1_.bicunabe=Gucuqop.cep(_loc3_).value;
         _loc1_.gefyma=this.gadavuf.qijegawan();
         _loc1_.bekif=this.gadavuf.cyko();
         this.view.init(_loc1_);
         this.view.buniwyr.add(this.qehahoq);
         this.view.qosenic.add(this.tarini);
         return;
      }

      private function tarini(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.faqewuwi(0);
         return;
      }

      private function qehahoq(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.faqewuwi(1);
         return;
      }

      private function faqewuwi(param1:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = this.gadavuf.pybatah();
         var _loc3_:Hatozaq = new Hatozaq(_loc2_,param1);
         this.madeve.dispatch();
         this.gyjoj.dispatch(_loc3_);
         return;
      }
   }
[/CLASS]
}