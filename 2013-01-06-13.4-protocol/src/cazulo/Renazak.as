package cazulo
{
[CLASS731]   import vofepimy.Kipupaqy;
   import kyhawibyc.Fapu;
   import syfuqycy.Totitig;
   import kirofyny.Hehuf;
   import dutes.Rumevo;
   import rysuho.Zubusuge;
   import dutes.Vyzynos;
   import dutes.Luzuqo;
   import syfuqycy.Nizus;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import tegopegyz.SteamAccountDetailDialog;
   import jezi.Pyruleq;
   import syfuqycy.Motumeq;


   public class Renazak extends Object
   {
      public function Renazak() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pitegum:Kipupaqy;

      public var data:Fapu;

      public var peg:Totitig;

      public var lyhog:Hehuf;

      public var pukyso:Rumevo;

      public var update:Zubusuge;

      public var retero:Vyzynos;

      public var bejony:Luzuqo;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nizus = new Nizus(this.pitegum,this.husafy(),this.ryzucy());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function husafy() : Zutus {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.bejony));
         _loc1_.add(new Rewytoquk(this.pukyso,this.jagegy()));
         _loc1_.add(new Rewytoquk(this.update));
         _loc1_.add(new Rewytoquk(this.lyhog,new SteamAccountDetailDialog()));
         return _loc1_;
      }

      private function jagegy() : Pyruleq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="linkSteamAccount";
         return _loc1_;
      }

      private function ryzucy() : Motumeq {
         return new Rewytoquk(this.retero,this.pitegum);
      }
   }
[/CLASS]
}