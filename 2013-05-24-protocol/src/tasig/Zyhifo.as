package tasig
{
   import kogyc.Lifew;
   import aaa.rotmg.net.Server;
   import __AS3__.vec.Vector;
   import aaa.rotmg.config.UserConfig;


   public class Zyhifo extends Object implements Lifew
   {
      public function Zyhifo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.localhost=new Server().setName("localhost").setAddress("localhost").setPort(UserConfig.hyr);
         return;
      }

      private var localhost:Server;

      public function konozylo() : Vector.<Server> {
         new Vector.<Server>(1)[0]=this.localhost;
         return new Vector.<Server>(1);
      }

      public function zypyfyjo() : Server {
         return this.localhost;
      }

      public function pevanuga() : Boolean {
         return true;
      }

      public function rytory(param1:Vector.<Server>) : void {
         return;
      }
   }

}