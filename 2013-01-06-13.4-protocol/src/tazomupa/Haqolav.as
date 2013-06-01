package tazomupa
{
[CLASS756]   import vofepimy.Tyw;
   import syfuqycy.Totitig;
   import nylos.Wokawupy;
   import syfuqycy.Nizus;
   import syfuqycy.Rewytoquk;


   public class Haqolav extends Object
   {
      public function Haqolav() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var buw:Tyw;

      public var peg:Totitig;

      public var refresh:Wokawupy;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nizus = new Nizus(this.buw);
         _loc1_.hujufy(new Rewytoquk(this.refresh));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }
   }
[/CLASS]
}