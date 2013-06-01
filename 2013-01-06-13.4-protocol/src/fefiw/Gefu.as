package fefiw
{
[CLASS650]   import cejyva.Qak;
   import tinava.Dab;
   import zehus.Kelapu;


   public class Gefu extends Qak
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gefu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(MESSAGE);
         this.close=new Kelapu(this,LEFT_BUTTON);
         return;
      }

      private static const MESSAGE:String = "Failed to retrieve valid Kabam request! Click to reload.";

      public var close:Dab;
   }
[/CLASS]
}