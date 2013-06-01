package woriraho
{
   import komawowag.Kaquhen;
   import komawowag.Net;
   import flash.display.DisplayObjectContainer;
   import komawowag.Becepog;
   import kyd.instanceOf;
   import flash.events.Event;
   import jebaraqeq.Fivyjysej;


   public class Jeq extends Object implements Kaquhen
   {
      public function Jeq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Jeq);

      private var kavev:Net;

      private var susun:DisplayObjectContainer;

      private var hycekuj:Becepog;

      public function extend(param1:Net) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kavev=param1;
         this.hycekuj=param1.peroq(this);
         this.kavev.syqesoliz(instanceOf(DisplayObjectContainer),this.tybuw);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function tybuw(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.susun)
         {
            this.hycekuj.mywid("A contextView has already been set, ignoring {0}",[param1]);
            return;
         }
         this.susun=param1;
         if(this.susun.stage)
         {
            this.wucebag();
         }
         else
         {
            this.hycekuj.debug("Context view is not yet on stage. Waiting...");
            this.susun.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.susun.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.wucebag();
         return;
      }

      private function wucebag() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hycekuj.debug("Context view is now on stage. Initializing context...");
         this.kavev.fyf.initialize();
         this.susun.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hycekuj.debug("Context view has left the stage. Destroying context...");
         this.susun.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.kavev.fyf.destroy();
         return;
      }
   }

}