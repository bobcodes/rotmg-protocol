package cehyqiwac
{
   import hunavefeg.Qoheqa;
   import hunavefeg.Hyne;
   import flash.display.DisplayObjectContainer;
   import hunavefeg.Depyrew;
   import wusepiboz.instanceOf;
   import flash.events.Event;
   import donaqyzas.Rabymuse;


   public class Vehenubu extends Object implements Qoheqa
   {
      public function Vehenubu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const mohabahi:String = Rabymuse.create(Vehenubu);

      private var qasebe:Hyne;

      private var qago:DisplayObjectContainer;

      private var nyti:Depyrew;

      public function extend(param1:Hyne) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qasebe=param1;
         this.nyti=param1.jok(this);
         this.qasebe.bowetyg(instanceOf(DisplayObjectContainer),this.vavoqize);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function vavoqize(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.qago)
         {
            this.nyti.bec("A contextView has already been set, ignoring {0}",[param1]);
            return;
         }
         this.qago=param1;
         if(this.qago.stage)
         {
            this.nyvij();
         }
         else
         {
            this.nyti.debug("Context view is not yet on stage. Waiting...");
            this.qago.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qago.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.nyvij();
         return;
      }

      private function nyvij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nyti.debug("Context view is now on stage. Initializing context...");
         this.qasebe.wumeci.initialize();
         this.qago.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nyti.debug("Context view has left the stage. Destroying context...");
         this.qago.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.qasebe.wumeci.destroy();
         return;
      }
   }

}