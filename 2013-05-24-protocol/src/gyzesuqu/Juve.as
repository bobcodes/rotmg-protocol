package gyzesuqu
{
   import tulunyno.Zulejavo;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public interface Juve extends Zulejavo
   {
       function get byguzones() : String;

       function get eventClass() : Class;

       function get target() : IEventDispatcher;

       function set target(param1:IEventDispatcher) : void;

       function dispatchEvent(param1:Event) : Boolean;
   }

}