package vurazo
{
   import jovurora.Divoceve;
   import jovurora.Server;
   import __AS3__.vec.Vector;
   import aaa.RotmgParameters.RotmgParameters;


   public class Lerud extends Object implements Divoceve
   {
      public function Lerud() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.localhost=new Server().setName("localhost").setPort(RotmgParameters.dale);
         return;
      }

      private var localhost:Server;

      public function setIP(param1:String) : Lerud {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.localhost.setAddress(param1);
         return this;
      }

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