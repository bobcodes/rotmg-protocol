package cazulo
{
[CLASS729]   import kyhawibyc.Fapu;
   import vofepimy.Karakicy;
   import syfuqycy.Totitig;
   import rysuho.Zubusuge;
   import kirofyny.Hehuf;
   import dutes.Vyzynos;
   import syfuqycy.Nizus;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import tegopegyz.SteamAccountDetailDialog;
   import syfuqycy.Motumeq;


   public class Five extends Object
   {
      public function Five() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:Fapu;

      public var pitegum:Karakicy;

      public var peg:Totitig;

      public var update:Zubusuge;

      public var lyhog:Hehuf;

      public var retero:Vyzynos;

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
         _loc1_.add(new Rewytoquk(this.update));
         _loc1_.add(new Rewytoquk(this.lyhog,new SteamAccountDetailDialog()));
         return _loc1_;
      }

      private function ryzucy() : Motumeq {
         return new Rewytoquk(this.retero,this.pitegum);
      }
   }
[/CLASS]
}