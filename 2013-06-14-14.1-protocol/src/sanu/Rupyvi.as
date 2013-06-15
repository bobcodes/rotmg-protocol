package sanu
{
   import vilova.Wyt;
   import gycu.Feliro;
   import pomujukir.Doli;
   import cizagamym.Boquzojul;
   import gycu.Nijo;
   import gycu.Levoje;
   import gabufo.WebLoginDialog;
   import gycu.Befa;


   public class Rupyvi extends Object
   {
      public function Rupyvi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var email:String;

      public var zop:Wyt;

      public var bilizaw:Feliro;

      public var dinene:Doli;

      public var ridecy:Boquzojul;

      public function execute() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Nijo = new Nijo();
         _loc1_.add(new Levoje(this.ridecy,new WebLoginDialog()));
         var _loc2_:Nijo = new Nijo();
         _loc2_.add(new Levoje(this.dinene,this.zop));
         var _loc3_:Befa = new Befa(this.zop,_loc1_,_loc2_);
         this.bilizaw.add(_loc3_);
         _loc3_.start();
         return;
      }
   }

}