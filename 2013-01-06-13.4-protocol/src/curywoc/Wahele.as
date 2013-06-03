package curywoc
{
[CLASS130]   import wyjimigo.Tykum;
   import wyjimigo.Server;
   import __AS3__.vec.Vector;
   import aaa.Parameters;


   public class Wahele extends Object implements Tykum
   {
      public function Wahele() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.localhost=new Server().setName("localhost").setPort(Parameters.hihylebov);
         return;
      }

      private var localhost:Server;

      public function setIP(param1:String) : Wahele {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.localhost.setAddress(param1);
         return this;
      }

      public function ris() : Vector.<Server> {
         new Vector.<Server>(1)[0]=this.localhost;
         return new Vector.<Server>(1);
      }

      public function dizanicac() : Server {
         return this.localhost;
      }

      public function todih() : Boolean {
         return true;
      }

      public function laqiwyze(param1:Vector.<Server>) : void {
         return;
      }
   }
[/CLASS]
}