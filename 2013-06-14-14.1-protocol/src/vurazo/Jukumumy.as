package vurazo
{
   import jovurora.Divoceve;
   import jovurora.Server;
   import __AS3__.vec.Vector;
   import aaa.RotmgParameters.RotmgParameters;


   public class Jukumumy extends Object implements Divoceve
   {
      public function Jukumumy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.localhost=new Server().setName("localhost").setAddress("localhost").setPort(RotmgParameters.dale);
         return;
      }

      private var localhost:Server;

      public function cinudycu() : Vector.<Server> {
         new Vector.<Server>(1)[0]=this.localhost;
         return new Vector.<Server>(1);
      }

      public function netil() : Server {
         return this.localhost;
      }

      public function bor() : Boolean {
         return true;
      }

      public function diwa(param1:Vector.<Server>) : void {
         return;
      }
   }

}