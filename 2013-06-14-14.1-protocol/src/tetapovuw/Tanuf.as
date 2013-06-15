package tetapovuw
{
   import vysob.Qofu;
   import mukyrosu.Qanyduk;
   import qykifavol.Rulavowaz;


   public class Tanuf extends Qofu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tanuf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(MESSAGE);
         this.close=new Rulavowaz(this,LEFT_BUTTON);
         return;
      }

      private static const MESSAGE:String = "Failed to retrieve valid Kabam request! Click to reload.";

      public var close:Qanyduk;
   }

}