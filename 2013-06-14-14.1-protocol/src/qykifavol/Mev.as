package qykifavol
{
   import mukyrosu.Lafosi;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public interface Mev extends Lafosi
   {
      gabaryp function get lygadyw() : String;

      gabaryp function get eventClass() : Class;

      gabaryp function get target() : IEventDispatcher;

      gabaryp function set target(param1:IEventDispatcher) : void;

      gabaryp function dispatchEvent(param1:Event) : Boolean;
   }

}