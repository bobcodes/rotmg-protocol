package parivyt
{
[CLASS967]   import com.company.assembleegameclient.ui.Falap;
   import pudev.Capitu;
   import pudev.Qabyhofol;
   import totuhare.Zufi;


   public class Tasofo extends Falap
   {
      public function Tasofo(param1:int, param2:String, param3:int=0) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param3);
         cyjobate(param1);
         text_.setStringBuilder(new Zufi().setParams(param2));
         initText();
         return;
      }

      override protected function makeText() : Capitu {
         return new Qabyhofol();
      }
   }
[/CLASS]
}