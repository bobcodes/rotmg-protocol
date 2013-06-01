package sygy
{
[CLASS702]   import vofepimy.Judujimu;
   import syfuqycy.Totitig;
   import kirofyny.Tiqimav;
   import kirofyny.Hehuf;
   import dutes.Vyzynos;
   import dutes.Rumevo;
   import syfuqycy.Nizus;
   import syfuqycy.Motumeq;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import zegacymo.WebAccountDetailDialog;
   import jezi.Pyruleq;


   public class Ruqug extends Object
   {
      public function Ruqug() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pitegum:Judujimu;

      public var peg:Totitig;

      public var close:Tiqimav;

      public var lyhog:Hehuf;

      public var fasefesak:Vyzynos;

      public var pukyso:Rumevo;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nizus = new Nizus(this.pitegum,this.wesar(),this.gewotag());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function wesar() : Motumeq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.pukyso,this.qazewaf()));
         _loc1_.add(new Rewytoquk(this.lyhog,new WebAccountDetailDialog()));
         return _loc1_;
      }

      private function gewotag() : Motumeq {
         return new Rewytoquk(this.fasefesak,this.pitegum);
      }

      private function qazewaf() : Pyruleq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="passwordChanged";
         return _loc1_;
      }
   }
[/CLASS]
}