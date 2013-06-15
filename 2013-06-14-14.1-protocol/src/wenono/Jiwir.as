package wenono
{
   import vysob.Dialog;
   import mukyrosu.Qanyduk;
   import komi.Vibemod;
   import qykifavol.Rulavowaz;


   public class Jiwir extends Dialog
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jiwir() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Vibemod.gavu,Vibemod.lizuguwob,Vibemod.diqysyk,Vibemod.nebequ,koda);
         this.cancel=new Rulavowaz(this,LEFT_BUTTON);
         this.vikedis=new Rulavowaz(this,RIGHT_BUTTON);
         return;
      }

      private static const koda:String = "/notEnoughGold";

      public var cancel:Qanyduk;

      public var vikedis:Qanyduk;
   }

}