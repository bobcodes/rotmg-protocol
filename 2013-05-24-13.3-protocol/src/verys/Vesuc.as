package verys
{
   import komawowag.Kaquhen;
   import kyco.Nun;
   import komawowag.Becepog;
   import komawowag.Net;
   import kyd.instanceOf;
   import flash.display.DisplayObjectContainer;
   import jebaraqeq.Fivyjysej;


   public class Vesuc extends Object implements Kaquhen
   {
      public function Vesuc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Vesuc);

      private var pub:Nun;

      private var hycekuj:Becepog;

      public function extend(param1:Net) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pub=param1.cemohoqal;
         this.hycekuj=param1.peroq(this);
         param1.syqesoliz(instanceOf(DisplayObjectContainer),this.tybuw);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function tybuw(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.pub.lob(DisplayObjectContainer))
         {
            this.hycekuj.mywid("A contextView has already been mapped, ignoring {0}",[param1]);
         }
         else
         {
            this.hycekuj.debug("Mapping {0} as contextView",[param1]);
            this.pub.map(DisplayObjectContainer).cufypy(param1);
         }
         return;
      }
   }

}