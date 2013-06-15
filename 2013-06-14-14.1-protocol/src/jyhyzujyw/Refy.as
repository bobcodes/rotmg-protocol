package jyhyzujyw
{
   import taz.Command;
   import cizagamym.Boquzojul;
   import racitagy.Gelyz;


   public class Refy extends Command
   {
      public function Refy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var petName:String;

      public var qotyla:int;

      public var ridecy:Boquzojul;

      override public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new Gelyz(this.petName,this.qotyla));
         return;
      }
   }

}