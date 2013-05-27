package gyzesuqu
{
   import tulunyno.Zulejavo;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public interface Juve extends Zulejavo
   {
      sakeker function get byguzones() : String;

      sakeker function get eventClass() : Class;

      sakeker function get target() : IEventDispatcher;

      sakeker function set target(param1:IEventDispatcher) : void;

      sakeker function dispatchEvent(param1:Event) : Boolean;
   }

}