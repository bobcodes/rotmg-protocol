package wila
{
[CLASS400]   import bikyvym.Mive;
   import bikyvym.Cedymynet;
   import flash.display.DisplayObjectContainer;
   import bikyvym.Voduzak;
   import cakiqen.instanceOf;
   import flash.events.Event;
   import fomykuq.Sedubali;


   public class Wyzosi extends Object implements Mive
   {
      public function Wyzosi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const pubutahic:String = Sedubali.create(Wyzosi);

      private var nagygob:Cedymynet;

      private var qaletet:DisplayObjectContainer;

      private var vuwir:Voduzak;

      public function extend(param1:Cedymynet) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nagygob=param1;
         this.vuwir=param1.diruboli(this);
         this.nagygob.peq(instanceOf(DisplayObjectContainer),this.pizutuw);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function pizutuw(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.qaletet)
         {
            this.vuwir.zygugoqi("A contextView has already been set, ignoring {0}",[param1]);
            return;
         }
         this.qaletet=param1;
         if(this.qaletet.stage)
         {
            this.fib();
         }
         else
         {
            this.vuwir.debug("Context view is not yet on stage. Waiting...");
            this.qaletet.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qaletet.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.fib();
         return;
      }

      private function fib() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuwir.debug("Context view is now on stage. Initializing context...");
         this.nagygob.sutu.initialize();
         this.qaletet.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vuwir.debug("Context view has left the stage. Destroying context...");
         this.qaletet.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.nagygob.sutu.destroy();
         return;
      }
   }
[/CLASS]
}