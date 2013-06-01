package tazomupa
{
[CLASS750]   import vofepimy.Kipupaqy;
   import kyhawibyc.Fapu;
   import syfuqycy.Totitig;
   import kirofyny.Hehuf;
   import rysuho.Zubusuge;
   import dutes.Rumevo;
   import dutes.Vyzynos;
   import dutes.Luzuqo;
   import syfuqycy.Nizus;
   import syfuqycy.Motumeq;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import tizozowof.KongregateAccountDetailDialog;
   import jezi.Pyruleq;


   public class Ryjowi extends Object
   {
      public function Ryjowi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pitegum:Kipupaqy;

      public var data:Fapu;

      public var peg:Totitig;

      public var lyhog:Hehuf;

      public var update:Zubusuge;

      public var pukyso:Rumevo;

      public var retero:Vyzynos;

      public var bejony:Luzuqo;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nizus = new Nizus(this.pitegum,this.tisehi(),this.jumyqake());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function tisehi() : Motumeq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.bejony));
         _loc1_.add(new Rewytoquk(this.lyhog,new KongregateAccountDetailDialog()));
         _loc1_.add(new Rewytoquk(this.update));
         _loc1_.add(new Rewytoquk(this.pukyso,this.jagegy()));
         return _loc1_;
      }

      private function jumyqake() : Motumeq {
         return new Rewytoquk(this.retero,this.pitegum);
      }

      private function jagegy() : Pyruleq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="linkKongregateAccount";
         return _loc1_;
      }
   }
[/CLASS]
}