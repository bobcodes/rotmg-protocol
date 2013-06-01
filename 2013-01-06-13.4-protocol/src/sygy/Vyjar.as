package sygy
{
[CLASS680]   import vofepimy.Zabi;
   import syfuqycy.Totitig;
   import dutes.Vyzynos;
   import kirofyny.Hehuf;
   import syfuqycy.Capafa;
   import syfuqycy.Rewytoquk;
   import zegacymo.WebLoginDialog;
   import syfuqycy.Nizus;


   public class Vyjar extends Object
   {
      public function Vyjar() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var email:String;

      public var pitegum:Zabi;

      public var peg:Totitig;

      public var retero:Vyzynos;

      public var lyhog:Hehuf;

      public function execute() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Capafa = new Capafa();
         _loc1_.add(new Rewytoquk(this.lyhog,new WebLoginDialog()));
         var _loc2_:Capafa = new Capafa();
         _loc2_.add(new Rewytoquk(this.retero,this.pitegum));
         var _loc3_:Nizus = new Nizus(this.pitegum,_loc1_,_loc2_);
         this.peg.add(_loc3_);
         _loc3_.start();
         return;
      }
   }
[/CLASS]
}