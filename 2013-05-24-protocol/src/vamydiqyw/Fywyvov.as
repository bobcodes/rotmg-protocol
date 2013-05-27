package vamydiqyw
{
   import com.company.assembleegameclient.ui.Tecym;
   import movimet.Lufub;
   import movimet.Riwemeno;
   import nec.Sire;


   public class Fywyvov extends Tecym
   {
      public function Fywyvov(param1:int, param2:String, param3:int=0) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param3);
         debiryno(param1);
         text_.setStringBuilder(new Sire().setParams(param2));
         initText();
         return;
      }

      override protected function makeText() : Lufub {
         return new Riwemeno();
      }
   }

}