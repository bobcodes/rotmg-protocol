package tulunyno
{


   public interface Dovihyz
   {
      function get listener() : Function;

      function set listener(param1:Function) : void;

      function get params() : Array;

      function set params(param1:Array) : void;

      function get once() : Boolean;

      function get priority() : int;

      function get enabled() : Boolean;

      function set enabled(param1:Boolean) : void;

      function execute0() : void;

      function execute1(param1:Object) : void;

      function execute(param1:Array) : void;

      function remove() : void;
   }

}