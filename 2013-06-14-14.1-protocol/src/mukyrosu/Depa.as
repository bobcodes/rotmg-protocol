package mukyrosu
{


   public interface Depa
   {
      digicure function get listener() : Function;

      digicure function set listener(param1:Function) : void;

      digicure function get params() : Array;

      digicure function set params(param1:Array) : void;

      digicure function get once() : Boolean;

      digicure function get priority() : int;

      digicure function get enabled() : Boolean;

      digicure function set enabled(param1:Boolean) : void;

      digicure function execute0() : void;

      digicure function execute1(param1:Object) : void;

      digicure function execute(param1:Array) : void;

      digicure function remove() : void;
   }

}