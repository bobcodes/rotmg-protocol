package curywoc
{
[CLASS131]   import wyjimigo.Tykum;
   import wyjimigo.Server;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Dabadaza extends Object implements Tykum
   {
      public function Dabadaza() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.localhost=new Server().setName("localhost").setAddress("localhost").setPort(Parameters.hihylebov);
         return;
      }

      private var localhost:Server;

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