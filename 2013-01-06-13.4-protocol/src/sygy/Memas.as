package sygy
{
[CLASS670]   import vofepimy.Karakicy;
   import syfuqycy.Totitig;
   import dutes.Vyzynos;
   import rysuho.Zubusuge;
   import kirofyny.Hehuf;
   import dutes.Rumevo;
   import syfuqycy.Nizus;
   import syfuqycy.Motumeq;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import zegacymo.WebAccountDetailDialog;
   import jezi.Pyruleq;


   public class Memas extends Object
   {
      public function Memas() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pitegum:Karakicy;

      public var peg:Totitig;

      public var retero:Vyzynos;

      public var mijezymul:Zubusuge;

      public var lyhog:Hehuf;

      public var pukyso:Rumevo;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nizus = new Nizus(this.pitegum,this.wesar(),this.gewotag());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function wesar() : Motumeq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.pukyso,this.jagegy()));
         _loc1_.add(new Rewytoquk(this.mijezymul));
         _loc1_.add(new Rewytoquk(this.lyhog,new WebAccountDetailDialog()));
         return _loc1_;
      }

      private function gewotag() : Rewytoquk {
         return new Rewytoquk(this.retero,this.pitegum);
      }

      private function jagegy() : Pyruleq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="accountRegistered";
         return _loc1_;
      }
   }
[/CLASS]
}