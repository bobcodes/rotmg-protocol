package ripu
{
   import dopumitud.Hazagoty;
   import gag.Gawu;
   import raqu.Zer;
   import wegyluke.Hez;
   import gag.Pocah;
   import gag.Myzawob;
   import mafu.WebLoginDialog;
   import gag.Poh;


   public class Gycozyv extends Object
   {
      public function Gycozyv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var email:String;

      public var zoritu:Hazagoty;

      public var rurusedi:Gawu;

      public var nocig:Zer;

      public var naval:Hez;

      public function execute() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Pocah = new Pocah();
         _loc1_.add(new Myzawob(this.naval,new WebLoginDialog()));
         var _loc2_:Pocah = new Pocah();
         _loc2_.add(new Myzawob(this.nocig,this.zoritu));
         var _loc3_:Poh = new Poh(this.zoritu,_loc1_,_loc2_);
         this.rurusedi.add(_loc3_);
         _loc3_.start();
         return;
      }
   }

}