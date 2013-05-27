package peciryf
{
   import wegyluke.Hez;
   import kat.MoneyFrame;


   public class Lizyk extends Object
   {
      public function Lizyk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new MoneyFrame());
         return;
      }
   }

}