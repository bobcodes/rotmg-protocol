package nec
{
   import byzany.Nagumy;


   public class Nara extends Object implements Zirewe
   {
      public function Nara(param1:String="") {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.string=param1;
         return;
      }

      private var string:String;

      public function setString(param1:String) : Nara {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.string=param1;
         return this;
      }

      public function menyhaky(param1:Nagumy) : void {
         return;
      }

      public function getString() : String {
         return this.string;
      }
   }

}