package tapago
{
[CLASS624]   import flash.utils.Dictionary;
   import kisej.Syjyk;
   import cukopumin.Sov;


   public class Kunozip extends Object
   {
      public function Kunozip(param1:Syjyk, param2:Dictionary) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.lemesyc=param2;
         this.javo=param1;
         return;
      }

      public var lemesyc:Dictionary;

      private var javo:Syjyk;

      public function diqakycy(param1:Class) : Sov {
         return this.lemesyc[param1]=(this.lemesyc[param1])||(this.javo.dujigig(param1));
      }

      public function rijykaci(param1:Class, param2:Sov) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.lemesyc[param1]=param2;
         return;
      }
   }
[/CLASS]
}