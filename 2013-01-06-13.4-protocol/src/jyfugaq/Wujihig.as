package jyfugaq
{
[CLASS740]   import syfuqycy.Gyz;
   import vofepimy.Poheg;
   import syfuqycy.Totitig;
   import syfuqycy.Zutus;
   import syfuqycy.Motumeq;


   public class Wujihig extends Gyz implements Poheg
   {
      public function Wujihig() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var wivodeno:Nafehit;

      public var dera:Mawafuv;

      public var peg:Totitig;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(this.wivodeno);
         _loc1_.add(this.dera);
         _loc1_.lastly.add(this.teliqinac);
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function teliqinac(param1:Motumeq, param2:Boolean, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}