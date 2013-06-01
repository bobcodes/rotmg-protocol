package jehihe
{
[CLASS79]   import vofepimy.Mavoj;
   import syfuqycy.Totitig;
   import kirofyny.Tiqimav;
   import bikyvym.Voduzak;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;


   public class Qaqo extends Object
   {
      public function Qaqo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var keli:Mavoj;

      public var peg:Totitig;

      public var madeve:Tiqimav;

      public var wop:Voduzak;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.debug("execute");
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(this.keli);
         _loc1_.add(new Rewytoquk(this.madeve));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }
   }
[/CLASS]
}